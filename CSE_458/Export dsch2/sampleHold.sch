DSCH 2.7c
VERSION 10/18/2003 12:14:58 PM
BB(-75,-95,122,69)
SYM  #vss
BB(55,-38,65,-30)
TITLE 59 -33  #vss
MODEL 0
PROP                                                                                                                                    
REC(55,-40,0,0,b)
VIS 0
PIN(60,-40,0.000,0.000)vss
LIG(60,-40,60,-35)
LIG(55,-35,65,-35)
LIG(55,-32,57,-35)
LIG(57,-32,59,-35)
LIG(59,-32,61,-35)
LIG(61,-32,63,-35)
FSYM
SYM  #Capa
BB(55,-65,65,-45)
TITLE 65 -60  #Cstore
MODEL 900
PROP   1pF                                                                                                                                 
REC(0,-85,0,0,)
VIS 4
PIN(60,-65,0.000,0.000)c1
PIN(60,-45,0.000,0.000)c2
LIG(60,-56,60,-65)
LIG(55,-56,65,-56)
LIG(55,-54,65,-54)
LIG(60,-45,60,-54)
FSYM
SYM  #clock1c
BB(-50,-58,-35,-52)
TITLE -45 -55  #clock
MODEL 69
PROP   10.000 10.000                                                                                                                                
REC(-48,-57,6,4,r)
VIS 1
PIN(-35,-55,0.030,0.140)Sample/Hold
LIG(-40,-55,-35,-55)
LIG(-45,-57,-47,-57)
LIG(-41,-57,-43,-57)
LIG(-40,-58,-40,-52)
LIG(-50,-52,-50,-58)
LIG(-45,-53,-45,-57)
LIG(-43,-57,-43,-53)
LIG(-43,-53,-45,-53)
LIG(-47,-53,-49,-53)
LIG(-47,-57,-47,-53)
LIG(-40,-52,-50,-52)
LIG(-40,-58,-50,-58)
FSYM
SYM  #IO
BB(-47,-77,-43,-73)
TITLE -45 -75  #Vin
MODEL 925
PROP                                                                                                                                    
REC(-25,-95,0,0,)
VIS 4
PIN(-45,-75,0.000,0.000)p
LIG(-47,-77,-43,-77)
LIG(-43,-77,-43,-73)
LIG(-43,-73,-47,-73)
LIG(-47,-73,-47,-77)
FSYM
SYM  #IO
BB(68,-77,72,-73)
TITLE 70 -75  #Vin*
MODEL 925
PROP                                                                                                                                    
REC(0,-95,0,0,)
VIS 4
PIN(70,-75,0.000,0.000)p
LIG(68,-77,72,-77)
LIG(72,-77,72,-73)
LIG(72,-73,68,-73)
LIG(68,-73,68,-77)
FSYM
SYM  #inv
BB(-20,-65,15,-45)
TITLE -5 -55  #~
MODEL 101
PROP                                                                                                                                    
REC(-10,-100,0,0,)
VIS 0
PIN(-20,-55,0.000,0.000)in
PIN(15,-55,0.030,0.070)out
LIG(-20,-55,-10,-55)
LIG(-10,-65,-10,-45)
LIG(-10,-65,5,-55)
LIG(-10,-45,5,-55)
LIG(7,-55,7,-55)
LIG(9,-55,15,-55)
VLG   not not1(out,in);
FSYM
SYM  #pmos
BB(25,-95,45,-75)
TITLE 40 -80  #pmos
MODEL 902
PROP   2.0u 0.12u                                                                                                                                
REC(30,-94,15,19,r)
VIS 0
PIN(25,-75,0.000,0.000)s
PIN(35,-95,0.000,0.000)g
PIN(45,-75,0.030,0.210)d
LIG(35,-95,35,-89)
LIG(35,-87,35,-87)
LIG(41,-85,29,-85)
LIG(41,-83,29,-83)
LIG(29,-75,29,-83)
LIG(25,-75,29,-75)
LIG(41,-75,41,-83)
LIG(45,-75,41,-75)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(25,-75,45,-55)
TITLE 30 -70  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                
REC(25,-75,15,19,r)
VIS 0
PIN(25,-75,0.000,0.000)s
PIN(35,-55,0.000,0.000)g
PIN(45,-75,0.030,0.210)d
LIG(35,-65,35,-55)
LIG(29,-65,41,-65)
LIG(29,-67,41,-67)
LIG(41,-75,41,-67)
LIG(45,-75,41,-75)
LIG(29,-75,29,-67)
LIG(25,-75,29,-75)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #Arrow
BB(-20,-78,-10,-72)
TITLE -17 -70  #Out
MODEL 935
PROP                                                                                                                                    
REC(-25,-95,0,0,)
VIS 0
PIN(-20,-75,0.000,0.000)in
LIG(-20,-75,-10,-75)
LIG(-12,-77,-10,-75)
LIG(-12,-73,-10,-75)
FSYM
SYM  #Arrow
BB(-20,17,-10,23)
TITLE -17 25  #Out
MODEL 935
PROP                                                                                                                                    
REC(-25,0,0,0,)
VIS 0
PIN(-20,20,0.000,0.000)in
LIG(-20,20,-10,20)
LIG(-12,18,-10,20)
LIG(-12,22,-10,20)
FSYM
SYM  #pmos
BB(65,0,85,20)
TITLE 80 15  #pmos
MODEL 902
PROP   2.0u 0.12u                                                                                                                                
REC(70,1,15,19,r)
VIS 0
PIN(65,20,0.000,0.000)s
PIN(75,0,0.000,0.000)g
PIN(85,20,0.030,0.210)d
LIG(75,0,75,6)
LIG(75,8,75,8)
LIG(81,10,69,10)
LIG(81,12,69,12)
LIG(69,20,69,12)
LIG(65,20,69,20)
LIG(81,20,81,12)
LIG(85,20,81,20)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(65,20,85,40)
TITLE 70 25  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                
REC(65,20,15,19,r)
VIS 0
PIN(65,20,0.000,0.000)s
PIN(75,40,0.000,0.000)g
PIN(85,20,0.030,0.210)d
LIG(75,30,75,40)
LIG(69,30,81,30)
LIG(69,28,81,28)
LIG(81,20,81,28)
LIG(85,20,81,20)
LIG(69,20,69,28)
LIG(65,20,69,20)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #inv
BB(-60,30,-25,50)
TITLE -45 40  #~
MODEL 101
PROP                                                                                                                                    
REC(-50,-5,0,0,)
VIS 0
PIN(-60,40,0.000,0.000)in
PIN(-25,40,0.030,0.000)out
LIG(-60,40,-50,40)
LIG(-50,30,-50,50)
LIG(-50,30,-35,40)
LIG(-50,50,-35,40)
LIG(-33,40,-33,40)
LIG(-31,40,-25,40)
VLG   not not1(out,in);
FSYM
SYM  #vss
BB(95,57,105,65)
TITLE 99 62  #vss
MODEL 0
PROP                                                                                                                                    
REC(95,55,0,0,b)
VIS 0
PIN(100,55,0.000,0.000)vss
LIG(100,55,100,60)
LIG(95,60,105,60)
LIG(95,63,97,60)
LIG(97,63,99,60)
LIG(99,63,101,60)
LIG(101,63,103,60)
FSYM
SYM  #IO
BB(-47,18,-43,22)
TITLE -45 20  #Vin
MODEL 925
PROP                                                                                                                                    
REC(-25,0,0,0,)
VIS 4
PIN(-45,20,0.000,0.000)p
LIG(-47,18,-43,18)
LIG(-43,18,-43,22)
LIG(-43,22,-47,22)
LIG(-47,22,-47,18)
FSYM
SYM  #clock1
BB(-75,37,-60,43)
TITLE -85 25  #SampleHold
MODEL 69
PROP   10.000 10.000                                                                                                                                
REC(-73,38,6,4,r)
VIS 4
PIN(-60,40,0.030,0.000)Sample/Hold
LIG(-65,40,-60,40)
LIG(-70,38,-72,38)
LIG(-66,38,-68,38)
LIG(-65,37,-65,43)
LIG(-75,43,-75,37)
LIG(-70,42,-70,38)
LIG(-68,38,-68,42)
LIG(-68,42,-70,42)
LIG(-72,42,-74,42)
LIG(-72,38,-72,42)
LIG(-65,43,-75,43)
LIG(-65,37,-75,37)
FSYM
SYM  #Capa
BB(95,30,105,50)
TITLE 105 35  #Cstore
MODEL 900
PROP   1pF                                                                                                                                 
REC(40,10,0,0,)
VIS 4
PIN(100,30,0.000,0.000)c1
PIN(100,50,0.000,0.000)c2
LIG(100,39,100,30)
LIG(95,39,105,39)
LIG(95,41,105,41)
LIG(100,50,100,41)
FSYM
SYM  #IO
BB(118,18,122,22)
TITLE 120 20  #Vin*
MODEL 925
PROP                                                                                                                                    
REC(50,0,0,0,)
VIS 4
PIN(120,20,0.000,0.000)p
LIG(118,18,122,18)
LIG(122,18,122,22)
LIG(122,22,118,22)
LIG(118,22,118,18)
FSYM
SYM  #inv
BB(-20,30,15,50)
TITLE -5 40  #~
MODEL 101
PROP                                                                                                                                    
REC(-10,-5,0,0,)
VIS 0
PIN(-20,40,0.000,0.000)in
PIN(15,40,0.030,0.070)out
LIG(-20,40,-10,40)
LIG(-10,30,-10,50)
LIG(-10,30,5,40)
LIG(-10,50,5,40)
LIG(7,40,7,40)
LIG(9,40,15,40)
VLG   not not1(out,in);
FSYM
SYM  #nmos
BB(25,20,45,40)
TITLE 30 25  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                
REC(25,20,15,19,r)
VIS 0
PIN(25,20,0.000,0.000)s
PIN(35,40,0.000,0.000)g
PIN(45,20,0.030,0.210)d
LIG(35,30,35,40)
LIG(29,30,41,30)
LIG(29,28,41,28)
LIG(41,20,41,28)
LIG(45,20,41,20)
LIG(29,20,29,28)
LIG(25,20,29,20)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(25,0,45,20)
TITLE 40 15  #pmos
MODEL 902
PROP   2.0u 0.12u                                                                                                                                
REC(30,1,15,19,r)
VIS 0
PIN(25,20,0.000,0.000)s
PIN(35,0,0.000,0.000)g
PIN(45,20,0.030,0.210)d
LIG(35,0,35,6)
LIG(35,8,35,8)
LIG(41,10,29,10)
LIG(41,12,29,12)
LIG(29,20,29,12)
LIG(25,20,29,20)
LIG(41,20,41,12)
LIG(45,20,41,20)
VLG   pmos pmos(drain,source,gate);
FSYM
CNC(60 -75)
CNC(60 -75)
CNC(-25 40)
CNC(100 20)
CNC(100 20)
LIG(60,-75,70,-75)
LIG(60,-75,60,-65)
LIG(60,-45,60,-40)
LIG(-35,-55,-20,-55)
LIG(-20,-40,35,-40)
LIG(-20,-55,-20,-40)
LIG(15,-95,35,-95)
LIG(15,-55,15,-95)
LIG(45,-75,60,-75)
LIG(35,-40,35,-55)
LIG(-45,-75,25,-75)
LIG(-45,20,25,20)
LIG(-25,0,50,0)
LIG(60,0,75,0)
LIG(-60,40,-60,40)
LIG(100,50,100,55)
LIG(50,0,50,15)
LIG(100,20,120,20)
LIG(-25,40,-25,40)
LIG(100,20,100,30)
LIG(60,15,60,0)
LIG(-25,0,-25,40)
LIG(-25,40,-20,40)
LIG(60,40,75,40)
LIG(45,20,100,20)
LIG(15,40,50,40)
LIG(50,25,50,40)
LIG(50,25,60,15)
LIG(60,25,50,15)
LIG(60,25,60,40)
TEXT -31 -31  #Sample Hold circuit
TEXT -31 59  #Low offset sample Hold circuit
TEXT 66 -6  #Dummy pass gate
TEXT 8 -6  #pMOS switch first
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\sampleHold.sch
