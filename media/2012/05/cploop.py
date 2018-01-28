from common import *
from CpModule import *
import psycopg2
from ImageSegmentationError import *
import copy
import time

# constants related to CellProfiler
cpSep = ":" # separator between setting name and setting value in CellProfiler pipeline files
cpEnd = "\n" # rowterminator in CellProfiler pipeline files
basePipelineFilename = "base.cp"
currPipelineFilename = "curr.cp"
bestPipelineFilename = "best.cp"
cellProfilerExePath = "c:/bi/cp/CellProfiler.exe"
resultFilename = "cploop_results.txt"
resultSep = "|"
resultEnd = "\n"

# constants related to this program
maxColNameLength = 20
appendTextSettingName = "    Text to append to the image name:color_"
diameterSettingName =   "    Typical diameter of objects, in pixel units (Min,Max)"
diameterBufferFactor = 0.00 # set to a larger value such as .25 to allow some objects larger/smaller than calculated dimensions
log10OfMaxIterations = 6 # 6 means no more than 10**6 iterations will be done
grayscaleAppendText = "graytemp" # Text that will be appended to grayscale output image from CellProfiler. Specified in base.cp.
#baseAppendText = "uLUqA3UXwCpNEA==" # generated using base64.urlsafe_b64encode(os.urandom(10)) to avoid collisions with other strings in cp file
numRandomIter = 1000 # number of random iterations to try
numHoningIter = 1000
inSubDir = "in/"
outSubDir = "out/"
gtSubDir = "gt/"

# pieces of a CP pipeline
pipelineHeader=r"""CellProfiler Pipeline: http://www.cellprofiler.org
Version:1
SVNRevision:11710

"""

loadImagesBaseText=r"""LoadImages:[module_num:1|svn_version:\'11587\'|variable_revision_number:11|show_window:False|notes:\x5B\x5D]
    File type to be loaded:individual images
    File selection method:Text-Exact match
    Number of images in each group?:3
    Type the text that the excluded images have in common:Do not use
    Analyze all subfolders within the selected folder?:None
    Input image file location:Elsewhere...\x7CC\x3A\\cureffi\\is\\in
    Check image sets for missing or duplicate files?:Yes
    Group images by metadata?:No
    Exclude certain files?:No
    Specify metadata fields to group by:
    Select subfolders to analyze:
    Image count:1
    Text that these images have in common (case-sensitive):.tif
    Position of this image in each group:1
    Extract metadata from where?:None
    Regular expression that finds metadata in the file name:^(?P<Plate>.*)_(?P<Well>\x5BA-P\x5D\x5B0-9\x5D{2})_s(?P<Site>\x5B0-9\x5D)
    Type the regular expression that finds metadata in the subfolder path:.*\x5B\\\\/\x5D(?P<Date>.*)\x5B\\\\/\x5D(?P<Run>.*)$
    Channel count:1
    Group the movie frames?:No
    Grouping method:Interleaved
    Number of channels per group:3
    Load the input as images or objects?:Images
    Name this loaded image:inputimage
    Name this loaded object:Nuclei
    Retain outlines of loaded objects?:No
    Name the outline image:PrimaryOutlines
    Channel number:1
    Rescale intensities?:Yes"""

loadImagesSettings = r""

unmixColorsBaseText = r"""UnmixColors:[module_num:2|svn_version:\'10829\'|variable_revision_number:2|show_window:True|notes:\x5B\x5D]
    Stain count:2
    Color image:inputimage
    Image name:Hematoxylin
    Stain:Hematoxylin
    Red absorbance:0.5
    Green absorbance:0.5
    Blue absorbance:0.5
    Image name:Eosin
    Stain:Eosin
    Red absorbance:0.5
    Green absorbance:0.5
    Blue absorbance:0.5"""

unmixColorsSettings = r""

smooth1BaseText = r"""Smooth:[module_num:3|svn_version:\'10465\'|variable_revision_number:1|show_window:True|notes:\x5B\x5D]
    Select the input image:Hematoxylin
    Name the output image:blur1
    Select smoothing method:Gaussian Filter
    Calculate artifact diameter automatically?:No
    Typical artifact diameter, in  pixels:8
    Edge intensity difference:0.1"""

