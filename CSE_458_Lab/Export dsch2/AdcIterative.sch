DSCH 2.7c
VERSION 10/18/2003 12:29:49 PM
BB(295,-85,714,230)
SYM  #aop
BB(340,85,375,105)
TITLE 352 96  #Aop
MODEL 950
PROP                                                                                                                                    
REC(340,85,1,1,P)
VIS 0
PIN(340,100,0.000,0.000)Vm
PIN(340,90,0.000,0.000)Vp
PIN(375,95,0.030,0.070)Vout
LIG(340,100,350,100)
LIG(340,90,350,90)
LIG(351,100,353,100)
LIG(351,90,353,90)
LIG(352,89,352,91)
LIG(350,85,350,105)
LIG(350,85,365,95)
LIG(350,105,365,95)
LIG(365,95,375,95)
FSYM
SYM  #button1
BB(296,-4,305,4)
TITLE 300 0  #button
MODEL 59
PROP                                                                                                                                    
REC(297,-3,6,6,r)
VIS 1
PIN(305,0,0.000,0.000)Reset
LIG(304,0,305,0)
LIG(296,-4,296,4)
LIG(304,-4,296,-4)
LIG(304,4,304,-4)
LIG(296,4,304,4)
LIG(297,-3,297,3)
LIG(303,-3,297,-3)
LIG(303,3,303,-3)
LIG(297,3,303,3)
FSYM
SYM  #dreg1
BB(430,-30,460,-5)
TITLE 442 -22  #dreg
MODEL 860
PROP                                                                                                                                    
REC(405,-40,0,0,r)
VIS 4
PIN(430,-25,0.000,0.000)D
PIN(430,-15,0.000,0.000)RST
PIN(445,-5,0.000,0.000)H
PIN(460,-15,0.120,0.350)Q
PIN(460,-25,0.120,0.070)nQ
LIG(430,-15,435,-15)
LIG(430,-25,435,-25)
LIG(445,-5,445,-6)
LIG(445,-8,445,-8)
LIG(455,-15,460,-15)
LIG(455,-25,460,-25)
LIG(455,-10,435,-10)
LIG(455,-30,455,-10)
LIG(435,-30,455,-30)
LIG(435,-10,435,-30)
LIG(444,-10,445,-12)
LIG(445,-12,446,-10)
VLG  module dreg(D,RST,H,Q,nQ);
VLG    input D,RST,H;
VLG    output Q,nQ;
VLG  endmodule
FSYM
SYM  #dreg2
BB(390,-30,420,-5)
TITLE 402 -22  #dreg
MODEL 860
PROP                                                                                                                                    
REC(365,-40,0,0,r)
VIS 4
PIN(390,-25,0.000,0.000)D
PIN(390,-15,0.000,0.000)RST
PIN(405,-5,0.000,0.000)H
PIN(420,-15,0.120,0.560)Q
PIN(420,-25,0.120,0.070)nQ
LIG(390,-15,395,-15)
LIG(390,-25,395,-25)
LIG(405,-5,405,-6)
LIG(405,-8,405,-8)
LIG(415,-15,420,-15)
LIG(415,-25,420,-25)
LIG(415,-10,395,-10)
LIG(415,-30,415,-10)
LIG(395,-30,415,-30)
LIG(395,-10,395,-30)
LIG(404,-10,405,-12)
LIG(405,-12,406,-10)
VLG  module dreg(D,RST,H,Q,nQ);
VLG    input D,RST,H;
VLG    output Q,nQ;
VLG  endmodule
FSYM
SYM  #dreg3
BB(350,-30,380,-5)
TITLE 362 -22  #dreg
MODEL 860
PROP                                                                                                                                    
REC(325,-40,0,0,r)
VIS 4
PIN(350,-25,0.000,0.000)D
PIN(350,-15,0.000,0.000)RST
PIN(365,-5,0.000,0.000)H
PIN(380,-15,0.120,0.840)Q
PIN(380,-25,0.120,0.070)nQ
LIG(350,-15,355,-15)
LIG(350,-25,355,-25)
LIG(365,-5,365,-6)
LIG(365,-8,365,-8)
LIG(375,-15,380,-15)
LIG(375,-25,380,-25)
LIG(375,-10,355,-10)
LIG(375,-30,375,-10)
LIG(355,-30,375,-30)
LIG(355,-10,355,-30)
LIG(364,-10,365,-12)
LIG(365,-12,366,-10)
VLG  module dreg(D,RST,H,Q,nQ);
VLG    input D,RST,H;
VLG    output Q,nQ;
VLG  endmodule
FSYM
SYM  #clock1
BB(295,62,310,68)
TITLE 300 65  #clock
MODEL 69
PROP   5.000 5.000                                                                                                                                
REC(297,63,6,4,r)
VIS 1
PIN(310,65,1.000,0.070)Clock1
LIG(305,65,310,65)
LIG(300,67,298,67)
LIG(304,67,302,67)
LIG(305,68,305,62)
LIG(295,62,295,68)
LIG(300,63,300,67)
LIG(302,67,302,63)
LIG(302,63,300,63)
LIG(298,63,296,63)
LIG(298,67,298,63)
LIG(305,62,295,62)
LIG(305,68,295,68)
FSYM
SYM  #Arrow
BB(505,157,515,163)
TITLE 508 163  #2/8
MODEL 935
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 4
PIN(505,160,0.000,0.000)in
LIG(505,160,515,160)
LIG(513,158,515,160)
LIG(513,162,515,160)
FSYM
SYM  #Res
BB(500,40,510,60)
TITLE 505 50  #R1
MODEL 920
PROP   50                                                                                                                                 
REC(500,50,0,0,)
VIS 0
PIN(505,60,0.000,0.000)r1
PIN(505,40,0.000,0.000)r2
LIG(505,60,505,56)
LIG(503,54,505,56)
LIG(507,52,503,54)
LIG(503,49,507,52)
LIG(507,47,503,49)
LIG(503,44,507,47)
LIG(505,43,503,44)
LIG(505,40,505,43)
FSYM
SYM  #Res
BB(500,80,510,100)
TITLE 505 90  #R1
MODEL 920
PROP   50                                                                                                                                 
REC(500,90,0,0,)
VIS 0
PIN(505,100,0.000,0.000)r1
PIN(505,80,0.000,0.000)r2
LIG(505,100,505,96)
LIG(503,94,505,96)
LIG(507,92,503,94)
LIG(503,89,507,92)
LIG(507,87,503,89)
LIG(503,84,507,87)
LIG(505,83,503,84)
LIG(505,80,505,83)
FSYM
SYM  #tgate
BB(525,130,545,150)
TITLE 540 145  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(505,205,0,0,)
VIS 0
PIN(525,140,0.000,0.000)in
PIN(535,130,0.000,0.000)en
PIN(545,140,0.060,0.420)out
LIG(525,140,530,140)
LIG(535,130,535,140)
LIG(540,140,545,140)
LIG(530,145,530,135)
LIG(540,145,540,135)
LIG(530,145,540,135)
LIG(530,135,540,145)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(540,150,560,170)
TITLE 555 165  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(520,225,0,0,)
VIS 0
PIN(540,160,0.000,0.000)in
PIN(550,150,0.000,0.000)en
PIN(560,160,0.060,0.420)out
LIG(540,160,545,160)
LIG(550,150,550,160)
LIG(555,160,560,160)
LIG(545,165,545,155)
LIG(555,165,555,155)
LIG(545,165,555,155)
LIG(545,155,555,165)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #Vdac
BB(500,30,510,40)
TITLE 508 36  #Vref
MODEL 1
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 4
PIN(505,40,0.000,0.000)vdd
LIG(505,40,505,35)
LIG(505,35,500,35)
LIG(500,35,505,30)
LIG(505,30,510,35)
LIG(510,35,505,35)
FSYM
SYM  #Res
BB(500,100,510,120)
TITLE 505 110  #R1
MODEL 920
PROP   50                                                                                                                                 
REC(500,110,0,0,)
VIS 0
PIN(505,120,0.000,0.000)r1
PIN(505,100,0.000,0.000)r2
LIG(505,120,505,116)
LIG(503,114,505,116)
LIG(507,112,503,114)
LIG(503,109,507,112)
LIG(507,107,503,109)
LIG(503,104,507,107)
LIG(505,103,503,104)
LIG(505,100,505,103)
FSYM
SYM  #Res
BB(500,120,510,140)
TITLE 505 130  #R1
MODEL 920
PROP   50                                                                                                                                 
REC(500,130,0,0,)
VIS 0
PIN(505,140,0.000,0.000)r1
PIN(505,120,0.000,0.000)r2
LIG(505,140,505,136)
LIG(503,134,505,136)
LIG(507,132,503,134)
LIG(503,129,507,132)
LIG(507,127,503,129)
LIG(503,124,507,127)
LIG(505,123,503,124)
LIG(505,120,505,123)
FSYM
SYM  #Res
BB(500,140,510,160)
TITLE 505 150  #R1
MODEL 920
PROP   50                                                                                                                                 
REC(500,150,0,0,)
VIS 0
PIN(505,160,0.000,0.000)r1
PIN(505,140,0.000,0.000)r2
LIG(505,160,505,156)
LIG(503,154,505,156)
LIG(507,152,503,154)
LIG(503,149,507,152)
LIG(507,147,503,149)
LIG(503,144,507,147)
LIG(505,143,503,144)
LIG(505,140,505,143)
FSYM
SYM  #Res
BB(500,180,510,200)
TITLE 505 190  #R1
MODEL 920
PROP   50                                                                                                                                 
REC(500,190,0,0,)
VIS 0
PIN(505,200,0.000,0.000)r1
PIN(505,180,0.000,0.000)r2
LIG(505,200,505,196)
LIG(503,194,505,196)
LIG(507,192,503,194)
LIG(503,189,507,192)
LIG(507,187,503,189)
LIG(503,184,507,187)
LIG(505,183,503,184)
LIG(505,180,505,183)
FSYM
SYM  #Res
BB(500,160,510,180)
TITLE 505 170  #R1
MODEL 920
PROP   50                                                                                                                                 
REC(500,170,0,0,)
VIS 0
PIN(505,180,0.000,0.000)r1
PIN(505,160,0.000,0.000)r2
LIG(505,180,505,176)
LIG(503,174,505,176)
LIG(507,172,503,174)
LIG(503,169,507,172)
LIG(507,167,503,169)
LIG(503,164,507,167)
LIG(505,163,503,164)
LIG(505,160,505,163)
FSYM
SYM  #vss
BB(500,217,510,225)
TITLE 504 222  #vss
MODEL 0
PROP                                                                                                                                    
REC(500,215,0,0,b)
VIS 0
PIN(505,215,0.000,0.000)vss
LIG(505,215,505,220)
LIG(500,220,510,220)
LIG(500,223,502,220)
LIG(502,223,504,220)
LIG(504,223,506,220)
LIG(506,223,508,220)
FSYM
SYM  #Res
BB(500,60,510,80)
TITLE 505 70  #R1
MODEL 920
PROP   50                                                                                                                                 
REC(500,70,0,0,)
VIS 0
PIN(505,80,0.000,0.000)r1
PIN(505,60,0.000,0.000)r2
LIG(505,80,505,76)
LIG(503,74,505,76)
LIG(507,72,503,74)
LIG(503,69,507,72)
LIG(507,67,503,69)
LIG(503,64,507,67)
LIG(505,63,503,64)
LIG(505,60,505,63)
FSYM
SYM  #tgate
BB(525,170,545,190)
TITLE 540 185  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(505,245,0,0,)
VIS 0
PIN(525,180,0.000,0.000)in
PIN(535,170,0.000,0.000)en
PIN(545,180,0.060,0.420)out
LIG(525,180,530,180)
LIG(535,170,535,180)
LIG(540,180,545,180)
LIG(530,185,530,175)
LIG(540,185,540,175)
LIG(530,185,540,175)
LIG(530,175,540,185)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #inv
BB(535,-45,570,-25)
TITLE 550 -35  #~
MODEL 101
PROP                                                                                                                                    
REC(505,75,0,0,)
VIS 0
PIN(535,-35,0.000,0.000)in
PIN(570,-35,0.030,0.140)out
LIG(535,-35,545,-35)
LIG(545,-45,545,-25)
LIG(545,-45,560,-35)
LIG(545,-25,560,-35)
LIG(562,-35,562,-35)
LIG(564,-35,570,-35)
VLG    not not1(out,in);
FSYM
SYM  #tgate
BB(540,190,560,210)
TITLE 555 205  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(520,265,0,0,)
VIS 0
PIN(540,200,0.000,0.000)in
PIN(550,190,0.000,0.000)en
PIN(560,200,0.060,0.420)out
LIG(540,200,545,200)
LIG(550,190,550,200)
LIG(555,200,560,200)
LIG(545,205,545,195)
LIG(555,205,555,195)
LIG(545,205,555,195)
LIG(545,195,555,205)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(540,110,560,130)
TITLE 555 125  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(520,185,0,0,)
VIS 0
PIN(540,120,0.000,0.000)in
PIN(550,110,0.000,0.000)en
PIN(560,120,0.060,0.420)out
LIG(540,120,545,120)
LIG(550,110,550,120)
LIG(555,120,560,120)
LIG(545,125,545,115)
LIG(555,125,555,115)
LIG(545,125,555,115)
LIG(545,115,555,125)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(645,80,665,100)
TITLE 660 95  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(625,155,0,0,)
VIS 0
PIN(645,90,0.000,0.000)in
PIN(655,80,0.000,0.000)en
PIN(665,90,0.060,0.420)out
LIG(645,90,650,90)
LIG(655,80,655,90)
LIG(660,90,665,90)
LIG(650,95,650,85)
LIG(660,95,660,85)
LIG(650,95,660,85)
LIG(650,85,660,95)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(525,90,545,110)
TITLE 540 105  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(505,165,0,0,)
VIS 0
PIN(525,100,0.000,0.000)in
PIN(535,90,0.000,0.000)en
PIN(545,100,0.060,0.420)out
LIG(525,100,530,100)
LIG(535,90,535,100)
LIG(540,100,545,100)
LIG(530,105,530,95)
LIG(540,105,540,95)
LIG(530,105,540,95)
LIG(530,95,540,105)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(540,70,560,90)
TITLE 555 85  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(520,145,0,0,)
VIS 0
PIN(540,80,0.000,0.000)in
PIN(550,70,0.000,0.000)en
PIN(560,80,0.060,0.420)out
LIG(540,80,545,80)
LIG(550,70,550,80)
LIG(555,80,560,80)
LIG(545,85,545,75)
LIG(555,85,555,75)
LIG(545,85,555,75)
LIG(545,75,555,85)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(525,50,545,70)
TITLE 540 65  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(505,125,0,0,)
VIS 0
PIN(525,60,0.000,0.000)in
PIN(535,50,0.000,0.000)en
PIN(545,60,0.060,0.420)out
LIG(525,60,530,60)
LIG(535,50,535,60)
LIG(540,60,545,60)
LIG(530,65,530,55)
LIG(540,65,540,55)
LIG(530,65,540,55)
LIG(530,55,540,65)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(585,140,605,160)
TITLE 600 155  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(565,215,0,0,)
VIS 0
PIN(585,150,0.000,0.000)in
PIN(595,140,0.000,0.000)en
PIN(605,150,0.060,0.420)out
LIG(585,150,590,150)
LIG(595,140,595,150)
LIG(600,150,605,150)
LIG(590,155,590,145)
LIG(600,155,600,145)
LIG(590,155,600,145)
LIG(590,145,600,155)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #Arrow
BB(505,77,515,83)
TITLE 508 83  #6/8
MODEL 935
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 4
PIN(505,80,0.000,0.000)in
LIG(505,80,515,80)
LIG(513,78,515,80)
LIG(513,82,515,80)
FSYM
SYM  #inv
BB(535,5,570,25)
TITLE 550 15  #~
MODEL 101
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 0
PIN(535,15,0.000,0.000)in
PIN(570,15,0.030,0.560)out
LIG(535,15,545,15)
LIG(545,5,545,25)
LIG(545,5,560,15)
LIG(545,25,560,15)
LIG(562,15,562,15)
LIG(564,15,570,15)
VLG    not not1(out,in);
FSYM
SYM  #Arrow
BB(505,97,515,103)
TITLE 508 103  #5/8
MODEL 935
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 4
PIN(505,100,0.000,0.000)in
LIG(505,100,515,100)
LIG(513,98,515,100)
LIG(513,102,515,100)
FSYM
SYM  #Arrow
BB(505,117,515,123)
TITLE 508 123  #4/8
MODEL 935
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 4
PIN(505,120,0.000,0.000)in
LIG(505,120,515,120)
LIG(513,118,515,120)
LIG(513,122,515,120)
FSYM
SYM  #inv
BB(535,-20,570,0)
TITLE 550 -10  #~
MODEL 101
PROP                                                                                                                                    
REC(505,100,0,0,)
VIS 0
PIN(535,-10,0.000,0.000)in
PIN(570,-10,0.030,0.280)out
LIG(535,-10,545,-10)
LIG(545,-20,545,0)
LIG(545,-20,560,-10)
LIG(545,0,560,-10)
LIG(562,-10,562,-10)
LIG(564,-10,570,-10)
VLG    not not1(out,in);
FSYM
SYM  #tgate
BB(585,60,605,80)
TITLE 600 75  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(565,135,0,0,)
VIS 0
PIN(585,70,0.000,0.000)in
PIN(595,60,0.000,0.000)en
PIN(605,70,0.060,0.420)out
LIG(585,70,590,70)
LIG(595,60,595,70)
LIG(600,70,605,70)
LIG(590,75,590,65)
LIG(600,75,600,65)
LIG(590,75,600,65)
LIG(590,65,600,75)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(605,100,625,120)
TITLE 620 115  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(585,175,0,0,)
VIS 0
PIN(605,110,0.000,0.000)in
PIN(615,100,0.000,0.000)en
PIN(625,110,0.060,0.420)out
LIG(605,110,610,110)
LIG(615,100,615,110)
LIG(620,110,625,110)
LIG(610,115,610,105)
LIG(620,115,620,105)
LIG(610,115,620,105)
LIG(610,105,620,115)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(605,180,625,200)
TITLE 620 195  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(585,255,0,0,)
VIS 0
PIN(605,190,0.000,0.000)in
PIN(615,180,0.000,0.000)en
PIN(625,190,0.060,0.420)out
LIG(605,190,610,190)
LIG(615,180,615,190)
LIG(620,190,625,190)
LIG(610,195,610,185)
LIG(620,195,620,185)
LIG(610,195,620,185)
LIG(610,185,620,195)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #tgate
BB(670,160,690,180)
TITLE 685 175  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(650,235,0,0,)
VIS 0
PIN(670,170,0.000,0.000)in
PIN(680,160,0.000,0.000)en
PIN(690,170,0.060,0.420)out
LIG(670,170,675,170)
LIG(680,160,680,170)
LIG(685,170,690,170)
LIG(675,175,675,165)
LIG(685,175,685,165)
LIG(675,175,685,165)
LIG(675,165,685,175)
VLG    
VLG   module tgate(in,en,out);
VLG    input in,en;
VLG    output out;
VLG    wire nEn;
VLG    not  not1(nEn,en);
VLG    nmos nmos1(out,in,en);
VLG    pmos pmos1(out,in,nEn);
VLG   endmodule
FSYM
SYM  #light2
BB(708,90,714,104)
TITLE 710 104  #Vout
MODEL 49
PROP                                                                                                                                    
REC(709,91,4,4,r)
VIS 1
PIN(710,105,0.000,0.000)Vdac
LIG(713,96,713,91)
LIG(713,91,712,90)
LIG(709,91,709,96)
LIG(712,101,712,98)
LIG(711,101,714,101)
LIG(711,103,713,101)
LIG(712,103,714,101)
LIG(708,98,714,98)
LIG(710,98,710,105)
LIG(708,96,708,98)
LIG(714,96,708,96)
LIG(714,98,714,96)
LIG(710,90,709,91)
LIG(712,90,710,90)
FSYM
SYM  #Arrow
BB(505,57,515,63)
TITLE 508 63  #7/8
MODEL 935
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 4
PIN(505,60,0.000,0.000)in
LIG(505,60,515,60)
LIG(513,58,515,60)
LIG(513,62,515,60)
FSYM
SYM  #Arrow
BB(505,197,515,203)
TITLE 508 203  #0/8
MODEL 935
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 4
PIN(505,200,0.000,0.000)in
LIG(505,200,515,200)
LIG(513,198,515,200)
LIG(513,202,515,200)
FSYM
SYM  #Arrow
BB(505,177,515,183)
TITLE 508 183  #1/8
MODEL 935
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 4
PIN(505,180,0.000,0.000)in
LIG(505,180,515,180)
LIG(513,178,515,180)
LIG(513,182,515,180)
FSYM
SYM  #Arrow
BB(505,137,515,143)
TITLE 508 143  #3/8
MODEL 935
PROP                                                                                                                                    
REC(505,125,0,0,)
VIS 4
PIN(505,140,0.000,0.000)in
LIG(505,140,515,140)
LIG(513,138,515,140)
LIG(513,142,515,140)
FSYM
SYM  #and2
BB(385,80,420,100)
TITLE 397 91  #&
MODEL 402
PROP                                                                                                                                    
REC(0,0,0,0,)
VIS 0
PIN(385,95,0.000,0.000)b
PIN(385,85,0.000,0.000)a
PIN(420,90,0.090,0.070)s
LIG(385,95,393,95)
LIG(393,80,393,100)
LIG(413,90,420,90)
LIG(412,92,409,96)
LIG(413,90,412,92)
LIG(412,88,413,90)
LIG(409,84,412,88)
LIG(404,81,409,84)
LIG(409,96,404,99)
LIG(404,99,393,100)
LIG(393,80,404,81)
LIG(385,85,393,85)
VLG   and and2(out,a,b);
FSYM
SYM  #button5
BB(296,86,305,94)
TITLE 300 90  #button
MODEL 59
PROP                                                                                                                                    
REC(297,87,6,6,r)
VIS 1
PIN(305,90,0.000,0.000)Vin
LIG(304,90,305,90)
LIG(296,94,296,86)
LIG(304,94,296,94)
LIG(304,86,304,94)
LIG(296,86,304,86)
LIG(297,93,297,87)
LIG(303,93,297,93)
LIG(303,87,303,93)
LIG(297,87,303,87)
FSYM
SYM  #vss
BB(460,-48,470,-40)
TITLE 464 -43  #vss
MODEL 0
PROP                                                                                                                                    
REC(460,-50,0,0,b)
VIS 0
PIN(465,-50,0.000,0.000)vss
LIG(465,-50,465,-45)
LIG(460,-45,470,-45)
LIG(460,-42,462,-45)
LIG(462,-42,464,-45)
LIG(464,-42,466,-45)
LIG(466,-42,468,-45)
FSYM
SYM  #digit4
BB(485,-85,510,-50)
TITLE 485 -64  #digit
MODEL 89
PROP                                                                                                                                    
REC(490,-80,15,21,r)
VIS 2
PIN(490,-50,0.000,0.000)digit41
PIN(495,-50,0.000,0.000)digit42
PIN(500,-50,0.000,0.000)digit43
PIN(505,-50,0.000,0.000)digit44
LIG(485,-85,485,-55)
LIG(510,-85,485,-85)
LIG(510,-55,510,-85)
LIG(485,-55,510,-55)
LIG(490,-55,490,-50)
LIG(495,-55,495,-50)
LIG(500,-55,500,-50)
LIG(505,-55,505,-50)
FSYM
SYM  #Arrow
BB(515,12,525,18)
TITLE 515 7  #Q0
MODEL 935
PROP                                                                                                                                   
REC(50,0,0,0, )
VIS 4
PIN(515,15,0.000,0.000)in
LIG(515,15,525,15)
LIG(523,13,525,15)
LIG(523,17,525,15)
FSYM
SYM  #Arrow
BB(515,-13,525,-7)
TITLE 515 -18  #Q1
MODEL 935
PROP                                                                                                                                   
REC(45,-10,0,0, )
VIS 4
PIN(515,-10,0.000,0.000)in
LIG(515,-10,525,-10)
LIG(523,-12,525,-10)
LIG(523,-8,525,-10)
FSYM
SYM  #Arrow
BB(515,-38,525,-32)
TITLE 515 -43  #Q2
MODEL 935
PROP                                                                                                                                   
REC(40,0,0,0, )
VIS 4
PIN(515,-35,0.000,0.000)in
LIG(515,-35,525,-35)
LIG(523,-37,525,-35)
LIG(523,-33,525,-35)
FSYM
CNC(390 0)
CNC(390 0)
CNC(390 0)
CNC(390 0)
CNC(565 70)
CNC(565 110)
CNC(565 150)
CNC(565 190)
CNC(635 90)
CNC(695 125)
CNC(635 170)
CNC(635 90)
CNC(710 125)
CNC(350 0)
CNC(505 15)
CNC(500 -10)
CNC(495 -35)
LIG(690,170,695,170)
LIG(350,-15,350,0)
LIG(340,90,305,90)
LIG(430,-25,430,-35)
LIG(365,-5,365,60)
LIG(430,-15,430,0)
LIG(305,0,350,0)
LIG(350,-25,350,-35)
LIG(350,-35,380,-35)
LIG(380,-35,380,-25)
LIG(505,200,505,215)
LIG(380,-15,380,-5)
LIG(380,-5,405,-5)
LIG(710,125,710,230)
LIG(430,-35,460,-35)
LIG(460,-35,460,-25)
LIG(405,-5,405,15)
LIG(390,-25,390,-35)
LIG(390,-15,390,0)
LIG(390,-35,420,-35)
LIG(420,-35,420,-25)
LIG(420,-15,420,-5)
LIG(420,-5,445,-5)
LIG(390,0,430,0)
LIG(350,0,390,0)
LIG(480,0,480,-10)
LIG(695,90,695,125)
LIG(445,-5,445,0)
LIG(545,140,565,140)
LIG(565,140,565,150)
LIG(560,160,565,160)
LIG(505,80,540,80)
LIG(505,60,525,60)
LIG(560,200,565,200)
LIG(565,180,565,190)
LIG(545,180,565,180)
LIG(545,100,565,100)
LIG(565,100,565,110)
LIG(560,120,565,120)
LIG(560,80,565,80)
LIG(565,60,565,70)
LIG(545,60,565,60)
LIG(550,190,550,35)
LIG(525,100,505,100)
LIG(540,120,505,120)
LIG(525,140,505,140)
LIG(540,160,505,160)
LIG(525,180,505,180)
LIG(505,200,540,200)
LIG(535,15,535,170)
LIG(470,-35,495,-35)
LIG(550,35,570,35)
LIG(570,15,570,35)
LIG(565,70,585,70)
LIG(565,70,565,80)
LIG(565,110,605,110)
LIG(565,110,565,120)
LIG(340,230,710,230)
LIG(480,-10,500,-10)
LIG(570,-10,615,-10)
LIG(535,0,595,0)
LIG(615,-10,615,180)
LIG(535,-10,535,0)
LIG(595,0,595,140)
LIG(565,150,585,150)
LIG(565,150,565,160)
LIG(635,150,635,170)
LIG(565,190,605,190)
LIG(565,190,565,200)
LIG(635,170,670,170)
LIG(625,110,635,110)
LIG(605,150,635,150)
LIG(605,70,635,70)
LIG(695,125,695,170)
LIG(635,70,635,90)
LIG(635,90,645,90)
LIG(635,90,635,110)
LIG(625,190,635,190)
LIG(535,-25,655,-25)
LIG(635,170,635,190)
LIG(535,-35,535,-25)
LIG(695,125,710,125)
LIG(655,-25,655,80)
LIG(570,-35,680,-35)
LIG(680,-35,680,160)
LIG(665,90,695,90)
LIG(470,-15,470,-35)
LIG(405,15,505,15)
LIG(445,0,480,0)
LIG(460,-15,470,-15)
LIG(375,95,385,95)
LIG(310,65,360,65)
LIG(360,65,360,85)
LIG(360,85,385,85)
LIG(710,105,710,125)
LIG(365,60,420,60)
LIG(420,60,420,90)
LIG(340,100,340,230)
LIG(505,-50,505,15)
LIG(465,-50,490,-50)
LIG(500,-50,500,-10)
LIG(500,-10,535,-10)
LIG(495,-50,495,-35)
LIG(495,-35,535,-35)
LIG(505,15,535,15)
TEXT 367 -48  #3-bit counter
TEXT 576 -47  #3-bit digital to analog converter
TEXT 368 98  #Comp
TEXT 424 86  #CountClk
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\AdcIterative.sch
