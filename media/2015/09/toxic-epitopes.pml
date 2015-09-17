fetch 1ag2 ;# start with Riek & Wuthrich's original NMR structure of truncated MoPrP
bg_color white
hide everything
show cartoon
color 0x888888 ;# default is gray, unknown
color 0x000000, resi 138-147 or resi 204+208+212 ;# POM1 - toxic
color 0x000000, resi 121-134 or resi 218-221 ;# POM4, POM10, and POM19 - toxic
color 0x00C957, resi 168-174 ;# POM5 - non-toxic
color 0x888888, resi 140+145+158+177 ;# shared between POM6 and POM8 (non-toxic) and POM8 and POM9 (toxic) so unclear
color 0x00C957, resi 170+174 ;# parts of POM6, POM7 that are not also in POM8 and POM9 - non-toxic
hide cartoon
show surface