smooth1Settings = r"""    Select smoothing method:Gaussian Filter
#    Select smoothing method:Smooth Keeping Edges
    Typical artifact diameter, in  pixels:4
    Typical artifact diameter, in  pixels:6
    Typical artifact diameter, in  pixels:8
#    Typical artifact diameter, in  pixels:9
#    Typical artifact diameter, in  pixels:10
#    Typical artifact diameter, in  pixels:11
#    Typical artifact diameter, in  pixels:12
#    Typical artifact diameter, in  pixels:13
#    Typical artifact diameter, in  pixels:14
#    Typical artifact diameter, in  pixels:15
#    Typical artifact diameter, in  pixels:16
    Edge intensity difference:0.05
    Edge intensity difference:0.1
    Edge intensity difference:0.2
    Edge intensity difference:0.3
    Edge intensity difference:0.4
"""

rescaleIntensityBaseText=r"""RescaleIntensity:[module_num:4|svn_version:\'6746\'|variable_revision_number:2|show_window:True|notes:\x5B\x5D]
    Select the input image:blur1
    Name the output image:hematoxylin_rescaled
    Select rescaling method:Choose specific values to be reset to the full intensity range
    How do you want to calculate the minimum intensity?:Custom
    How do you want to calculate the maximum intensity?:Custom
    Enter the lower limit for the intensity range for the input image:0
    Enter the upper limit for the intensity range for the input image:1
    Enter the intensity range for the input image:0.34,0.48
    Enter the desired intensity range for the final, rescaled image:0.000000,1.000000
    Select method for rescaling pixels below the lower limit:Set to zero
    Enter custom value for pixels below lower limit:0
    Select method for rescaling pixels above the upper limit:Set to one
    Enter custom value for pixels below upper limit:0
    Select image to match in maximum intensity:None
    Enter the divisor:1
    Select the measurement to use as a divisor:None"""

rescaleIntensitySettings=r"""    Enter the intensity range for the input image:0.34,0.48
    Enter the intensity range for the input image:0.30,0.48
    Enter the intensity range for the input image:0.32,0.48
    Enter the intensity range for the input image:0.30,0.45
    Enter the intensity range for the input image:0.32,0.45
    Enter the intensity range for the input image:0.34,0.45
    Enter the intensity range for the input image:0.34,0.43
"""

smooth2BaseText = r"""Smooth:[module_num:3|svn_version:\'10465\'|variable_revision_number:1|show_window:True|notes:\x5B\x5D]
    Select the input image:hematoxylin_rescaled
    Name the output image:blur2
    Select smoothing method:Gaussian Filter
    Calculate artifact diameter automatically?:No
    Typical artifact diameter, in  pixels:8
    Edge intensity difference:0.1"""

smooth2Settings = r"""    Select smoothing method:Gaussian Filter
#    Select smoothing method:Smooth Keeping Edges
    Typical artifact diameter, in  pixels:4
    Typical artifact diameter, in  pixels:6
    Typical artifact diameter, in  pixels:8
#    Typical artifact diameter, in  pixels:9
#    Typical artifact diameter, in  pixels:10
#    Typical artifact diameter, in  pixels:11
#    Typical artifact diameter, in  pixels:12
#    Typical artifact diameter, in  pixels:13
#    Typical artifact diameter, in  pixels:14
#    Typical artifact diameter, in  pixels:15
#    Typical artifact diameter, in  pixels:16
    Edge intensity difference:0.05
    Edge intensity difference:0.1
    Edge intensity difference:0.2
    Edge intensity difference:0.3
    Edge intensity difference:0.4
"""

identifyPrimaryObjectsBaseText = r"""IdentifyPrimaryObjects:[module_num:6|svn_version:\'10826\'|variable_revision_number:8|show_window:True|notes:\x5B\x5D]
    Select the input image:blur2
    Name the primary objects to be identified:Nuclei
    Typical diameter of objects, in pixel units (Min,Max):15,90
    Discard objects outside the diameter range?:No
    Try to merge too small objects with nearby larger objects?:No
    Discard objects touching the border of the image?:Yes
    Select the thresholding method:RobustBackground Adaptive
    Threshold correction factor:.8
    Lower and upper bounds on threshold:0.000000,1.000000
    Approximate fraction of image covered by objects?:0.01
    Method to distinguish clumped objects:Intensity
    Method to draw dividing lines between clumped objects:Intensity
    Size of smoothing filter:10
    Suppress local maxima that are closer than this minimum allowed distance:7
    Speed up by using lower-resolution image to find local maxima?:Yes
    Name the outline image:PrimaryOutlines
    Fill holes in identified objects?:Yes
    Automatically calculate size of smoothing filter?:Yes
    Automatically calculate minimum allowed distance between local maxima?:Yes
    Manual threshold:0.0
    Select binary image:None
    Retain outlines of the identified objects?:No
    Automatically calculate the threshold using the Otsu method?:Yes
    Enter Laplacian of Gaussian threshold:0.5
    Two-class or three-class thresholding?:Two classes
    Minimize the weighted variance or the entropy?:Weighted variance
    Assign pixels in the middle intensity class to the foreground or the background?:Foreground
    Automatically calculate the size of objects for the Laplacian of Gaussian filter?:Yes
    Enter LoG filter diameter:5
    Handling of objects if excessive number of objects identified:Erase
    Maximum number of objects:200
    Select the measurement to threshold with:None"""

