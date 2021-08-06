DSCH 2.7b
VERSION 10/14/2003 12:07:49 AM
BB(15,-25,257,60)
SYM  #vss
BB(205,47,215,55)
TITLE 209 52  #vss
MODEL 0
PROP                                                                                                                                    
REC(205,45,0,0,b)
VIS 0
PIN(210,45,0.000,0.000)vss
LIG(210,45,210,50)
LIG(205,50,215,50)
LIG(205,53,207,50)
LIG(207,53,209,50)
LIG(209,53,211,50)
LIG(211,53,213,50)
FSYM
SYM  #Capa
BB(205,25,215,45)
TITLE 215 30  #C1
MODEL 900
PROP   1pF                                                                                                                                 
REC(135,20,0,0,)
VIS 0
PIN(210,25,0.000,0.000)c1
PIN(210,45,0.000,0.000)c2
LIG(210,34,210,25)
LIG(205,34,215,34)
LIG(205,36,215,36)
LIG(210,45,210,36)
FSYM
SYM  #Arrow
BB(175,32,185,38)
TITLE 182 30  #Out
MODEL 935
PROP                                                                                                                                    
REC(250,55,0,0,)
VIS 0
PIN(185,35,0.000,0.000)in
LIG(185,35,175,35)
LIG(177,37,175,35)
LIG(177,33,175,35)
FSYM
SYM  #Arrow
BB(217,35,223,45)
TITLE 215 38  #Out
MODEL 935
PROP                                                                                                                                    
REC(220,-30,0,0,)
VIS 0
PIN(220,35,0.000,0.000)in
LIG(220,35,220,45)
LIG(222,43,220,45)
LIG(218,43,220,45)
FSYM
SYM  #Capa
BB(85,5,95,25)
TITLE 95 10  #C1
MODEL 900
PROP   1pF                                                                                                                                 
REC(15,0,0,0,)
VIS 0
PIN(90,5,0.000,0.000)c1
PIN(90,25,0.000,0.000)c2
LIG(90,14,90,5)
LIG(85,14,95,14)
LIG(85,16,95,16)
LIG(90,25,90,16)
FSYM
SYM  #Arrow
BB(57,15,63,25)
TITLE 55 18  #Out
MODEL 935
PROP                                                                                                                                    
REC(80,-50,0,0,)
VIS 0
PIN(60,15,0.000,0.000)in
LIG(60,15,60,25)
LIG(62,23,60,25)
LIG(58,23,60,25)
FSYM
SYM  #nmos
BB(170,5,190,25)
TITLE 185 20  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(170,6,15,19,r)
VIS 0
PIN(170,25,0.000,0.000)s
PIN(180,5,0.000,0.000)g
PIN(190,25,0.030,0.140)d
LIG(180,15,180,5)
LIG(174,15,186,15)
LIG(174,17,186,17)
LIG(186,25,186,17)
LIG(190,25,186,25)
LIG(174,25,174,17)
LIG(170,25,174,25)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(85,27,95,35)
TITLE 89 32  #vss
MODEL 0
PROP                                                                                                                                    
REC(85,25,0,0,b)
VIS 0
PIN(90,25,0.000,0.000)vss
LIG(90,25,90,30)
LIG(85,30,95,30)
LIG(85,33,87,30)
LIG(87,33,89,30)
LIG(89,33,91,30)
LIG(91,33,93,30)
FSYM
SYM  #pmos
BB(30,-15,50,5)
TITLE 45 -10  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(31,-10,19,15,r)
VIS 0
PIN(50,-15,0.000,0.000)s
PIN(30,-5,0.000,0.000)g
PIN(50,5,0.030,0.140)d
LIG(30,-5,36,-5)
LIG(38,-5,38,-5)
LIG(40,1,40,-11)
LIG(42,1,42,-11)
LIG(50,-11,42,-11)
LIG(50,-15,50,-11)
LIG(50,1,42,1)
LIG(50,5,50,1)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(30,5,50,25)
TITLE 45 10  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(31,10,19,15,r)
VIS 0
PIN(50,25,0.000,0.000)s
PIN(30,15,0.000,0.000)g
PIN(50,5,0.030,0.140)d
LIG(40,15,30,15)
LIG(40,21,40,9)
LIG(42,21,42,9)
LIG(50,9,42,9)
LIG(50,5,50,9)
LIG(50,21,42,21)
LIG(50,25,50,21)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(45,27,55,35)
TITLE 49 32  #vss
MODEL 0
PROP                                                                                                                                    
REC(45,25,0,0,b)
VIS 0
PIN(50,25,0.000,0.000)vss
LIG(50,25,50,30)
LIG(45,30,55,30)
LIG(45,33,47,30)
LIG(47,33,49,30)
LIG(49,33,51,30)
LIG(51,33,53,30)
FSYM
SYM  #vdd
BB(45,-25,55,-15)
TITLE 48 -19  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0,)
VIS 0
PIN(50,-15,0.000,0.000)vdd
LIG(50,-15,50,-20)
LIG(50,-20,45,-20)
LIG(45,-20,50,-25)
LIG(50,-25,55,-20)
LIG(55,-20,50,-20)
FSYM
SYM  #Arrow
BB(65,-3,75,3)
TITLE 68 5  #Out
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0,)
VIS 0
PIN(65,0,0.000,0.000)in
LIG(65,0,75,0)
LIG(73,-2,75,0)
LIG(73,2,75,0)
FSYM
CNC(30 5)
LIG(55,0,65,0)
LIG(170,-15,170,55)
LIG(150,5,225,5)
LIG(190,25,210,25)
LIG(55,-10,55,0)
LIG(50,5,95,5)
LIG(30,-5,30,5)
LIG(15,5,30,5)
LIG(30,5,30,15)
TEXT 160 50  #BL
TEXT 147 -6  #WL
TEXT 184 35  #ioff
TEXT 217 25  #Idiode
TEXT 64 -6  #Ion
TEXT 64 20  #ioff
TEXT 17 -6  #0
TEXT 85 -5  #1
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\stanbyCurrent.sch
