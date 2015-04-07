link=location.href.split("?")[0];
full=document.documentElement.outerText.replace(/\n/g,' ').substring(3).trim();
firstauth=full.split(",")[0].split(" ").slice(0,-1);
year=full.split(".")[3].trim().split(" ")[0];
shortname=firstauth+" "+year;
fullcitation="["+shortname+"]: "+link+' \"'+full+'\"';
alert(fullcitation)