identifyPrimaryObjectsSettings=r"""#    Select the input image:inputimageinverted
#    Name the primary objects to be identified:Cells
#    Typical diameter of objects, in pixel units (Min,Max):10,40
#    Discard objects outside the diameter range?:Yes
#    Discard objects outside the diameter range?:No
    Try to merge too small objects with nearby larger objects?:Yes
    Try to merge too small objects with nearby larger objects?:No
    Discard objects touching the border of the image?:Yes
    Discard objects touching the border of the image?:No
    Select the thresholding method:Otsu Global
    Select the thresholding method:Otsu Adaptive
    Select the thresholding method:Otsu PerObject
    Select the thresholding method:MoG Global
    Select the thresholding method:MoG Adaptive
    Select the thresholding method:MoG PerObject
    Select the thresholding method:Background Global
    Select the thresholding method:Background Adaptive
    Select the thresholding method:Background PerObject
    Select the thresholding method:RobustBackground Global
    Select the thresholding method:RobustBackground Adaptive
    Select the thresholding method:RobustBackground PerObject
    Select the thresholding method:RidlerCalvard Global
    Select the thresholding method:RidlerCalvard Adaptive
    Select the thresholding method:RidlerCalvard PerObject
    Select the thresholding method:Kapur Global
    Select the thresholding method:Kapur Adaptive
    Select the thresholding method:Kapur PerObject
    Threshold correction factor:.1
    Threshold correction factor:.5
    Threshold correction factor:.75
    Threshold correction factor:.8
    Threshold correction factor:.85
    Threshold correction factor:.9
    Threshold correction factor:.95
    Threshold correction factor:1
    Threshold correction factor:1.05
    Threshold correction factor:1.1
    Threshold correction factor:1.15
    Threshold correction factor:1.2
    Threshold correction factor:1.25
    Threshold correction factor:1.5
    Lower and upper bounds on threshold:0.000000,1.000000
    Lower and upper bounds on threshold:0.1,1.000000
    Lower and upper bounds on threshold:0.000000,0.9
    Lower and upper bounds on threshold:0.1,0.9
    Lower and upper bounds on threshold:0.01,1.000000
    Lower and upper bounds on threshold:0.00,0.99
    Lower and upper bounds on threshold:0.01,0.99
    Approximate fraction of image covered by objects?:0.01
    Approximate fraction of image covered by objects?:0.1
    Approximate fraction of image covered by objects?:0.2
    Approximate fraction of image covered by objects?:0.3
    Approximate fraction of image covered by objects?:0.4
    Approximate fraction of image covered by objects?:0.5
    Approximate fraction of image covered by objects?:0.6
    Approximate fraction of image covered by objects?:0.7
    Approximate fraction of image covered by objects?:0.8
    Approximate fraction of image covered by objects?:0.9
    Approximate fraction of image covered by objects?:0.99
    Method to distinguish clumped objects:Intensity
    Method to distinguish clumped objects:Shape
    Method to distinguish clumped objects:Laplacian of Gaussian
    Method to distinguish clumped objects:None
    Method to draw dividing lines between clumped objects:Intensity
    Method to draw dividing lines between clumped objects:Shape
    Method to draw dividing lines between clumped objects:Propagate
    Method to draw dividing lines between clumped objects:None
    Size of smoothing filter:0
    Size of smoothing filter:5
    Size of smoothing filter:10
    Size of smoothing filter:20
    Size of smoothing filter:30
    Size of smoothing filter:50
    Size of smoothing filter:75
    Size of smoothing filter:100
    Suppress local maxima that are closer than this minimum allowed distance:0
    Suppress local maxima that are closer than this minimum allowed distance:5
    Suppress local maxima that are closer than this minimum allowed distance:10
    Suppress local maxima that are closer than this minimum allowed distance:20
    Suppress local maxima that are closer than this minimum allowed distance:30
    Suppress local maxima that are closer than this minimum allowed distance:50
    Suppress local maxima that are closer than this minimum allowed distance:75
    Suppress local maxima that are closer than this minimum allowed distance:100
    Speed up by using lower-resolution image to find local maxima?:Yes
    Speed up by using lower-resolution image to find local maxima?:No
#    Name the outline image:PrimaryOutlines
    Fill holes in identified objects?:Yes
    Fill holes in identified objects?:No
    Automatically calculate size of smoothing filter?:Yes
    Automatically calculate size of smoothing filter?:No
    Automatically calculate minimum allowed distance between local maxima?:Yes
    Automatically calculate minimum allowed distance between local maxima?:No
#    Manual threshold:0.0
#    Select binary image:None
#    Retain outlines of the identified objects?:Yes
    Automatically calculate the threshold using the Otsu method?:Yes
    Automatically calculate the threshold using the Otsu method?:No
#    Enter Laplacian of Gaussian threshold:0.5
    Two-class or three-class thresholding?:Two classes
    Two-class or three-class thresholding?:Three classes
    Minimize the weighted variance or the entropy?:Weighted variance
    Minimize the weighted variance or the entropy?:Entropy
    Assign pixels in the middle intensity class to the foreground or the background?:Foreground
    Assign pixels in the middle intensity class to the foreground or the background?:Background
    Automatically calculate the size of objects for the Laplacian of Gaussian filter?:Yes
    Automatically calculate the size of objects for the Laplacian of Gaussian filter?:No
#    Enter LoG filter diameter:5
#    Handling of objects if excessive number of objects identified:Continue
    Maximum number of objects:500
#    Select the measurement to threshold with:None
"""

