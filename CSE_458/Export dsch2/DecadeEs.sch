DSCH 2.4e
VERSION 16/03/02 11:13:53
BB(-70,10,244,185)
SYM  #button1
BB(-64,56,-55,64)
TITLE -60 60  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-63,57,6,6,r)
VIS 1
PIN(-55,60,0.000,0.210)Enable
LIG(-56,60,-55,60)
LIG(-64,64,-64,56)
LIG(-56,64,-64,64)
LIG(-56,56,-56,64)
LIG(-64,56,-56,56)
LIG(-63,63,-63,57)
LIG(-57,63,-63,63)
LIG(-57,57,-57,63)
LIG(-63,57,-57,57)
FSYM
SYM  #button2
BB(-64,76,-55,84)
TITLE -60 80  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-63,77,6,6,r)
VIS 1
PIN(-55,80,0.000,0.350)Raz
LIG(-56,80,-55,80)
LIG(-64,84,-64,76)
LIG(-56,84,-64,84)
LIG(-56,76,-56,84)
LIG(-64,76,-56,76)
LIG(-63,83,-63,77)
LIG(-57,83,-63,83)
LIG(-57,77,-57,83)
LIG(-63,77,-57,77)
FSYM
SYM  #clock1
BB(-70,102,-55,108)
TITLE -65 105  #clock
MODEL 69
PROP   10 10                                                                                                                                                                                                        
REC(-68,103,6,4,r)
VIS 1
PIN(-55,105,1.000,0.350)clk1
LIG(-60,105,-55,105)
LIG(-65,103,-67,103)
LIG(-61,103,-63,103)
LIG(-60,102,-60,108)
LIG(-70,108,-70,102)
LIG(-65,107,-65,103)
LIG(-63,103,-63,107)
LIG(-63,107,-65,107)
LIG(-67,107,-69,107)
LIG(-67,103,-67,107)
LIG(-60,108,-70,108)
LIG(-60,102,-70,102)
FSYM
SYM  #T_reset_FF
BB(-10,50,15,100)
TITLE 0 60  #T_reset_FF
MODEL 6000
PROP                                                                                                                                                                                                           
REC(-5,55,15,40,r)
VIS 5
PIN(-10,60,0.000,0.070)T
PIN(-10,70,0.000,0.070)reset
PIN(-10,80,0.000,0.070)raz
PIN(-10,90,0.000,0.070)ck
PIN(15,60,0.040,0.420)q
PIN(15,70,0.040,0.280)c_out
LIG(-10,60,-5,60)
LIG(-10,70,-5,70)
LIG(-10,80,-5,80)
LIG(-10,90,-5,90)
LIG(10,60,15,60)
LIG(10,70,15,70)
LIG(-5,55,-5,95)
LIG(-5,55,10,55)
LIG(10,55,10,95)
LIG(10,95,-5,95)
VLG  module T_reset_FF( T,reset,raz,ck,q,c_out);
VLG   input T,reset,raz,ck;
VLG   output q,c_out;
VLG   xor xor2(w6,q,T)
VLG   and and2(w7,reset,w6)
VLG   dreg dreg3(q,w8,w7,raz,ck)
VLG   and and2(c_out,T,q)
VLG  endmodule
FSYM
SYM  #light1
BB(23,10,29,24)
TITLE 25 24  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(24,11,4,4,r)
VIS 1
PIN(25,25,0.000,0.350)A
LIG(28,16,28,11)
LIG(28,11,27,10)
LIG(24,11,24,16)
LIG(27,21,27,18)
LIG(26,21,29,21)
LIG(26,23,28,21)
LIG(27,23,29,21)
LIG(23,18,29,18)
LIG(25,18,25,25)
LIG(23,16,23,18)
LIG(29,16,23,16)
LIG(29,18,29,16)
LIG(25,10,24,11)
LIG(27,10,25,10)
FSYM
SYM  #light5
BB(238,160,244,174)
TITLE 240 174  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(239,161,4,4,r)
VIS 1
PIN(240,175,0.000,0.070)Sup9
LIG(243,166,243,161)
LIG(243,161,242,160)
LIG(239,161,239,166)
LIG(242,171,242,168)
LIG(241,171,244,171)
LIG(241,173,243,171)
LIG(242,173,244,171)
LIG(238,168,244,168)
LIG(240,168,240,175)
LIG(238,166,238,168)
LIG(244,166,238,166)
LIG(244,168,244,166)
LIG(240,160,239,161)
LIG(242,160,240,160)
FSYM
SYM  #light2
BB(83,10,89,24)
TITLE 85 24  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(84,11,4,4,r)
VIS 1
PIN(85,25,0.000,0.280)B
LIG(88,16,88,11)
LIG(88,11,87,10)
LIG(84,11,84,16)
LIG(87,21,87,18)
LIG(86,21,89,21)
LIG(86,23,88,21)
LIG(87,23,89,21)
LIG(83,18,89,18)
LIG(85,18,85,25)
LIG(83,16,83,18)
LIG(89,16,83,16)
LIG(89,18,89,16)
LIG(85,10,84,11)
LIG(87,10,85,10)
FSYM
SYM  #light4
BB(188,10,194,24)
TITLE 190 24  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(189,11,4,4,r)
VIS 1
PIN(190,25,0.000,0.350)D
LIG(193,16,193,11)
LIG(193,11,192,10)
LIG(189,11,189,16)
LIG(192,21,192,18)
LIG(191,21,194,21)
LIG(191,23,193,21)
LIG(192,23,194,21)
LIG(188,18,194,18)
LIG(190,18,190,25)
LIG(188,16,188,18)
LIG(194,16,188,16)
LIG(194,18,194,16)
LIG(190,10,189,11)
LIG(192,10,190,10)
FSYM
SYM  #light3
BB(138,10,144,24)
TITLE 140 24  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(139,11,4,4,r)
VIS 1
PIN(140,25,0.000,0.280)C
LIG(143,16,143,11)
LIG(143,11,142,10)
LIG(139,11,139,16)
LIG(142,21,142,18)
LIG(141,21,144,21)
LIG(141,23,143,21)
LIG(142,23,144,21)
LIG(138,18,144,18)
LIG(140,18,140,25)
LIG(138,16,138,18)
LIG(144,16,138,16)
LIG(144,18,144,16)
LIG(140,10,139,11)
LIG(142,10,140,10)
FSYM
SYM  #not1
BB(185,165,220,185)
TITLE 200 175  #1
MODEL 101
PROP                                                                                                                                                                                                            
REC(5,5,0,0,)
VIS 4
PIN(185,175,0.000,0.420)in
PIN(220,175,1.000,0.140)out
LIG(210,173,214,175)
LIG(185,175,195,175)
LIG(195,165,195,185)
LIG(195,185,210,185)
LIG(210,185,210,165)
LIG(210,165,195,165)
LIG(210,175,220,175)
VLG     not not1(out,in);
FSYM
SYM  #nand2
BB(150,125,185,145)
TITLE 173 136  #&
MODEL 202
PROP                                                                                                                                                                                                            
REC(184,125,1,1,P)
VIS 4
PIN(185,140,0.000,0.350)a
PIN(185,130,0.000,0.350)b
PIN(150,135,1.000,0.420)out
LIG(185,140,179,140)
LIG(185,130,179,130)
LIG(179,125,179,145)
LIG(179,145,158,145)
LIG(158,145,158,125)
LIG(158,125,179,125)
LIG(158,135,150,135)
LIG(158,133,154,135)
VLG     nand nand2(out,a,b);
FSYM
SYM  #T_reset_FF
BB(45,50,70,100)
TITLE 55 60  #T_reset_FF
MODEL 6000
PROP                                                                                                                                                                                                           
REC(50,55,15,40,r)
VIS 5
PIN(45,60,0.000,0.070)T
PIN(45,70,0.000,0.070)reset
PIN(45,80,0.000,0.070)raz
PIN(45,90,0.000,0.070)ck
PIN(70,60,0.040,0.350)q
PIN(70,70,0.040,0.280)c_out
LIG(45,60,50,60)
LIG(45,70,50,70)
LIG(45,80,50,80)
LIG(45,90,50,90)
LIG(65,60,70,60)
LIG(65,70,70,70)
LIG(50,55,50,95)
LIG(50,55,65,55)
LIG(65,55,65,95)
LIG(65,95,50,95)
VLG  module T_reset_FF( T,reset,raz,ck,q,c_out);
VLG   input T,reset,raz,ck;
VLG   output q,c_out;
VLG   xor xor2(w6,q,T)
VLG   and and2(w7,reset,w6)
VLG   dreg dreg3(q,w8,w7,raz,ck)
VLG   and and2(c_out,T,q)
VLG  endmodule
FSYM
SYM  #T_reset_FF
BB(100,50,125,100)
TITLE 110 60  #T_reset_FF
MODEL 6000
PROP                                                                                                                                                                                                           
REC(105,55,15,40,r)
VIS 5
PIN(100,60,0.000,0.070)T
PIN(100,70,0.000,0.070)reset
PIN(100,80,0.000,0.070)raz
PIN(100,90,0.000,0.070)ck
PIN(125,60,0.040,0.350)q
PIN(125,70,0.040,0.280)c_out
LIG(100,60,105,60)
LIG(100,70,105,70)
LIG(100,80,105,80)
LIG(100,90,105,90)
LIG(120,60,125,60)
LIG(120,70,125,70)
LIG(105,55,105,95)
LIG(105,55,120,55)
LIG(120,55,120,95)
LIG(120,95,105,95)
VLG  module T_reset_FF( T,reset,raz,ck,q,c_out);
VLG   input T,reset,raz,ck;
VLG   output q,c_out;
VLG   xor xor2(w6,q,T)
VLG   and and2(w7,reset,w6)
VLG   dreg dreg3(q,w8,w7,raz,ck)
VLG   and and2(c_out,T,q)
VLG  endmodule
FSYM
SYM  #T_reset_FF
BB(150,50,175,100)
TITLE 160 60  #T_reset_FF
MODEL 6000
PROP                                                                                                                                                                                                           
REC(155,55,15,40,r)
VIS 5
PIN(150,60,0.000,0.070)T
PIN(150,70,0.000,0.070)reset
PIN(150,80,0.000,0.070)raz
PIN(150,90,0.000,0.070)ck
PIN(175,60,0.040,0.420)q
PIN(175,70,0.040,0.140)c_out
LIG(150,60,155,60)
LIG(150,70,155,70)
LIG(150,80,155,80)
LIG(150,90,155,90)
LIG(170,60,175,60)
LIG(170,70,175,70)
LIG(155,55,155,95)
LIG(155,55,170,55)
LIG(170,55,170,95)
LIG(170,95,155,95)
VLG  module T_reset_FF( T,reset,raz,ck,q,c_out);
VLG   input T,reset,raz,ck;
VLG   output q,c_out;
VLG   xor xor2(w6,q,T)
VLG   and and2(w7,reset,w6)
VLG   dreg dreg3(q,w8,w7,raz,ck)
VLG   and and2(c_out,T,q)
VLG  endmodule
FSYM
CNC(100 105)
CNC(45 105)
CNC(-10 105)
CNC(-20 80)
CNC(95 100)
CNC(40 100)
CNC(130 115)
CNC(90 115)
CNC(35 115)
CNC(185 50)
CNC(185 50)
CNC(185 50)
CNC(20 40)
CNC(-20 80)
CNC(130 135)
LIG(15,70,30,70)
LIG(30,70,30,60)
LIG(30,60,45,60)
LIG(70,70,85,70)
LIG(85,70,85,60)
LIG(85,60,100,60)
LIG(125,70,140,70)
LIG(140,70,140,60)
LIG(140,60,150,60)
LIG(20,25,20,40)
LIG(25,25,20,25)
LIG(135,60,135,25)
LIG(70,60,80,60)
LIG(80,60,80,25)
LIG(85,25,80,25)
LIG(125,60,135,60)
LIG(140,25,135,25)
LIG(175,60,185,60)
LIG(185,60,185,50)
LIG(190,25,185,25)
LIG(-10,60,-55,60)
LIG(-55,80,-20,80)
LIG(-55,105,-10,105)
LIG(150,90,145,90)
LIG(145,90,145,105)
LIG(100,90,100,105)
LIG(45,90,45,105)
LIG(-10,90,-10,105)
LIG(-20,80,-20,100)
LIG(-20,100,40,100)
LIG(140,80,140,100)
LIG(140,80,150,80)
LIG(220,175,240,175)
LIG(150,70,145,70)
LIG(145,70,145,75)
LIG(145,75,130,75)
LIG(130,75,130,115)
LIG(90,70,100,70)
LIG(100,80,95,80)
LIG(95,80,95,100)
LIG(45,80,40,80)
LIG(40,80,40,100)
LIG(-10,70,-30,70)
LIG(-30,70,-30,115)
LIG(-30,115,35,115)
LIG(130,135,150,135)
LIG(90,70,90,115)
LIG(45,70,35,70)
LIG(35,70,35,115)
LIG(185,50,200,50)
LIG(200,50,200,130)
LIG(200,130,185,130)
LIG(20,40,210,40)
LIG(210,40,210,140)
LIG(210,140,185,140)
LIG(130,175,185,175)
LIG(20,40,20,60)
LIG(185,50,185,25)
LIG(-20,80,-10,80)
LIG(100,105,145,105)
LIG(45,105,100,105)
LIG(-10,105,45,105)
LIG(95,100,140,100)
LIG(40,100,95,100)
LIG(130,135,130,175)
LIG(90,115,130,115)
LIG(35,115,90,115)
LIG(130,115,130,135)
LIG(15,60,20,60)
FFIG C:\Dsch2\Bugs2\DecadeEs.sch
