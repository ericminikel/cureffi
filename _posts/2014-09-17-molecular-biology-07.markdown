---
layout: post
title:  "Molecular Biology 07: 'Research seminar - single molecule approaches'"
date:   2014-09-17 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 07 in Harvard's BCMP 200: Molecular Biology course, delivered by Joe Loparo on September 17, 2014.*

### Why study single molecules?

Dr. Loparo studies single molecules for two reasons:

1. You can observe the distribution of kinetics and not just the mean
2. You can observe rare intermediates that are lost in the bulk measurement

For example, one use is to study the replication of a circular DNA plasmid, where the leading strand will stay circular but the lagging strand will be linear, which changes electrophoretic mobility. You can use single-molecule approaches to see the distribution of how replication complexes move on a gel. Replication has important intermediates - for example, say you want to know what triggers the ligation of Okazaki fragments - that cannot be seen in the aggregate, and so you want to get as close as possible to taking a movie of one copy of the replication machinery doing its job - like this movie, except not a cartoon:

<iframe width="560" height="315" src="//www.youtube.com/embed/bee6PWUgPo8" frameborder="0" allowfullscreen></iframe>

### Methods

Methods for single molecule stuff can be divided into fluorescence-based technqiues (FRET, particle tracking) and mechanical/nanomanipulation techniques (optical and magnetic tweezers and flow stretching).

#### Fluorescence

To be able to image single molecules, you must meet a few conditions:

1. Sufficient signal-to-noise. You rely on the Stokes shift so that the emitted wavelength is different than the excitation wavelength, and you need modern filters that can filter out the excitation wavelength by a factor of 10<sup>7</sup> or 10<sup>8</sup>, and sensitive CCDs that can detect exactly one photon.
2. Sufficiently narrow field. You need confocal lasers with such a small excitation volume that only one molecule will be excited. Or, thinking in reverse, you can excite a large field but then only detect emitted light in a narrow field. Excited molecules will emit 360&deg; in 3 dimensions but you only detect photons coming in a very narrow column above the molecule.
3. Ability to fluroescently label the molecule of interest without disturbing its native function.

The limits of the technique are largely related to #2. You can do this using [total internal reflection fluorescence (TIRF)](http://en.wikipedia.org/wiki/Total_internal_reflection_fluorescence_microscope). You still get some spread in the x-y coordinates of photons collected from a single molecule, but the more photons you collect, the more precisely you can pinpoint that molecule's location. Additionally the number of photons can tell you if there are more than one molecule colocalized in one spot. The diffraction limit however means that a 10nm protein will appear as a 100nm distribution, so it is hard to tell 1 molecule from 2 closely colocated molecules.

#### Nanomanipulation

You might use nanomanipulation because force is part of the biological role of the protein of interest (e.g. to study what motor proteins are doing, or the conformation of nucleic acids or proteins), or because it is a tool to study enzyme activities. One example is looking at whether it is easier for metalloproteases to cleave Notch when you have applied force to Notch.