saveImages1BaseText = r"""SaveImages:[module_num:7|svn_version:\'10822\'|variable_revision_number:7|show_window:True|notes:\x5B\x5D]
    Select the type of image to save:Objects
    Select the image to save:None
    Select the objects to save:Nuclei
    Select the module display window to save:None
    Select method for constructing file names:From image filename
    Select image name for file prefix:inputimage
    Enter single file name:OrigBlue
    Do you want to add a suffix to the image file name?:Yes
    Text to append to the image name:color_unique_id_here
    Select file format to use:tif
    Output file location:Elsewhere...\x7CC\x3A\\cureffi\\is\\out
    Image bit depth:8
    Overwrite existing files without warning?:Yes
    Select how often to save:Every cycle
    Rescale the images? :No
    Save as grayscale or color image?:Color
    Select colormap:Spectral
    Store file and path information to the saved image?:No
    Create subfolders in the output folder?:No"""

saveImages1Settings = r""

saveImages2BaseText = r"""SaveImages:[module_num:6|svn_version:\'10822\'|variable_revision_number:7|show_window:True|notes:\x5B\x5D]
    Select the type of image to save:Objects
    Select the image to save:None
    Select the objects to save:Nuclei
    Select the module display window to save:None
    Select method for constructing file names:From image filename
    Select image name for file prefix:inputimage
    Enter single file name:OrigBlue
    Do you want to add a suffix to the image file name?:Yes
    Text to append to the image name:graytemp
    Select file format to use:tif
    Output file location:Elsewhere...\x7CC\x3A\\cureffi\\is\\out
    Image bit depth:8
    Overwrite existing files without warning?:Yes
    Select how often to save:Every cycle
    Rescale the images? :No
    Save as grayscale or color image?:Grayscale
    Select colormap:spectral
    Store file and path information to the saved image?:No
    Create subfolders in the output folder?:No"""

saveImages2Settings = r""


def readAllText(path):
    infile = open(path,"r")
    s = infile.read() 
    infile.close()
    return s

def writeAllText(text,path):
    outfile = open(path,"w")
    outfile.write(text)
    outfile.close()

def makeColumnName(strng):
    colname = strng.lstrip().replace(" ","_") # remove initial spaces, convert other spaces to underscores
    return colname[:maxColNameLength].lower() # truncate and lowercase

def callCellProfiler(inDir,outDir,pipelinePath):
    commandlineCall = cellProfilerExePath+" -c -r -i "+inDir+" -o "+outDir+" -p "+pipelinePath
    #print commandlineCall # for use during debugging
    os.system(commandlineCall)

