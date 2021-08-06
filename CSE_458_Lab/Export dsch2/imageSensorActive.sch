DSCH 2.6j
VERSION 6/20/2003 10:23:28 AM
BB(-25,-52,125,58)
SYM  #nmos
BB(55,-35,75,-15)
TITLE 65 -15  #N3
MODEL 901
PROP   1.0u 0.12u                                                                                                                                                                                                        
REC(55,-34,15,19,r)
VIS 4
PIN(55,-15,0.000,0.000)s
PIN(65,-35,0.000,0.000)g
PIN(75,-15,0.030,0.070)d
LIG(65,-25,65,-35)
LIG(59,-25,71,-25)
LIG(59,-23,71,-23)
LIG(71,-15,71,-23)
LIG(75,-15,71,-15)
LIG(59,-15,59,-23)
LIG(55,-15,59,-15)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(15,47,25,55)
TITLE 19 52  #vss
MODEL 0
PROP                                                                                                                                                                                                            
REC(15,45,0,0,b)
VIS 0
PIN(20,45,0.000,0.000)vss
LIG(20,45,20,50)
LIG(15,50,25,50)
LIG(15,53,17,50)
LIG(17,53,19,50)
LIG(19,53,21,50)
LIG(21,53,23,50)
FSYM
SYM  #Diode
BB(15,20,25,40)
TITLE 20 34  #Diode
MODEL 904
PROP                                                                                                                                                                                                            
REC(15,20,10,20,P)
VIS 1
PIN(20,40,0.000,0.000)Pwell
PIN(20,20,0.030,0.140)Ndiff
LIG(20,40,20,35)
LIG(25,35,15,35)
LIG(15,35,20,25)
LIG(25,35,20,25)
LIG(20,25,20,20)
LIG(25,25,15,25)
FSYM
SYM  #nmos
BB(0,-10,20,10)
TITLE 15 -5  #N1
MODEL 901
PROP   1.0u 0.12u                                                                                                                                                                                                        
REC(1,-5,19,15,r)
VIS 4
PIN(20,10,0.000,0.000)s
PIN(0,0,0.000,0.000)g
PIN(20,-10,0.030,0.140)d
LIG(10,0,0,0)
LIG(10,6,10,-6)
LIG(12,6,12,-6)
LIG(20,-6,12,-6)
LIG(20,-10,20,-6)
LIG(20,6,12,6)
LIG(20,10,20,6)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #Arrow
BB(-25,-43,-15,-37)
TITLE -22 -38  #Sel
MODEL 935
PROP                                                                                                                                                                                                           
REC(-10,0,0,0,)
VIS 4
PIN(-25,-40,0.000,0.000)in
LIG(-25,-40,-15,-40)
LIG(-17,-42,-15,-40)
LIG(-17,-38,-15,-40)
FSYM
SYM  #vdd
BB(15,-25,25,-15)
TITLE 18 -19  #vdd
MODEL 1
PROP                                                                                                                                                                                                            
REC(0,5,0,0,)
VIS 0
PIN(20,-15,0.000,0.000)vdd
LIG(20,-15,20,-20)
LIG(20,-20,15,-20)
LIG(15,-20,20,-25)
LIG(20,-25,25,-20)
LIG(25,-20,20,-20)
FSYM
SYM  #nmos
BB(30,-15,50,5)
TITLE 35 -15  #N2
MODEL 901
PROP   1.0u 0.12u                                                                                                                                                                                                        
REC(35,-15,15,19,r)
VIS 4
PIN(50,-15,0.000,0.000)s
PIN(40,5,0.000,0.000)g
PIN(30,-15,0.030,0.140)d
LIG(40,-5,40,5)
LIG(46,-5,34,-5)
LIG(46,-7,34,-7)
LIG(34,-15,34,-7)
LIG(30,-15,34,-15)
LIG(46,-15,46,-7)
LIG(50,-15,46,-15)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #Arrow
BB(30,12,40,18)
TITLE 33 20  #Vdiode
MODEL 935
PROP                                                                                                                                                                                                           
REC(-10,5,0,0,)
VIS 4
PIN(30,15,0.000,0.000)in
LIG(30,15,40,15)
LIG(38,13,40,15)
LIG(38,17,40,15)
FSYM
SYM  #Arrow
BB(-25,-33,-15,-27)
TITLE -22 -28  #Set
MODEL 935
PROP                                                                                                                                                                                                           
REC(-10,0,0,0,)
VIS 4
PIN(-25,-30,0.000,0.000)in
LIG(-25,-30,-15,-30)
LIG(-17,-32,-15,-30)
LIG(-17,-28,-15,-30)
FSYM
SYM  #Arrow
BB(77,45,83,55)
TITLE 75 48  #Out
MODEL 935
PROP                                                                                                                                                                                                           
REC(135,-35,0,0,)
VIS 0
PIN(80,45,0.000,0.000)in
LIG(80,45,80,55)
LIG(82,53,80,55)
LIG(78,53,80,55)
FSYM
CNC(-10 -30)
CNC(65 -40)
CNC(80 -15)
CNC(20 15)
LIG(20,-15,20,-10)
LIG(20,-15,30,-15)
LIG(50,-15,55,-15)
LIG(40,5,40,15)
LIG(80,-45,80,-15)
LIG(-25,-40,65,-40)
LIG(20,45,20,40)
LIG(20,15,30,15)
LIG(20,10,20,15)
LIG(-10,0,-10,-30)
LIG(-25,-30,-10,-30)
LIG(-10,-30,95,-30)
LIG(65,-35,65,-40)
LIG(65,-40,95,-40)
LIG(-10,0,0,0)
LIG(75,-15,80,-15)
LIG(80,-15,80,45)
LIG(20,15,20,20)
TEXT 2 -52  #Active pixel sensor
TEXT 85 48  #Vout
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\imageSensorActive.sch
