DSCH 2.7c
VERSION 10/17/2003 7:16:34 PM
BB(-45,-1,195,83)
SYM  #vss
BB(-5,62,5,70)
TITLE -1 67  #vss
MODEL 0
PROP                                                                                                                                    
REC(-5,60,0,0,b)
VIS 0
PIN(0,60,0.000,0.000)vss
LIG(0,60,0,65)
LIG(-5,65,5,65)
LIG(-5,68,-3,65)
LIG(-3,68,-1,65)
LIG(-1,68,1,65)
LIG(1,68,3,65)
FSYM
SYM  #vdd
BB(-5,10,5,20)
TITLE -2 16  #vdd
MODEL 1
PROP                                                                                                                                    
REC(-30,0,0,0,)
VIS 0
PIN(0,20,0.000,0.000)vdd
LIG(0,20,0,15)
LIG(0,15,-5,15)
LIG(-5,15,0,10)
LIG(0,10,5,15)
LIG(5,15,0,15)
FSYM
SYM  #nmos
BB(-20,40,0,60)
TITLE -5 55  #nmos
MODEL 901
PROP   3u 0.12u                                                                                                                                
REC(-19,45,19,15,r)
VIS 2
PIN(0,60,0.000,0.000)s
PIN(-20,50,0.000,0.000)g
PIN(0,40,0.030,0.210)d
LIG(-10,50,-20,50)
LIG(-10,56,-10,44)
LIG(-8,56,-8,44)
LIG(0,44,-8,44)
LIG(0,40,0,44)
LIG(0,56,-8,56)
LIG(0,60,0,56)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-20,20,0,40)
TITLE 0 32  #load
MODEL 902
PROP   0.66u 0.12u                                                                                                                                
REC(-19,25,19,15,r)
VIS 2
PIN(0,20,0.000,0.000)s
PIN(-20,30,0.000,0.000)g
PIN(0,40,0.030,0.210)d
LIG(-20,30,-14,30)
LIG(-12,30,-12,30)
LIG(-10,36,-10,24)
LIG(-8,36,-8,24)
LIG(0,24,-8,24)
LIG(0,20,0,24)
LIG(0,36,-8,36)
LIG(0,40,0,36)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #Res
BB(155,20,165,40)
TITLE 164 20  #Rload
MODEL 920
PROP   20K                                                                                                                                 
REC(125,85,0,0,)
VIS 2
PIN(160,40,0.000,0.000)r1
PIN(160,20,0.000,0.000)r2
LIG(160,40,160,36)
LIG(158,34,160,36)
LIG(162,32,158,34)
LIG(158,29,162,32)
LIG(162,27,158,29)
LIG(158,24,162,27)
LIG(160,23,158,24)
LIG(160,20,160,23)
FSYM
SYM  #vdd
BB(155,10,165,20)
TITLE 158 16  #vdd
MODEL 1
PROP                                                                                                                                    
REC(130,0,0,0,)
VIS 0
PIN(160,20,0.000,0.000)vdd
LIG(160,20,160,15)
LIG(160,15,155,15)
LIG(155,15,160,10)
LIG(160,10,165,15)
LIG(165,15,160,15)
FSYM
SYM  #vss
BB(75,62,85,70)
TITLE 79 67  #vss
MODEL 0
PROP                                                                                                                                    
REC(75,60,0,0,b)
VIS 0
PIN(80,60,0.000,0.000)vss
LIG(80,60,80,65)
LIG(75,65,85,65)
LIG(75,68,77,65)
LIG(77,68,79,65)
LIG(79,68,81,65)
LIG(81,68,83,65)
FSYM
SYM  #Arrow
BB(-45,77,-35,83)
TITLE -42 85  #sinus_in
MODEL 935
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 4
PIN(-45,80,0.000,0.000)in
LIG(-45,80,-35,80)
LIG(-37,78,-35,80)
LIG(-37,82,-35,80)
FSYM
SYM  #pmos
BB(60,20,80,40)
TITLE 80 32  #load
MODEL 902
PROP   0.24u 0.66u MN012                                                                                                                              
REC(61,25,19,15,r)
VIS 2
PIN(80,20,0.000,0.000)s
PIN(60,30,0.000,0.000)g
PIN(80,40,0.030,0.210)d
LIG(60,30,66,30)
LIG(68,30,68,30)
LIG(70,36,70,24)
LIG(72,36,72,24)
LIG(80,24,72,24)
LIG(80,20,80,24)
LIG(80,36,72,36)
LIG(80,40,80,36)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(140,40,160,60)
TITLE 155 55  #nmos
MODEL 901
PROP   4u 0.12u                                                                                                                                
REC(141,45,19,15,r)
VIS 2
PIN(160,60,0.000,0.000)s
PIN(140,50,0.000,0.000)g
PIN(160,40,0.030,0.140)d
LIG(150,50,140,50)
LIG(150,56,150,44)
LIG(152,56,152,44)
LIG(160,44,152,44)
LIG(160,40,160,44)
LIG(160,56,152,56)
LIG(160,60,160,56)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(75,10,85,20)
TITLE 78 16  #vdd
MODEL 1
PROP                                                                                                                                    
REC(50,0,0,0,)
VIS 0
PIN(80,20,0.000,0.000)vdd
LIG(80,20,80,15)
LIG(80,15,75,15)
LIG(75,15,80,10)
LIG(80,10,85,15)
LIG(85,15,80,15)
FSYM
SYM  #vss
BB(155,62,165,70)
TITLE 159 67  #vss
MODEL 0
PROP                                                                                                                                    
REC(155,60,0,0,b)
VIS 0
PIN(160,60,0.000,0.000)vss
LIG(160,60,160,65)
LIG(155,65,165,65)
LIG(155,68,157,65)
LIG(157,68,159,65)
LIG(159,68,161,65)
LIG(161,68,163,65)
FSYM
SYM  #Arrow
BB(185,37,195,43)
TITLE 188 42  #sinus3
MODEL 935
PROP                                                                                                                                   
REC(170,0,0,0, )
VIS 4
PIN(185,40,0.000,0.000)in
LIG(185,40,195,40)
LIG(193,38,195,40)
LIG(193,42,195,40)
FSYM
SYM  #Arrow
BB(25,37,35,43)
TITLE 28 42  #sinus1
MODEL 935
PROP                                                                                                                                   
REC(10,0,0,0, )
VIS 4
PIN(25,40,0.000,0.000)in
LIG(25,40,35,40)
LIG(33,38,35,40)
LIG(33,42,35,40)
FSYM
SYM  #Arrow
BB(105,37,115,43)
TITLE 108 42  #sinus2
MODEL 935
PROP                                                                                                                                   
REC(90,0,0,0, )
VIS 4
PIN(105,40,0.000,0.000)in
LIG(105,40,115,40)
LIG(113,38,115,40)
LIG(113,42,115,40)
FSYM
SYM  #nmos
BB(60,40,80,60)
TITLE 75 55  #nmos
MODEL 901
PROP   4u 0.12u                                                                                                                                
REC(61,45,19,15,r)
VIS 2
PIN(80,60,0.000,0.000)s
PIN(60,50,0.000,0.000)g
PIN(80,40,0.030,0.210)d
LIG(70,50,60,50)
LIG(70,56,70,44)
LIG(72,56,72,44)
LIG(80,44,72,44)
LIG(80,40,80,44)
LIG(80,56,72,56)
LIG(80,60,80,56)
VLG   nmos nmos(drain,source,gate);
FSYM
CNC(45 80)
CNC(-25 80)
LIG(-20,40,25,40)
LIG(160,40,185,40)
LIG(-20,30,-20,40)
LIG(60,30,60,40)
LIG(60,40,105,40)
LIG(-20,50,-25,50)
LIG(45,50,60,50)
LIG(45,50,45,80)
LIG(140,50,140,80)
LIG(140,80,45,80)
LIG(45,80,-25,80)
LIG(-25,50,-25,80)
LIG(-45,80,-25,80)
TEXT 148 -1  #Amplifier with 20K resistor load
TEXT 65 0  #Amplifier with high res pMOS load
TEXT -17 -1  #Amplifier with pMOS load
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\AmpliSingle2.sch