def cploop(workingDir,trainingImageFileName,trainingGroundTruthFileName,settingsFileName):

    trainingImagePath = workingDir + inSubDir + trainingImageFileName
    trainingGroundTruthPath = workingDir + gtSubDir + trainingGroundTruthFileName
    settingsPath = workingDir + settingsFileName
    workspaceDir = workingDir
    inDir = workingDir + inSubDir
    outDir = workingDir + outSubDir

    # open a cursor to write to database
    conn = psycopg2.connect("dbname=cureffi user=postgres password=Ibigroup12.5!")
    conn.autocommit = True
    cur = conn.cursor()
    cur.execute("insert into runs_nn (input_image_name, num_random_iter, num_honing_iter, comments) values (%s,%s,%s,%s);",
                (trainingImageFileName,numRandomIter,numHoningIter,""))
    cur.execute("select max(run_id) as current_run_id from runs_nn;") # there is probably a better way.
    runId = cur.fetchone()[0]

    # initialize list of modules for the pipeline
    pipelineModules = []
    pipelineModules.append(CpModule(1,loadImagesBaseText,loadImagesSettings))
    pipelineModules.append(CpModule(2,unmixColorsBaseText,unmixColorsSettings))
    pipelineModules.append(CpModule(3,smooth1BaseText,smooth1Settings))
    pipelineModules.append(CpModule(4,rescaleIntensityBaseText,rescaleIntensitySettings))
    pipelineModules.append(CpModule(5,smooth2BaseText,smooth2Settings))
    pipelineModules.append(CpModule(6,identifyPrimaryObjectsBaseText,identifyPrimaryObjectsSettings))
    pipelineModules.append(CpModule(7,saveImages1BaseText,saveImages1Settings))
    pipelineModules.append(CpModule(8,saveImages2BaseText,saveImages2Settings))
    
    # load ground truth image
    gtLabels = getLabelArray(trainingGroundTruthPath) # labeled ground truth image with each segment assigned a unique id. numpy.ndarray
    
    '''
    # calculate object diameters from training image and then use a range of values around these for diameter range
    minDiam,maxDiam = diam.calculateDiameterRange(gtLabels)
    settingsDict[diameterSettingName] = []
    settingsDict[diameterSettingName].append(str(int(minDiam))+","+str(int(maxDiam))) # calculated values
    for j in (0.50,0.75,1.0,1.25,1.50):
        for k in (0.50,0.75,1.0,1.25,1.50):
            settingsDict[diameterSettingName].append(str(int(j*float(minDiam)))+","+str(int(k*float(maxDiam))))
    #minDiam = int(minDiam*(1.0-diameterBufferFactor)) # allow objects smaller than calculated range
    #maxDiam = int(maxDiam*(1.0+diameterBufferFactor)) # allow objects larger than calculated range
    #currPipeline = re.sub(re.escape(diameterSettingName+cpSep)+r".*"+cpEnd,diameterSettingName+cpSep+str(minDiam)+","+str(maxDiam)+cpEnd,currPipeline)
    '''
    '''
    # prepare a file to store a db-compatible list of all the settings tried and how the results were
    # fyi: this works because order in which dictionary entries are returned is invariant as long as dictionary is not modified
    # see http://docs.python.org/library/stdtypes.html#dict.items
    resultFile = open(workspaceDir+resultFilename,"w") 
    headerRow = "id" + resultSep + "score" + resultSep # start with cols for a unique id and a score
    for settingName in settingsDict.iterkeys(): # order of cols based on settingsDict, b/c settingsDict will not be modified
        headerRow += makeColumnName(settingName)+resultSep
        #print settingName,"\t",makeColumnName(settingName)+resultSep # used during debugging
    headerRow = headerRow[:-1] + resultEnd # remove final delimiter and replace with rowterminator
    resultFile.write(headerRow)
    '''

    i = 0 # global counter for total number of trials.  
    currScore = 0.0
    bestScore = 0.0
    bestSettings = {}
    bestI = 0 # iteration number of best trial
    bestPipeline = "" # string of best pipeline
    currPipeline = "" # string of current pipeline

    # random phase - just try a large number of random setting choices
    for iter in xrange(numRandomIter):
        currPipeline = pipelineHeader # create a new pipeline
        for module in pipelineModules:
            currPipeline += module.getRandomSettings() + "\n\n" # swap in random settings

        currScore = runIteration(runId,i,cur,"r",currPipeline,workspaceDir,inDir,outDir,trainingImageFileName,trainingGroundTruthPath,pipelineModules)

        if (currScore > bestScore):
            bestScore = currScore
            bestI = i
            bestPipeline = copy.deepcopy(currPipeline)
            for module in pipelineModules:
                module.markLastAsBest()
        i += 1

    # honing phase
    honingIter = 0
    for honingModule in pipelineModules: # loop through modules letting each be the one that gets honed
        print "Now honing " + honingModule.getModuleName()
        for honeText in honingModule.getNextHoningSettings(): # get the next honing settings for the module currently being honed
            currPipeline = pipelineHeader # start a new pipeline
            for anyModule in pipelineModules: # loop through the _other_ modules to get their best-so-far text
                if anyModule <> honingModule: # skipping, of course, the one you're trying to hone.
                    currPipeline += anyModule.getBestText() + "\n\n" # get the best text for non-honing modules
                else:
                    currPipeline += honeText + "\n\n" # and the next honing text for the honing module
            # now you've got a pipeline

            # running it and recording results is almost same as for random phase-- should spin this off as its own function
            currScore = runIteration(runId,i,cur,"h",currPipeline,workspaceDir,inDir,outDir,trainingImageFileName,trainingGroundTruthPath,pipelineModules)

            if (currScore > bestScore):
                bestScore = currScore
                bestI = i
                bestPipeline = copy.deepcopy(currPipeline)
                for module in pipelineModules:
                    module.markLastAsBest()
            i += 1
            honingIter += 1

            if(honingIter == numHoningIter):
                break
        if(honingIter == numHoningIter):
            break

    # close db connection
    cur.close() #??
    conn.close()
    
    # print out best score and save best settings
    print "best score: ", bestScore, "best iteration: ", bestI
    writeAllText(bestPipeline,workspaceDir+bestPipelineFilename)


