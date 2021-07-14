DSCH 2.7e
VERSION 11/15/2003 11:47:18 PM
BB(-85,-10,159,90)
SYM  #inv
BB(30,50,65,70)
TITLE 45 60  #1
MODEL 101
PROP                                                                                                                                    
REC(0,35,0,0,)
VIS 0
PIN(30,60,0.000,0.000)in
PIN(65,60,0.030,0.140)out
LIG(30,60,40,60)
LIG(40,50,40,70)
LIG(40,50,55,60)
LIG(40,70,55,60)
LIG(57,60,57,60)
LIG(59,60,65,60)
VLG    not not1(out,in);
FSYM
SYM  #button1cc
BB(11,56,20,64)
TITLE 15 60  #button
MODEL 59
PROP                                                                                                                                    
REC(12,57,6,6,r)
VIS 1
PIN(20,60,0.000,0.000)A
LIG(19,60,20,60)
LIG(11,56,11,64)
LIG(19,56,11,56)
LIG(19,64,19,56)
LIG(11,64,19,64)
LIG(12,57,12,63)
LIG(18,57,12,57)
LIG(18,63,18,57)
LIG(12,63,18,63)
FSYM
SYM  #vss
BB(75,82,85,90)
TITLE 79 87  #vss
MODEL 0
PROP                                                                                                                                    
REC(75,80,0,0,b)
VIS 0
PIN(80,80,0.000,0.000)vss
LIG(80,80,80,85)
LIG(75,85,85,85)
LIG(75,88,77,85)
LIG(77,88,79,85)
LIG(79,88,81,85)
LIG(81,88,83,85)
FSYM
SYM  #inv
BB(15,10,50,30)
TITLE 30 20  #1
MODEL 101
PROP                                                                                                                                    
REC(-15,-5,0,0,)
VIS 0
PIN(15,20,0.000,0.000)in
PIN(50,20,0.030,0.070)out
LIG(15,20,25,20)
LIG(25,10,25,30)
LIG(25,10,40,20)
LIG(25,30,40,20)
LIG(42,20,42,20)
LIG(44,20,50,20)
VLG    not not1(out,in);
FSYM
SYM  #button1c
BB(-4,16,5,24)
TITLE 0 20  #button
MODEL 59
PROP                                                                                                                                    
REC(-3,17,6,6,r)
VIS 1
PIN(5,20,0.000,0.000)A
LIG(4,20,5,20)
LIG(-4,16,-4,24)
LIG(4,16,-4,16)
LIG(4,24,4,16)
LIG(-4,24,4,24)
LIG(-3,17,-3,23)
LIG(3,17,-3,17)
LIG(3,23,3,17)
LIG(-3,23,3,23)
FSYM
SYM  #light1c
BB(63,5,69,19)
TITLE 65 20  #light
MODEL 49
PROP                                                                                                                                    
REC(64,7,4,5,r)
VIS 1
PIN(65,20,0.000,0.000)nA
LIG(68,12,68,7)
LIG(68,7,67,6)
LIG(64,7,64,12)
LIG(67,17,67,14)
LIG(66,17,69,17)
LIG(66,19,68,17)
LIG(67,19,69,17)
LIG(63,14,69,14)
LIG(65,14,65,20)
LIG(63,12,63,14)
LIG(69,12,63,12)
LIG(69,14,69,12)
LIG(65,6,64,7)
LIG(67,6,65,6)
FSYM
SYM  #inv
BB(30,50,65,70)
TITLE 45 60  #1
MODEL 101
PROP                                                                                                                                    
REC(0,35,0,0,)
VIS 0
PIN(30,60,0.000,0.000)in
PIN(65,60,0.030,0.140)out
LIG(30,60,40,60)
LIG(40,50,40,70)
LIG(40,50,55,60)
LIG(40,70,55,60)
LIG(57,60,57,60)
LIG(59,60,65,60)
VLG  not not1(out,in);
FSYM
SYM  #button1c
BB(11,56,20,64)
TITLE 15 60  #button
MODEL 59
PROP                                                                                                                                    
REC(12,57,6,6,r)
VIS 1
PIN(20,60,0.000,0.000)A
LIG(19,60,20,60)
LIG(11,56,11,64)
LIG(19,56,11,56)
LIG(19,64,19,56)
LIG(11,64,19,64)
LIG(12,57,12,63)
LIG(18,57,12,57)
LIG(18,63,18,57)
LIG(12,63,18,63)
FSYM
SYM  #Capa
BB(75,60,85,80)
TITLE 85 65  #C1
MODEL 900
PROP   10fF                                                                                                                                 
REC(0,0,0,0,)
VIS 2
PIN(80,60,0.000,0.000)c1
PIN(80,80,0.000,0.000)c2
LIG(80,69,80,60)
LIG(75,69,85,69)
LIG(75,71,85,71)
LIG(80,80,80,71)
FSYM
SYM  #vss
BB(-55,77,-45,85)
TITLE -51 82  #vss
MODEL 0
PROP                                                                                                                                    
REC(-55,75,0,0,b)
VIS 0
PIN(-50,75,0.000,0.000)vss
LIG(-50,75,-50,80)
LIG(-55,80,-45,80)
LIG(-55,83,-53,80)
LIG(-53,83,-51,80)
LIG(-51,83,-49,80)
LIG(-49,83,-47,80)
FSYM
SYM  #vdd
BB(-55,-10,-45,0)
TITLE -52 -4  #vdd
MODEL 1
PROP                                                                                                                                    
REC(-210,-15,0,0,)
VIS 0
PIN(-50,0,0.000,0.000)vdd
LIG(-50,0,-50,-5)
LIG(-50,-5,-55,-5)
LIG(-55,-5,-50,-10)
LIG(-50,-10,-45,-5)
LIG(-45,-5,-50,-5)
FSYM
SYM  #nmos
BB(-70,45,-50,65)
TITLE -55 60  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                
REC(-69,50,19,15,r)
VIS 0
PIN(-50,65,0.000,0.000)s
PIN(-70,55,0.000,0.000)g
PIN(-50,45,0.030,0.070)d
LIG(-60,55,-70,55)
LIG(-60,61,-60,49)
LIG(-58,61,-58,49)
LIG(-50,49,-58,49)
LIG(-50,45,-50,49)
LIG(-50,61,-58,61)
LIG(-50,65,-50,61)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-70,10,-50,30)
TITLE -55 25  #pmos
MODEL 902
PROP   2.0u 0.12u                                                                                                                                
REC(-69,15,19,15,r)
VIS 0
PIN(-50,10,0.000,0.000)s
PIN(-70,20,0.000,0.000)g
PIN(-50,30,0.030,0.070)d
LIG(-70,20,-64,20)
LIG(-62,20,-62,20)
LIG(-60,26,-60,14)
LIG(-58,26,-58,14)
LIG(-50,14,-58,14)
LIG(-50,10,-50,14)
LIG(-50,26,-58,26)
LIG(-50,30,-50,26)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #light1
BB(153,5,159,19)
TITLE 155 20  #light
MODEL 49
PROP                                                                                                                                    
REC(154,7,4,5,r)
VIS 1
PIN(155,20,0.000,0.000)nA
LIG(158,12,158,7)
LIG(158,7,157,6)
LIG(154,7,154,12)
LIG(157,17,157,14)
LIG(156,17,159,17)
LIG(156,19,158,17)
LIG(157,19,159,17)
LIG(153,14,159,14)
LIG(155,14,155,20)
LIG(153,12,153,14)
LIG(159,12,153,12)
LIG(159,14,159,12)
LIG(155,6,154,7)
LIG(157,6,155,6)
FSYM
SYM  #button1
BB(86,16,95,24)
TITLE 90 20  #button
MODEL 59
PROP                                                                                                                                    
REC(87,17,6,6,r)
VIS 1
PIN(95,20,0.000,0.000)A
LIG(94,20,95,20)
LIG(86,16,86,24)
LIG(94,16,86,16)
LIG(94,24,94,16)
LIG(86,24,94,24)
LIG(87,17,87,23)
LIG(93,17,87,17)
LIG(93,23,93,17)
LIG(87,23,93,23)
FSYM
SYM  #inv
BB(105,10,140,30)
TITLE 120 20  #1
MODEL 101
PROP                                                                                                                                    
REC(75,-5,0,0,)
VIS 0
PIN(105,20,0.000,0.000)in
PIN(140,20,0.030,0.070)out
LIG(105,20,115,20)
LIG(115,10,115,30)
LIG(115,10,130,20)
LIG(115,30,130,20)
LIG(132,20,132,20)
LIG(134,20,140,20)
VLG    not not1(out,in);
FSYM
CNC(-50 35)
CNC(-70 35)
LIG(65,60,80,60)
LIG(20,60,30,60)
LIG(50,20,65,20)
LIG(5,20,15,20)
LIG(-50,35,-50,45)
LIG(-50,35,-35,35)
LIG(-70,35,-70,55)
LIG(-70,35,-85,35)
LIG(-50,10,-50,0)
LIG(-50,65,-50,75)
LIG(-70,20,-70,35)
LIG(-50,30,-50,35)
LIG(95,20,105,20)
LIG(140,20,155,20)
TEXT 86 58  #Typical load in 0.12µm: 10fF
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\Inverter.sch
