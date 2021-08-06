DSCH 2.7a
VERSION 9/7/2003 6:16:00 PM
BB(-4,-25,69,35)
SYM  #nmos
BB(20,5,40,25)
TITLE 35 10  #NN
MODEL 901
PROP   0.3u 0.12u                                                                                                                                                                                                        
REC(21,10,19,15,r)
VIS 6
PIN(40,25,0.000,0.000)s
PIN(20,15,0.000,0.000)g
PIN(40,5,0.030,0.140)d
LIG(30,15,20,15)
LIG(30,21,30,9)
LIG(32,21,32,9)
LIG(40,9,32,9)
LIG(40,5,40,9)
LIG(40,21,32,21)
LIG(40,25,40,21)
VLG  nmos N1(drain,source,gate);
FSYM
SYM  #pmos
BB(20,-15,40,5)
TITLE 35 -10  #PP
MODEL 902
PROP   0.5u 0.12u                                                                                                                                                                                                        
REC(21,-10,19,15,r)
VIS 6
PIN(40,-15,0.000,0.000)s
PIN(20,-5,0.000,0.000)g
PIN(40,5,0.030,0.140)d
LIG(20,-5,26,-5)
LIG(28,-5,28,-5)
LIG(30,1,30,-11)
LIG(32,1,32,-11)
LIG(40,-11,32,-11)
LIG(40,-15,40,-11)
LIG(40,1,32,1)
LIG(40,5,40,1)
VLG   pmos P1(drain,source,gate);
FSYM
SYM  #vdd
BB(35,-25,45,-15)
TITLE 38 -19  #vdd
MODEL 1
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(40,-15,0.000,0.000)vdd
LIG(40,-15,40,-20)
LIG(40,-20,35,-20)
LIG(35,-20,40,-25)
LIG(40,-25,45,-20)
LIG(45,-20,40,-20)
FSYM
SYM  #vss
BB(35,27,45,35)
TITLE 39 32  #vss
MODEL 0
PROP                                                                                                                                                                                                            
REC(35,25,0,0,b)
VIS 0
PIN(40,25,0.000,0.000)vss
LIG(40,25,40,30)
LIG(35,30,45,30)
LIG(35,33,37,30)
LIG(37,33,39,30)
LIG(39,33,41,30)
LIG(41,33,43,30)
FSYM
SYM  #button1
BB(-4,1,5,9)
TITLE 0 5  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-3,2,6,6,r)
VIS 1
PIN(5,5,0.000,0.000)in1
LIG(4,5,5,5)
LIG(-4,9,-4,1)
LIG(4,9,-4,9)
LIG(4,1,4,9)
LIG(-4,1,4,1)
LIG(-3,8,-3,2)
LIG(3,8,-3,8)
LIG(3,2,3,8)
LIG(-3,2,3,2)
FSYM
SYM  #light1
BB(63,-10,69,4)
TITLE 65 4  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(64,-9,4,4,r)
VIS 1
PIN(65,5,0.000,0.000)out1
LIG(68,-4,68,-9)
LIG(68,-9,67,-10)
LIG(64,-9,64,-4)
LIG(67,1,67,-2)
LIG(66,1,69,1)
LIG(66,3,68,1)
LIG(67,3,69,1)
LIG(63,-2,69,-2)
LIG(65,-2,65,5)
LIG(63,-4,63,-2)
LIG(69,-4,63,-4)
LIG(69,-2,69,-4)
LIG(65,-10,64,-9)
LIG(67,-10,65,-10)
FSYM
CNC(20 5)
LIG(20,-5,20,5)
LIG(20,5,5,5)
LIG(20,5,20,15)
LIG(40,5,65,5)
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\invCmos.sch