def runIteration(runId,i,cur,iterType,currPipeline,workspaceDir,inDir,outDir,trainingImageFileName,trainingGroundTruthPath,pipelineModules):
    currPipeline = re.sub(appendTextSettingName+r".*"+cpEnd,appendTextSettingName+str(i).zfill(log10OfMaxIterations)+cpEnd,currPipeline)
    # write out the pipeline
    writeAllText(currPipeline,workspaceDir+currPipelineFilename)
    # call CellProfiler to do its work on the current pipeline
    # TO DO: track how long CP takes
    # get time
    startTime = time.time()
    callCellProfiler(inDir,outDir,workspaceDir+currPipelineFilename)
    secondsElapsed = time.time() - startTime
    # calculate time since last got time
    # create the path for the grayscale output image created by CellProfiler
    outputImagePath = outDir + trainingImageFileName[:trainingImageFileName.rfind(".")] + grayscaleAppendText + trainingImageFileName[trainingImageFileName.rfind("."):] + "f" # it stores as tiff, I have tif
    # calculate the score for this trial
    # note use of getImageAs32Array. for large images, CellProfiler will produce 32-bit grayscale TIFFs which causes an exception. see common.py.
    currError = ImageSegmentationError(getLabelArray(trainingGroundTruthPath),getImageAs32Array(outputImagePath)) # the output image is already a label array.
    print currError.combinedScore
    
    # write iteration settings and results to db
    cur.execute("insert into iter_results_nn (run_id,iter_no,iter_type,rand_index,object_count_ratio,combined_score,seconds_elapsed) values (%s,%s,%s,%s,%s,%s,%s);",
                (runId,i,iterType,currError.randIndex,currError.objectCountRatio,currError.combinedScore,secondsElapsed))
    for module in pipelineModules:
        for setting in module.getSettingTuples(): # may be a way to do with name-value pairs native in python
            cur.execute("insert into iter_setting_values_nn (run_id,iter_id,module_no,module_name,setting_name,setting_value) values (%s,%s,%s,%s,%s,%s);",
                        (runId,i,module.getModuleNo(),module.getModuleName(),setting[0],setting[1]))

    return currError.combinedScore


if __name__ == "__main__":
    #print diam.calculateDiameterRange(getLabelArray("c:/bi/p/code/inpex-do.tif"))
    cploop("c:/cureffi/is/","left.tif","40x-1-5369-left-gt-allnuclei.tif","settings.txt")

