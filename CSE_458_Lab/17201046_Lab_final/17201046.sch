DSCH 2.7f
VERSION 10/30/2021 11:00:38 AM
BB(-75,-65,289,215)
SYM  #light2
BB(283,60,289,74)
TITLE 285 74  #light
MODEL 49
PROP                                                                                                                                    
REC(284,61,4,4,r)
VIS 1
PIN(285,75,0.000,0.000)OutPut
LIG(288,66,288,61)
LIG(288,61,287,60)
LIG(284,61,284,66)
LIG(287,71,287,68)
LIG(286,71,289,71)
LIG(286,73,288,71)
LIG(287,73,289,71)
LIG(283,68,289,68)
LIG(285,68,285,75)
LIG(283,66,283,68)
LIG(289,66,283,66)
LIG(289,68,289,66)
LIG(285,60,284,61)
LIG(287,60,285,60)
FSYM
SYM  #clock8
BB(-75,-28,-60,-22)
TITLE -70 -25  #clock
MODEL 69
PROP   1280.000 1280.000                                                                                                                                
REC(-73,-27,6,4,r)
VIS 1
PIN(-60,-25,1.500,0.140)B
LIG(-65,-25,-60,-25)
LIG(-70,-27,-72,-27)
LIG(-66,-27,-68,-27)
LIG(-65,-28,-65,-22)
LIG(-75,-22,-75,-28)
LIG(-70,-23,-70,-27)
LIG(-68,-27,-68,-23)
LIG(-68,-23,-70,-23)
LIG(-72,-23,-74,-23)
LIG(-72,-27,-72,-23)
LIG(-65,-22,-75,-22)
LIG(-65,-28,-75,-28)
FSYM
SYM  #clock7
BB(-75,47,-60,53)
TITLE -70 50  #clock
MODEL 69
PROP   640.000 640.000                                                                                                                                
REC(-73,48,6,4,r)
VIS 1
PIN(-60,50,1.500,0.140)C
LIG(-65,50,-60,50)
LIG(-70,48,-72,48)
LIG(-66,48,-68,48)
LIG(-65,47,-65,53)
LIG(-75,53,-75,47)
LIG(-70,52,-70,48)
LIG(-68,48,-68,52)
LIG(-68,52,-70,52)
LIG(-72,52,-74,52)
LIG(-72,48,-72,52)
LIG(-65,53,-75,53)
LIG(-65,47,-75,47)
FSYM
SYM  #clock6
BB(-75,2,-60,8)
TITLE -70 5  #clock
MODEL 69
PROP   320.000 320.000                                                                                                                                
REC(-73,3,6,4,r)
VIS 1
PIN(-60,5,1.500,0.140)A
LIG(-65,5,-60,5)
LIG(-70,3,-72,3)
LIG(-66,3,-68,3)
LIG(-65,2,-65,8)
LIG(-75,8,-75,2)
LIG(-70,7,-70,3)
LIG(-68,3,-68,7)
LIG(-68,7,-70,7)
LIG(-72,7,-74,7)
LIG(-72,3,-72,7)
LIG(-65,8,-75,8)
LIG(-65,2,-75,2)
FSYM
SYM  #nmos
BB(90,105,110,125)
TITLE 95 120  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(90,105,19,15,r)
VIS 2
PIN(90,105,0.000,0.000)s
PIN(110,115,0.000,0.000)g
PIN(90,125,0.030,0.140)d
LIG(100,115,110,115)
LIG(100,109,100,121)
LIG(98,109,98,121)
LIG(90,121,98,121)
LIG(90,125,90,121)
LIG(90,109,98,109)
LIG(90,105,90,109)
VLG    nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(0,140,20,160)
TITLE 15 145  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(1,145,19,15,r)
VIS 2
PIN(20,160,0.000,0.000)s
PIN(0,150,0.000,0.000)g
PIN(20,140,0.030,0.070)d
LIG(10,150,0,150)
LIG(10,156,10,144)
LIG(12,156,12,144)
LIG(20,144,12,144)
LIG(20,140,20,144)
LIG(20,156,12,156)
LIG(20,160,20,156)
VLG    nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(0,105,20,125)
TITLE 15 110  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(1,110,19,15,r)
VIS 2
PIN(20,125,0.000,0.000)s
PIN(0,115,0.000,0.000)g
PIN(20,105,0.030,0.280)d
LIG(10,115,0,115)
LIG(10,121,10,109)
LIG(12,121,12,109)
LIG(20,109,12,109)
LIG(20,105,20,109)
LIG(20,121,12,121)
LIG(20,125,20,121)
VLG    nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-5,40,15,60)
TITLE 10 45  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(-4,45,19,15,r)
VIS 2
PIN(15,40,0.000,0.000)s
PIN(-5,50,0.000,0.000)g
PIN(15,60,0.030,0.280)d
LIG(-5,50,1,50)
LIG(3,50,3,50)
LIG(5,56,5,44)
LIG(7,56,7,44)
LIG(15,44,7,44)
LIG(15,40,15,44)
LIG(15,56,7,56)
LIG(15,60,15,56)
VLG    pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(175,-5,195,15)
TITLE 180 10  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(175,-5,19,15,r)
VIS 2
PIN(175,15,0.000,0.000)s
PIN(195,5,0.000,0.000)g
PIN(175,-5,0.030,0.210)d
LIG(195,5,189,5)
LIG(187,5,187,5)
LIG(185,-1,185,11)
LIG(183,-1,183,11)
LIG(175,11,183,11)
LIG(175,15,175,11)
LIG(175,-1,183,-1)
LIG(175,-5,175,-1)
VLG    pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(85,-5,105,15)
TITLE 90 10  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(85,-5,19,15,r)
VIS 2
PIN(85,15,0.000,0.000)s
PIN(105,5,0.000,0.000)g
PIN(85,-5,0.030,0.210)d
LIG(105,5,99,5)
LIG(97,5,97,5)
LIG(95,-1,95,11)
LIG(93,-1,93,11)
LIG(85,11,93,11)
LIG(85,15,85,11)
LIG(85,-1,93,-1)
LIG(85,-5,85,-1)
VLG    pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-5,-5,15,15)
TITLE 10 0  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(-4,0,19,15,r)
VIS 2
PIN(15,-5,0.000,0.000)s
PIN(-5,5,0.000,0.000)g
PIN(15,15,0.030,0.140)d
LIG(-5,5,1,5)
LIG(3,5,3,5)
LIG(5,11,5,-1)
LIG(7,11,7,-1)
LIG(15,-1,7,-1)
LIG(15,-5,15,-1)
LIG(15,11,7,11)
LIG(15,15,15,11)
VLG    pmos pmos(drain,source,gate);
FSYM
SYM  #clock10
BB(260,7,275,13)
TITLE 270 10  #clock
MODEL 69
PROP   5120.000 5120.000                                                                                                                                
REC(267,8,6,4,r)
VIS 1
PIN(260,10,0.030,0.140)D
LIG(265,10,260,10)
LIG(270,12,272,12)
LIG(266,12,268,12)
LIG(265,13,265,7)
LIG(275,7,275,13)
LIG(270,8,270,12)
LIG(268,12,268,8)
LIG(268,8,270,8)
LIG(272,8,274,8)
LIG(272,12,272,8)
LIG(265,7,275,7)
LIG(265,13,275,13)
FSYM
SYM  #nmos
BB(60,170,80,190)
TITLE 65 185  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(60,170,19,15,r)
VIS 2
PIN(60,170,0.000,0.000)s
PIN(80,180,0.000,0.000)g
PIN(60,190,0.030,0.070)d
LIG(70,180,80,180)
LIG(70,174,70,186)
LIG(68,174,68,186)
LIG(60,186,68,186)
LIG(60,190,60,186)
LIG(60,174,68,174)
LIG(60,170,60,174)
VLG    nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(55,207,65,215)
TITLE 59 212  #vss
MODEL 0
PROP                                                                                                                                    
REC(55,205,0,0,b)
VIS 0
PIN(60,205,0.000,0.000)vss
LIG(60,205,60,210)
LIG(55,210,65,210)
LIG(55,213,57,210)
LIG(57,213,59,210)
LIG(59,213,61,210)
LIG(61,213,63,210)
FSYM
SYM  #vdd
BB(120,-65,130,-55)
TITLE 123 -59  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(125,-55,0.000,0.000)vdd
LIG(125,-55,125,-60)
LIG(125,-60,120,-60)
LIG(120,-60,125,-65)
LIG(125,-65,130,-60)
LIG(130,-60,125,-60)
FSYM
CNC(55 -5)
CNC(60 160)
CNC(-40 5)
CNC(65 60)
CNC(65 105)
CNC(45 15)
CNC(125 -20)
CNC(65 85)
CNC(230 10)
CNC(-30 50)
CNC(-20 -25)
LIG(15,-5,55,-5)
LIG(15,15,45,15)
LIG(45,15,85,15)
LIG(175,-20,175,-5)
LIG(-30,50,-5,50)
LIG(55,-20,125,-20)
LIG(55,-5,55,-20)
LIG(55,-5,85,-5)
LIG(15,60,65,60)
LIG(175,15,175,60)
LIG(20,125,20,140)
LIG(20,160,60,160)
LIG(90,125,90,160)
LIG(20,105,65,105)
LIG(60,160,60,170)
LIG(60,160,90,160)
LIG(60,190,60,205)
LIG(-60,5,-40,5)
LIG(-40,5,-40,115)
LIG(-40,5,-5,5)
LIG(-40,115,0,115)
LIG(-60,50,-30,50)
LIG(65,60,175,60)
LIG(110,90,110,115)
LIG(-30,90,110,90)
LIG(-60,-25,-20,-25)
LIG(105,-25,105,5)
LIG(125,-55,125,-20)
LIG(125,-20,175,-20)
LIG(45,40,45,15)
LIG(15,40,45,40)
LIG(65,85,285,85)
LIG(65,105,90,105)
LIG(225,10,230,10)
LIG(195,5,225,5)
LIG(225,5,225,10)
LIG(285,85,285,75)
LIG(65,85,65,60)
LIG(230,10,230,180)
LIG(230,10,260,10)
LIG(80,180,230,180)
LIG(-30,50,-30,90)
LIG(65,105,65,85)
LIG(-20,-25,-20,150)
LIG(-20,-25,105,-25)
LIG(-20,150,0,150)
FFIG E:\4.2_All_Notes\CSE_458_Lab\17201012_Lab_final\2a.sch
