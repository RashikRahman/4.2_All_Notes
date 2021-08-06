DSCH 2.7c
VERSION 10/19/2003 4:37:13 PM
BB(-129,-115,195,190)
SYM  #nmos
BB(-50,-95,-30,-75)
TITLE -35 -90  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(-145,-160,0,0,r)
VIS 0
PIN(-30,-75,0.000,0.000)source
PIN(-50,-85,0.000,0.000)gate
PIN(-30,-95,7.000,1.050)drain
LIG(-40,-85,-50,-85)
LIG(-40,-91,-40,-79)
LIG(-38,-91,-38,-79)
LIG(-30,-79,-38,-79)
LIG(-30,-75,-30,-79)
LIG(-30,-91,-38,-91)
LIG(-30,-95,-30,-91)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(125,-23,135,-15)
TITLE 129 -18  #vss
MODEL 0
PROP                                                                                                                                    
REC(20,-60,0,0,r)
VIS 0
PIN(130,-25,0.000,0.000).
LIG(130,-25,130,-20)
LIG(125,-20,135,-20)
LIG(125,-17,127,-20)
LIG(127,-17,129,-20)
LIG(129,-17,131,-20)
LIG(131,-17,133,-20)
FSYM
SYM  #Arrow
BB(105,-48,115,-42)
TITLE 105 -53  #0
MODEL 935
PROP                                                                                                                                   
REC(225,20,0,0, )
VIS 4
PIN(105,-45,0.000,0.000)in
LIG(105,-45,115,-45)
LIG(113,-47,115,-45)
LIG(113,-43,115,-45)
FSYM
SYM  #pmos
BB(110,-55,130,-35)
TITLE 125 -50  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(20,-85,0,0,r)
VIS 0
PIN(130,-55,0.000,0.000)source
PIN(110,-45,0.000,0.000)gate
PIN(130,-35,7.000,1.050)drain
LIG(110,-45,116,-45)
LIG(118,-45,118,-45)
LIG(120,-51,120,-39)
LIG(122,-51,122,-39)
LIG(130,-39,122,-39)
LIG(130,-35,130,-39)
LIG(130,-51,122,-51)
LIG(130,-55,130,-51)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #vdd
BB(-35,-115,-25,-105)
TITLE -32 -109  #vdd
MODEL 1
PROP                                                                                                                                    
REC(-140,-180,0,0,r)
VIS 0
PIN(-30,-105,0.000,0.000).
LIG(-30,-105,-30,-110)
LIG(-30,-110,-35,-110)
LIG(-35,-110,-30,-115)
LIG(-30,-115,-25,-110)
LIG(-25,-110,-30,-110)
FSYM
SYM  #vdd
BB(85,-115,95,-105)
TITLE 95 -109  #vdd_HV
MODEL 1
PROP                                                                                                                                    
REC(25,-120,0,0,r)
VIS 4
PIN(90,-105,0.000,0.000)p
LIG(90,-105,90,-110)
LIG(90,-110,85,-110)
LIG(85,-110,90,-115)
LIG(90,-115,95,-110)
LIG(95,-110,90,-110)
FSYM
SYM  #vss
BB(85,-23,95,-15)
TITLE 89 -18  #vss
MODEL 0
PROP                                                                                                                                    
REC(25,-120,0,0,r)
VIS 0
PIN(90,-25,0.000,0.000).
LIG(90,-25,90,-20)
LIG(85,-20,95,-20)
LIG(85,-17,87,-20)
LIG(87,-17,89,-20)
LIG(89,-17,91,-20)
LIG(91,-17,93,-20)
FSYM
SYM  #nmos
BB(70,-45,90,-25)
TITLE 85 -40  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(25,-120,0,0,r)
VIS 0
PIN(90,-25,0.000,0.000)source
PIN(70,-35,0.000,0.000)gate
PIN(90,-45,7.000,0.070)drain
LIG(80,-35,70,-35)
LIG(80,-41,80,-29)
LIG(82,-41,82,-29)
LIG(90,-29,82,-29)
LIG(90,-25,90,-29)
LIG(90,-41,82,-41)
LIG(90,-45,90,-41)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(70,-65,90,-45)
TITLE 85 -60  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(25,-120,0,0,r)
VIS 0
PIN(90,-45,0.000,0.000)source
PIN(70,-55,0.000,0.000)gate
PIN(90,-65,7.000,0.140)drain
LIG(80,-55,70,-55)
LIG(80,-61,80,-49)
LIG(82,-61,82,-49)
LIG(90,-49,82,-49)
LIG(90,-45,90,-49)
LIG(90,-61,82,-61)
LIG(90,-65,90,-61)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #light2
BB(163,40,169,54)
TITLE 165 55  #light
MODEL 49
PROP                                                                                                                                    
REC(164,42,4,5,r)
VIS 1
PIN(165,55,0.000,0.000)Trigger_Out
LIG(168,47,168,42)
LIG(168,42,167,41)
LIG(164,42,164,47)
LIG(167,52,167,49)
LIG(166,52,169,52)
LIG(166,54,168,52)
LIG(167,54,169,52)
LIG(163,49,169,49)
LIG(165,49,165,55)
LIG(163,47,163,49)
LIG(169,47,163,47)
LIG(169,49,169,47)
LIG(165,41,164,42)
LIG(167,41,165,41)
FSYM
SYM  #vss
BB(135,97,145,105)
TITLE 139 102  #vss
MODEL 0
PROP                                                                                                                                    
REC(0,0,0,0,r)
VIS 0
PIN(140,95,0.000,0.000).
LIG(140,95,140,100)
LIG(135,100,145,100)
LIG(135,103,137,100)
LIG(137,103,139,100)
LIG(139,103,141,100)
LIG(141,103,143,100)
FSYM
SYM  #vdd
BB(135,5,145,15)
TITLE 142 11  #vdd_LV
MODEL 1
PROP                                                                                                                                    
REC(-5,0,0,0,r)
VIS 4
PIN(140,15,0.000,0.000)p
LIG(140,15,140,10)
LIG(140,10,135,10)
LIG(135,10,140,5)
LIG(140,5,145,10)
LIG(145,10,140,10)
FSYM
SYM  #pmos
BB(120,20,140,40)
TITLE 135 25  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(-5,0,0,0,r)
VIS 0
PIN(140,20,0.000,0.000)source
PIN(120,30,0.000,0.000)gate
PIN(140,40,7.000,0.140)drain
LIG(120,30,126,30)
LIG(128,30,128,30)
LIG(130,24,130,36)
LIG(132,24,132,36)
LIG(140,36,132,36)
LIG(140,40,140,36)
LIG(140,24,132,24)
LIG(140,20,140,24)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(70,-85,90,-65)
TITLE 85 -80  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(25,-120,0,0,r)
VIS 0
PIN(90,-85,0.000,0.000)source
PIN(70,-75,0.000,0.000)gate
PIN(90,-65,7.000,0.140)drain
LIG(70,-75,76,-75)
LIG(78,-75,78,-75)
LIG(80,-81,80,-69)
LIG(82,-81,82,-69)
LIG(90,-69,82,-69)
LIG(90,-65,90,-69)
LIG(90,-81,82,-81)
LIG(90,-85,90,-81)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(70,-105,90,-85)
TITLE 85 -100  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(25,-120,0,0,r)
VIS 0
PIN(90,-105,0.000,0.000)source
PIN(70,-95,0.000,0.000)gate
PIN(90,-85,7.000,0.140)drain
LIG(70,-95,76,-95)
LIG(78,-95,78,-95)
LIG(80,-101,80,-89)
LIG(82,-101,82,-89)
LIG(90,-89,82,-89)
LIG(90,-85,90,-89)
LIG(90,-101,82,-101)
LIG(90,-105,90,-101)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(120,70,140,90)
TITLE 135 75  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(0,0,0,0,r)
VIS 0
PIN(140,90,0.000,0.000)source
PIN(120,80,0.000,0.000)gate
PIN(140,70,7.000,0.140)drain
LIG(130,80,120,80)
LIG(130,74,130,86)
LIG(132,74,132,86)
LIG(140,86,132,86)
LIG(140,90,140,86)
LIG(140,74,132,74)
LIG(140,70,140,74)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #Arrow
BB(145,67,155,73)
TITLE 130 100  #Arrow
MODEL 935
PROP                                                                                                                                    
REC(305,-10,0,0,)
VIS 0
PIN(155,70,0.000,0.000)in
LIG(155,70,145,70)
LIG(147,68,145,70)
LIG(147,72,145,70)
FSYM
SYM  #pmos
BB(45,15,65,35)
TITLE 60 20  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(0,0,0,0,r)
VIS 0
PIN(65,15,0.000,0.000)source
PIN(45,25,0.000,0.000)gate
PIN(65,35,7.000,0.140)drain
LIG(45,25,51,25)
LIG(53,25,53,25)
LIG(55,19,55,31)
LIG(57,19,57,31)
LIG(65,31,57,31)
LIG(65,35,65,31)
LIG(65,19,57,19)
LIG(65,15,65,19)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(45,35,65,55)
TITLE 60 40  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(0,0,0,0,r)
VIS 0
PIN(65,35,0.000,0.000)source
PIN(45,45,0.000,0.000)gate
PIN(65,55,7.000,0.350)drain
LIG(45,45,51,45)
LIG(53,45,53,45)
LIG(55,39,55,51)
LIG(57,39,57,51)
LIG(65,51,57,51)
LIG(65,55,65,51)
LIG(65,39,57,39)
LIG(65,35,65,39)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(45,55,65,75)
TITLE 60 60  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(0,0,0,0,r)
VIS 0
PIN(65,75,0.000,0.000)source
PIN(45,65,0.000,0.000)gate
PIN(65,55,7.000,0.350)drain
LIG(55,65,45,65)
LIG(55,59,55,71)
LIG(57,59,57,71)
LIG(65,71,57,71)
LIG(65,75,65,71)
LIG(65,59,57,59)
LIG(65,55,65,59)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(45,75,65,95)
TITLE 60 80  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(0,0,0,0,r)
VIS 0
PIN(65,95,0.000,0.000)source
PIN(45,85,0.000,0.000)gate
PIN(65,75,7.000,0.140)drain
LIG(55,85,45,85)
LIG(55,79,55,91)
LIG(57,79,57,91)
LIG(65,91,57,91)
LIG(65,95,65,91)
LIG(65,79,57,79)
LIG(65,75,65,79)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(60,97,70,105)
TITLE 64 102  #vss
MODEL 0
PROP                                                                                                                                    
REC(0,0,0,0,r)
VIS 0
PIN(65,95,0.000,0.000).
LIG(65,95,65,100)
LIG(60,100,70,100)
LIG(60,103,62,100)
LIG(62,103,64,100)
LIG(64,103,66,100)
LIG(66,103,68,100)
FSYM
SYM  #vdd
BB(60,5,70,15)
TITLE 70 11  #vdd_HV
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0,r)
VIS 4
PIN(65,15,0.000,0.000)p
LIG(65,15,65,10)
LIG(65,10,60,10)
LIG(60,10,65,5)
LIG(65,5,70,10)
LIG(70,10,65,10)
FSYM
SYM  #button2
BB(16,51,25,59)
TITLE 20 55  #button
MODEL 59
PROP                                                                                                                                    
REC(17,52,6,6,r)
VIS 1
PIN(25,55,0.000,0.000)Clock1
LIG(24,55,25,55)
LIG(16,51,16,59)
LIG(24,51,16,51)
LIG(24,59,24,51)
LIG(16,59,24,59)
LIG(17,52,17,58)
LIG(23,52,17,52)
LIG(23,58,23,52)
LIG(17,58,23,58)
FSYM
SYM  #pmos
BB(85,35,105,55)
TITLE 90 40  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(55,145,0,0,r)
VIS 0
PIN(85,35,0.000,0.000)source
PIN(95,55,0.000,0.000)gate
PIN(105,35,7.000,1.050)drain
LIG(95,55,95,49)
LIG(95,47,95,47)
LIG(89,45,101,45)
LIG(89,43,101,43)
LIG(101,35,101,43)
LIG(105,35,101,35)
LIG(89,35,89,43)
LIG(85,35,89,35)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(85,55,105,75)
TITLE 100 70  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(170,-40,0,0,r)
VIS 0
PIN(85,75,0.000,0.000)source
PIN(95,55,0.000,0.000)gate
PIN(105,75,7.000,1.050)drain
LIG(95,65,95,55)
LIG(101,65,89,65)
LIG(101,67,89,67)
LIG(89,75,89,67)
LIG(85,75,89,75)
LIG(101,75,101,67)
LIG(105,75,101,75)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(105,37,115,45)
TITLE 109 42  #vss
MODEL 0
PROP                                                                                                                                    
REC(0,0,0,0,r)
VIS 0
PIN(110,35,0.000,0.000).
LIG(110,35,110,40)
LIG(105,40,115,40)
LIG(105,43,107,40)
LIG(107,43,109,40)
LIG(109,43,111,40)
LIG(111,43,113,40)
FSYM
SYM  #vdd
BB(105,65,115,75)
TITLE 108 71  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0,r)
VIS 0
PIN(110,75,0.000,0.000).
LIG(110,75,110,70)
LIG(110,70,105,70)
LIG(105,70,110,65)
LIG(110,65,115,70)
LIG(115,70,110,70)
FSYM
SYM  #Arrow
BB(45,-68,55,-62)
TITLE 45 -73  #0
MODEL 935
PROP                                                                                                                                   
REC(165,0,0,0, )
VIS 4
PIN(45,-65,0.000,0.000)in
LIG(45,-65,55,-65)
LIG(53,-67,55,-65)
LIG(53,-63,55,-65)
FSYM
SYM  #Arrow
BB(-20,177,-10,183)
TITLE -20 172  #Inv_Out
MODEL 935
PROP                                                                                                                                   
REC(-130,0,0,0, )
VIS 4
PIN(-20,180,0.000,0.000)in
LIG(-20,180,-10,180)
LIG(-12,178,-10,180)
LIG(-12,182,-10,180)
FSYM
SYM  #trigger
BB(-80,110,-45,130)
TITLE -65 120  #1
MODEL 101
OPTION 3
PROP                                                                                                                                    
REC(-25,10,0,0,)
VIS 0
PIN(-80,120,0.000,0.000)in
PIN(-45,120,0.150,0.000)out
LIG(-80,120,-70,120)
LIG(-70,110,-70,130)
LIG(-70,110,-55,120)
LIG(-70,130,-55,120)
LIG(-53,120,-53,120)
LIG(-51,120,-45,120)
LIG(-69,123,-66,123)
LIG(-68,123,-65,117)
LIG(-66,123,-63,117)
LIG(-65,117,-62,117)
VLG    not not1(out,in);
FSYM
SYM  #Arrow
BB(50,127,60,133)
TITLE 50 120  #Vin_HV
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0,)
VIS 4
PIN(50,130,0.000,0.000)in
LIG(50,130,60,130)
LIG(58,128,60,130)
LIG(58,132,60,130)
FSYM
SYM  #Arrow
BB(130,127,140,133)
TITLE 155 160  #Arrow
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0,)
VIS 0
PIN(130,130,0.000,0.000)in
LIG(130,130,140,130)
LIG(138,128,140,130)
LIG(138,132,140,130)
FSYM
SYM  #inv
BB(95,120,130,140)
TITLE 106 130  #LV
MODEL 101
PROP                                                                                                                                    
REC(-5,-5,0,0,)
VIS 4
PIN(95,130,0.000,0.000)in
PIN(130,130,0.030,0.070)out
LIG(95,130,105,130)
LIG(105,120,105,140)
LIG(105,120,120,130)
LIG(105,140,120,130)
LIG(122,130,122,130)
LIG(124,130,130,130)
VLG  not not1(out,in);
FSYM
SYM  #trigger
BB(60,120,95,140)
TITLE 75 130  #1
MODEL 101
PROP                                                                                                                                    
REC(115,20,0,0,)
VIS 0
PIN(60,130,0.000,0.000)in
PIN(95,130,0.120,0.070)out
LIG(60,130,70,130)
LIG(70,120,70,140)
LIG(70,120,85,130)
LIG(70,140,85,130)
LIG(87,130,87,130)
LIG(89,130,95,130)
LIG(71,133,74,133)
LIG(72,133,75,127)
LIG(74,133,77,127)
LIG(75,127,78,127)
VLG    not not1(out,in);
FSYM
SYM  #Arrow
BB(-90,177,-80,183)
TITLE -90 172  #Clock1+noise
MODEL 935
PROP                                                                                                                                   
REC(-140,0,0,0, )
VIS 4
PIN(-90,180,0.000,0.000)in
LIG(-90,180,-80,180)
LIG(-82,178,-80,180)
LIG(-82,182,-80,180)
FSYM
SYM  #inv
BB(-60,170,-25,190)
TITLE -45 180  #~
MODEL 101
OPTION 3
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(-60,180,0.000,0.000)in
PIN(-25,180,0.060,0.070)out
LIG(-60,180,-50,180)
LIG(-50,170,-50,190)
LIG(-50,170,-35,180)
LIG(-50,190,-35,180)
LIG(-33,180,-33,180)
LIG(-31,180,-25,180)
VLG  not not1(out,in);
FSYM
SYM  #trigger
BB(60,170,95,190)
TITLE 75 180  #1
MODEL 101
OPTION 3
PROP                                                                                                                                    
REC(115,70,0,0,)
VIS 0
PIN(60,180,0.000,0.000)in
PIN(95,180,0.150,0.070)out
LIG(60,180,70,180)
LIG(70,170,70,190)
LIG(70,170,85,180)
LIG(70,190,85,180)
LIG(87,180,87,180)
LIG(89,180,95,180)
LIG(71,183,74,183)
LIG(72,183,75,177)
LIG(74,183,77,177)
LIG(75,177,78,177)
VLG  not not1(out,in);
FSYM
SYM  #Arrow
BB(30,177,40,183)
TITLE 30 172  #Clock1+noise
MODEL 935
PROP                                                                                                                                   
REC(-20,0,0,0, )
VIS 4
PIN(30,180,0.000,0.000)in
LIG(30,180,40,180)
LIG(38,178,40,180)
LIG(38,182,40,180)
FSYM
SYM  #Arrow
BB(100,177,110,183)
TITLE 100 172  #Trigger_Out
MODEL 935
PROP                                                                                                                                   
REC(-10,0,0,0, )
VIS 4
PIN(100,180,0.000,0.000)in
LIG(100,180,110,180)
LIG(108,178,110,180)
LIG(108,182,110,180)
FSYM
SYM  #vdd
BB(-35,60,-25,70)
TITLE -32 66  #vdd
MODEL 1
PROP                                                                                                                                    
REC(-140,-5,0,0,r)
VIS 0
PIN(-30,70,0.000,0.000).
LIG(-30,70,-30,65)
LIG(-30,65,-35,65)
LIG(-35,65,-30,60)
LIG(-30,60,-25,65)
LIG(-25,65,-30,65)
FSYM
SYM  #vss
BB(-35,32,-25,40)
TITLE -31 37  #vss
MODEL 0
PROP                                                                                                                                    
REC(-140,-5,0,0,r)
VIS 0
PIN(-30,30,0.000,0.000).
LIG(-30,30,-30,35)
LIG(-35,35,-25,35)
LIG(-35,38,-33,35)
LIG(-33,38,-31,35)
LIG(-31,38,-29,35)
LIG(-29,38,-27,35)
FSYM
SYM  #nmos
BB(-55,50,-35,70)
TITLE -40 65  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(30,-45,0,0,r)
VIS 0
PIN(-55,70,0.000,0.000)source
PIN(-45,50,0.000,0.000)gate
PIN(-35,70,7.000,1.050)drain
LIG(-45,60,-45,50)
LIG(-39,60,-51,60)
LIG(-39,62,-51,62)
LIG(-51,70,-51,62)
LIG(-55,70,-51,70)
LIG(-39,70,-39,62)
LIG(-35,70,-39,70)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-55,30,-35,50)
TITLE -50 35  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(-85,140,0,0,r)
VIS 0
PIN(-55,30,0.000,0.000)source
PIN(-45,50,0.000,0.000)gate
PIN(-35,30,7.000,1.050)drain
LIG(-45,50,-45,44)
LIG(-45,42,-45,42)
LIG(-51,40,-39,40)
LIG(-51,38,-39,38)
LIG(-39,30,-39,38)
LIG(-35,30,-39,30)
LIG(-51,30,-51,38)
LIG(-55,30,-51,30)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #button2c
BB(-129,46,-120,54)
TITLE -125 50  #button
MODEL 59
PROP                                                                                                                                    
REC(-128,47,6,6,r)
VIS 1
PIN(-120,50,0.000,0.000)Clock1
LIG(-121,50,-120,50)
LIG(-129,46,-129,54)
LIG(-121,46,-129,46)
LIG(-121,54,-121,46)
LIG(-129,54,-121,54)
LIG(-128,47,-128,53)
LIG(-122,47,-128,47)
LIG(-122,53,-122,47)
LIG(-128,53,-122,53)
FSYM
SYM  #vdd
BB(-80,0,-70,10)
TITLE -70 6  #vdd_HV
MODEL 1
PROP                                                                                                                                    
REC(-140,-5,0,0,r)
VIS 4
PIN(-75,10,0.000,0.000)p
LIG(-75,10,-75,5)
LIG(-75,5,-80,5)
LIG(-80,5,-75,0)
LIG(-75,0,-70,5)
LIG(-70,5,-75,5)
FSYM
SYM  #vss
BB(-80,92,-70,100)
TITLE -76 97  #vss
MODEL 0
PROP                                                                                                                                    
REC(-140,-5,0,0,r)
VIS 0
PIN(-75,90,0.000,0.000).
LIG(-75,90,-75,95)
LIG(-80,95,-70,95)
LIG(-80,98,-78,95)
LIG(-78,98,-76,95)
LIG(-76,98,-74,95)
LIG(-74,98,-72,95)
FSYM
SYM  #nmos
BB(-95,70,-75,90)
TITLE -80 75  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(-140,-5,0,0,r)
VIS 0
PIN(-75,90,0.000,0.000)source
PIN(-95,80,0.000,0.000)gate
PIN(-75,70,7.000,0.140)drain
LIG(-85,80,-95,80)
LIG(-85,74,-85,86)
LIG(-83,74,-83,86)
LIG(-75,86,-83,86)
LIG(-75,90,-75,86)
LIG(-75,74,-83,74)
LIG(-75,70,-75,74)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-95,50,-75,70)
TITLE -80 55  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(-140,-5,0,0,r)
VIS 0
PIN(-75,70,0.000,0.000)source
PIN(-95,60,0.000,0.000)gate
PIN(-75,50,7.000,0.280)drain
LIG(-85,60,-95,60)
LIG(-85,54,-85,66)
LIG(-83,54,-83,66)
LIG(-75,66,-83,66)
LIG(-75,70,-75,66)
LIG(-75,54,-83,54)
LIG(-75,50,-75,54)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-95,30,-75,50)
TITLE -80 35  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(-140,-5,0,0,r)
VIS 0
PIN(-75,30,0.000,0.000)source
PIN(-95,40,0.000,0.000)gate
PIN(-75,50,7.000,0.280)drain
LIG(-95,40,-89,40)
LIG(-87,40,-87,40)
LIG(-85,34,-85,46)
LIG(-83,34,-83,46)
LIG(-75,46,-83,46)
LIG(-75,50,-75,46)
LIG(-75,34,-83,34)
LIG(-75,30,-75,34)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-95,10,-75,30)
TITLE -80 15  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(-140,-5,0,0,r)
VIS 0
PIN(-75,10,0.000,0.000)source
PIN(-95,20,0.000,0.000)gate
PIN(-75,30,7.000,0.140)drain
LIG(-95,20,-89,20)
LIG(-87,20,-87,20)
LIG(-85,14,-85,26)
LIG(-83,14,-83,26)
LIG(-75,26,-83,26)
LIG(-75,30,-75,26)
LIG(-75,14,-83,14)
LIG(-75,10,-75,14)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #Arrow
BB(-20,47,-10,53)
TITLE 5 80  #Arrow
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0,)
VIS 0
PIN(-20,50,0.000,0.000)in
LIG(-20,50,-10,50)
LIG(-12,48,-10,50)
LIG(-12,52,-10,50)
FSYM
SYM  #Arrow
BB(145,-68,155,-62)
TITLE 150 -75  #Trigger_Out
MODEL 935
PROP                                                                                                                                    
REC(165,-115,0,0,)
VIS 4
PIN(145,-65,0.000,0.000)in
LIG(145,-65,155,-65)
LIG(153,-67,155,-65)
LIG(153,-63,155,-65)
FSYM
SYM  #pmos
BB(-95,-105,-75,-85)
TITLE -80 -100  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(-140,-120,0,0,r)
VIS 0
PIN(-75,-105,0.000,0.000)source
PIN(-95,-95,0.000,0.000)gate
PIN(-75,-85,7.000,0.070)drain
LIG(-95,-95,-89,-95)
LIG(-87,-95,-87,-95)
LIG(-85,-101,-85,-89)
LIG(-83,-101,-83,-89)
LIG(-75,-89,-83,-89)
LIG(-75,-85,-75,-89)
LIG(-75,-101,-83,-101)
LIG(-75,-105,-75,-101)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-95,-85,-75,-65)
TITLE -80 -80  #pmos
MODEL 902
PROP   2.0u 0.25u                                                                                                                                
REC(-140,-120,0,0,r)
VIS 0
PIN(-75,-85,0.000,0.000)source
PIN(-95,-75,0.000,0.000)gate
PIN(-75,-65,7.000,0.140)drain
LIG(-95,-75,-89,-75)
LIG(-87,-75,-87,-75)
LIG(-85,-81,-85,-69)
LIG(-83,-81,-83,-69)
LIG(-75,-69,-83,-69)
LIG(-75,-65,-75,-69)
LIG(-75,-81,-83,-81)
LIG(-75,-85,-75,-81)
VLG      pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-95,-65,-75,-45)
TITLE -80 -60  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(-140,-120,0,0,r)
VIS 0
PIN(-75,-45,0.000,0.000)source
PIN(-95,-55,0.000,0.000)gate
PIN(-75,-65,7.000,0.140)drain
LIG(-85,-55,-95,-55)
LIG(-85,-61,-85,-49)
LIG(-83,-61,-83,-49)
LIG(-75,-49,-83,-49)
LIG(-75,-45,-75,-49)
LIG(-75,-61,-83,-61)
LIG(-75,-65,-75,-61)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-95,-45,-75,-25)
TITLE -80 -40  #nmos
MODEL 901
PROP   2.0u 0.25u                                                                                                                                
REC(-140,-120,0,0,r)
VIS 0
PIN(-75,-25,0.000,0.000)source
PIN(-95,-35,0.000,0.000)gate
PIN(-75,-45,7.000,0.140)drain
LIG(-85,-35,-95,-35)
LIG(-85,-41,-85,-29)
LIG(-83,-41,-83,-29)
LIG(-75,-29,-83,-29)
LIG(-75,-25,-75,-29)
LIG(-75,-41,-83,-41)
LIG(-75,-45,-75,-41)
VLG      nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(-80,-23,-70,-15)
TITLE -76 -18  #vss
MODEL 0
PROP                                                                                                                                    
REC(-140,-120,0,0,r)
VIS 0
PIN(-75,-25,0.000,0.000).
LIG(-75,-25,-75,-20)
LIG(-80,-20,-70,-20)
LIG(-80,-17,-78,-20)
LIG(-78,-17,-76,-20)
LIG(-76,-17,-74,-20)
LIG(-74,-17,-72,-20)
FSYM
SYM  #vdd
BB(-80,-115,-70,-105)
TITLE -70 -109  #vdd_HV
MODEL 1
PROP                                                                                                                                    
REC(-140,-120,0,0,r)
VIS 4
PIN(-75,-105,0.000,0.000)p
LIG(-75,-105,-75,-110)
LIG(-75,-110,-80,-110)
LIG(-80,-110,-75,-115)
LIG(-75,-115,-70,-110)
LIG(-70,-110,-75,-110)
FSYM
SYM  #Arrow
BB(-60,-88,-50,-82)
TITLE -60 -93  #1
MODEL 935
PROP                                                                                                                                   
REC(60,-20,0,0, )
VIS 4
PIN(-60,-85,0.000,0.000)in
LIG(-60,-85,-50,-85)
LIG(-52,-87,-50,-85)
LIG(-52,-83,-50,-85)
FSYM
SYM  #Arrow
BB(-120,-68,-110,-62)
TITLE -120 -73  #1
MODEL 935
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 4
PIN(-120,-65,0.000,0.000)in
LIG(-120,-65,-110,-65)
LIG(-112,-67,-110,-65)
LIG(-112,-63,-110,-65)
FSYM
SYM  #Arrow
BB(-20,-68,-10,-62)
TITLE -15 -75  #Trigger_Out
MODEL 935
PROP                                                                                                                                    
REC(0,-115,0,0,)
VIS 4
PIN(-20,-65,0.000,0.000)in
LIG(-20,-65,-10,-65)
LIG(-12,-67,-10,-65)
LIG(-12,-63,-10,-65)
FSYM
CNC(120 55)
CNC(140 55)
CNC(70 -65)
CNC(45 55)
CNC(-95 50)
CNC(-95 -65)
LIG(120,55,120,30)
LIG(70,-65,70,-35)
LIG(45,55,45,85)
LIG(140,15,140,20)
LIG(90,-65,145,-65)
LIG(130,-85,130,-55)
LIG(-95,-65,-95,-35)
LIG(90,-85,130,-85)
LIG(140,55,165,55)
LIG(140,55,140,70)
LIG(-30,-105,-30,-95)
LIG(70,-65,45,-65)
LIG(70,-95,70,-65)
LIG(140,40,140,55)
LIG(140,90,140,95)
LIG(45,25,45,55)
LIG(45,55,25,55)
LIG(65,55,120,55)
LIG(105,35,110,35)
LIG(105,75,110,75)
LIG(65,35,85,35)
LIG(65,75,85,75)
LIG(120,80,120,55)
LIG(-90,180,-60,180)
LIG(-25,180,-20,180)
LIG(95,180,100,180)
LIG(30,180,60,180)
LIG(-95,50,-95,80)
LIG(-75,70,-55,70)
LIG(-75,30,-55,30)
LIG(-35,70,-30,70)
LIG(-35,30,-30,30)
LIG(-75,50,-20,50)
LIG(-95,50,-120,50)
LIG(-95,20,-95,50)
LIG(-95,-95,-95,-65)
LIG(-95,-65,-120,-65)
LIG(-75,-65,-20,-65)
LIG(-75,-45,-30,-45)
LIG(-30,-75,-30,-45)
LIG(130,-35,130,-25)
TEXT -100 101  #The trigger is an inverter with high noise margin
TEXT -68 -40  #Vc increased by the VDD tie
TEXT -56 19  #Feedback to lower Vc
TEXT 155 71  #This inverter works at low voltage
TEXT 109 -96  #Vc decreased by the VSS tie
TEXT 62 149  #Trigger connected to an inverter
TEXT 138 124  #Vout_LV
TEXT -68 75  #Feedback to rise Vc
TEXT -11 44  #Trigger_Out
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\trigger.sch
