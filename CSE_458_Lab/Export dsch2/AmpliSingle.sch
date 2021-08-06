DSCH 2.7c
VERSION 10/17/2003 7:03:20 PM
BB(-14,-60,266,89)
SYM  #buf1
BB(120,-60,155,-40)
TITLE 135 -50  #x10
MODEL 111
PROP                                                                                                                                    
REC(95,-75,0,0,)
VIS 4
PIN(120,-50,0.000,0.000)Vin
PIN(155,-50,0.030,0.000)Vout
LIG(120,-50,130,-50)
LIG(130,-60,130,-40)
LIG(130,-60,145,-50)
LIG(130,-40,145,-50)
LIG(145,-50,155,-50)
VLG   buf buf1(Vout,Vin);
FSYM
SYM  #nmos
BB(115,40,135,60)
TITLE 130 55  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                
REC(116,45,19,15,r)
VIS 0
PIN(135,60,0.000,0.000)s
PIN(115,50,0.000,0.000)g
PIN(135,40,0.030,0.070)d
LIG(125,50,115,50)
LIG(125,56,125,44)
LIG(127,56,127,44)
LIG(135,44,127,44)
LIG(135,40,135,44)
LIG(135,56,127,56)
LIG(135,60,135,56)
VLG    nmos nmos(drain,source,gate);
FSYM
SYM  #Self
BB(129,20,141,40)
TITLE 137 30  #Load
MODEL 930
PROP   1nH                                                                                                                                 
REC(140,150,0,0,)
VIS 4
PIN(135,40,0.000,0.000)l1
PIN(135,20,0.030,0.490)l2
LIG(135,38,135,40)
LIG(132,24,135,23)
LIG(131,25,132,24)
LIG(131,26,131,25)
LIG(132,27,131,26)
LIG(135,28,132,27)
LIG(132,29,135,28)
LIG(131,30,132,29)
LIG(131,31,131,30)
LIG(132,32,131,31)
LIG(135,33,132,32)
LIG(132,34,135,33)
LIG(131,35,132,34)
LIG(131,36,131,35)
LIG(132,37,131,36)
LIG(135,38,132,37)
LIG(135,23,135,20)
FSYM
SYM  #vdd
BB(130,10,140,20)
TITLE 133 16  #vdd
MODEL 1
PROP                                                                                                                                    
REC(105,0,0,0,)
VIS 0
PIN(135,20,0.000,0.000)vdd
LIG(135,20,135,15)
LIG(135,15,130,15)
LIG(130,15,135,10)
LIG(135,10,140,15)
LIG(140,15,135,15)
FSYM
SYM  #vss
BB(130,62,140,70)
TITLE 134 67  #vss
MODEL 0
PROP                                                                                                                                    
REC(130,60,0,0,b)
VIS 0
PIN(135,60,0.000,0.000)vss
LIG(135,60,135,65)
LIG(130,65,140,65)
LIG(130,68,132,65)
LIG(132,68,134,65)
LIG(134,68,136,65)
LIG(136,68,138,65)
FSYM
SYM  #nmos
BB(190,45,210,65)
TITLE 205 60  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                
REC(191,50,19,15,r)
VIS 1
PIN(210,65,0.000,0.000)s
PIN(190,55,0.000,0.000)g
PIN(210,45,0.030,0.140)d
LIG(200,55,190,55)
LIG(200,61,200,49)
LIG(202,61,202,49)
LIG(210,49,202,49)
LIG(210,45,210,49)
LIG(210,61,202,61)
LIG(210,65,210,61)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #Arrow
BB(217,55,223,65)
TITLE 215 58  #ids
MODEL 935
PROP                                                                                                                                   
REC(280,-170,0,0, )
VIS 4
PIN(220,55,0.000,0.000)in
LIG(220,55,220,65)
LIG(222,63,220,65)
LIG(218,63,220,65)
FSYM
SYM  #vdd
BB(205,15,215,25)
TITLE 208 21  #vdd
MODEL 1
PROP                                                                                                                                    
REC(180,5,0,0,)
VIS 0
PIN(210,25,0.000,0.000)vdd
LIG(210,25,210,20)
LIG(210,20,205,20)
LIG(205,20,210,15)
LIG(210,15,215,20)
LIG(215,20,210,20)
FSYM
SYM  #vss
BB(205,67,215,75)
TITLE 209 72  #vss
MODEL 0
PROP                                                                                                                                    
REC(205,65,0,0,b)
VIS 0
PIN(210,65,0.000,0.000)vss
LIG(210,65,210,70)
LIG(205,70,215,70)
LIG(205,73,207,70)
LIG(207,73,209,70)
LIG(209,73,211,70)
LIG(211,73,213,70)
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
SYM  #pmos
BB(190,25,210,45)
TITLE 210 37  #load
MODEL 902
PROP   2.0u 0.12u                                                                                                                                
REC(191,30,19,15,r)
VIS 1
PIN(210,25,0.000,0.000)s
PIN(190,35,0.000,0.000)g
PIN(210,45,0.030,0.140)d
LIG(190,35,196,35)
LIG(198,35,198,35)
LIG(200,41,200,29)
LIG(202,41,202,29)
LIG(210,29,202,29)
LIG(210,25,210,29)
LIG(210,41,202,41)
LIG(210,45,210,41)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(60,40,80,60)
TITLE 75 55  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                
REC(61,45,19,15,r)
VIS 0
PIN(80,60,0.000,0.000)s
PIN(60,50,0.000,0.000)g
PIN(80,40,0.030,0.140)d
LIG(70,50,60,50)
LIG(70,56,70,44)
LIG(72,56,72,44)
LIG(80,44,72,44)
LIG(80,40,80,44)
LIG(80,56,72,56)
LIG(80,60,80,56)
VLG    nmos nmos(drain,source,gate);
FSYM
SYM  #buf1
BB(55,-20,90,0)
TITLE 70 -10  #Gain
MODEL 111
PROP                                                                                                                                    
REC(30,-35,0,0,)
VIS 5
PIN(55,-10,0.000,0.000)Vin
PIN(90,-10,0.030,0.000)Vout
LIG(55,-10,65,-10)
LIG(65,-20,65,0)
LIG(65,-20,80,-10)
LIG(65,0,80,-10)
LIG(80,-10,90,-10)
VLG    buf buf1(Vout,Vin);
FSYM
SYM  #buf1
BB(15,-60,50,-40)
TITLE 30 -50  #x100
MODEL 111
PROP                                                                                                                                    
REC(-10,-75,0,0,)
VIS 4
PIN(15,-50,0.000,0.000)Vin
PIN(50,-50,0.030,0.000)Vout
LIG(15,-50,25,-50)
LIG(25,-60,25,-40)
LIG(25,-60,40,-50)
LIG(25,-40,40,-50)
LIG(40,-50,50,-50)
VLG   buf buf1(Vout,Vin);
FSYM
SYM  #buf1
BB(85,-60,120,-40)
TITLE 100 -50  #x10
MODEL 111
PROP                                                                                                                                    
REC(60,-75,0,0,)
VIS 4
PIN(85,-50,0.000,0.000)Vin
PIN(120,-50,0.030,0.070)Vout
LIG(85,-50,95,-50)
LIG(95,-60,95,-40)
LIG(95,-60,110,-50)
LIG(95,-40,110,-50)
LIG(110,-50,120,-50)
VLG   buf buf1(Vout,Vin);
FSYM
SYM  #vss
BB(10,62,20,70)
TITLE 14 67  #vss
MODEL 0
PROP                                                                                                                                    
REC(10,60,0,0,b)
VIS 0
PIN(15,60,0.000,0.000)vss
LIG(15,60,15,65)
LIG(10,65,20,65)
LIG(10,68,12,65)
LIG(12,68,14,65)
LIG(14,68,16,65)
LIG(16,68,18,65)
FSYM
SYM  #vdd
BB(10,10,20,20)
TITLE 13 16  #vdd
MODEL 1
PROP                                                                                                                                    
REC(-15,0,0,0,)
VIS 0
PIN(15,20,0.000,0.000)vdd
LIG(15,20,15,15)
LIG(15,15,10,15)
LIG(10,15,15,10)
LIG(15,10,20,15)
LIG(20,15,15,15)
FSYM
SYM  #Res
BB(10,20,20,40)
TITLE 19 30  #Load
MODEL 920
PROP   50                                                                                                                                 
REC(-20,85,0,0,)
VIS 4
PIN(15,40,0.000,0.000)r1
PIN(15,20,0.000,0.000)r2
LIG(15,40,15,36)
LIG(13,34,15,36)
LIG(17,32,13,34)
LIG(13,29,17,32)
LIG(17,27,13,29)
LIG(13,24,17,27)
LIG(15,23,13,24)
LIG(15,20,15,23)
FSYM
SYM  #nmos
BB(-5,40,15,60)
TITLE 10 55  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                
REC(-4,45,19,15,r)
VIS 0
PIN(15,60,0.000,0.000)s
PIN(-5,50,0.000,0.000)g
PIN(15,40,0.030,0.070)d
LIG(5,50,-5,50)
LIG(5,56,5,44)
LIG(7,56,7,44)
LIG(15,44,7,44)
LIG(15,40,15,44)
LIG(15,56,7,56)
LIG(15,60,15,56)
VLG    nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(60,20,80,40)
TITLE 80 32  #load
MODEL 902
PROP   2.0u 0.12u                                                                                                                                
REC(61,25,19,15,r)
VIS 4
PIN(80,20,0.000,0.000)s
PIN(60,30,0.000,0.000)g
PIN(80,40,0.030,0.140)d
LIG(60,30,66,30)
LIG(68,30,68,30)
LIG(70,36,70,24)
LIG(72,36,72,24)
LIG(80,24,72,24)
LIG(80,20,80,24)
LIG(80,36,72,36)
LIG(80,40,80,36)
VLG    pmos pmos(drain,source,gate);
FSYM
LIG(190,35,190,45)
LIG(190,45,225,45)
LIG(60,40,95,40)
LIG(135,40,150,40)
LIG(15,40,30,40)
LIG(180,55,190,55)
LIG(60,30,60,40)
TEXT 113 79  #Amplifier with inductor load
TEXT 170 49  #VIN+vin
TEXT 226 43  #VOUT+vout
TEXT -7 79  #Amplifier with resistor load
TEXT 58 79  #Amplifier with pMOS load
TEXT 93 -32  #Easier design
TEXT 18 -32  #Difficult design
TEXT 31 38  #Vout
TEXT -14 48  #Vin
TEXT 194 64  #(gmn)
TEXT 189 24  #(gmp)
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\AmpliSingle.sch
