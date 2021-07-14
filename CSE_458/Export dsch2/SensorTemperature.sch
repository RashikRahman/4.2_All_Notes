DSCH 2.7c
VERSION 10/18/2003 12:32:28 PM
BB(0,-30,72,50)
SYM  #Diode
BB(15,10,25,30)
TITLE 20 16  #Diode
MODEL 904
PROP                                                                                                                                    
REC(15,10,10,20,P)
VIS 1
PIN(20,10,0.000,0.000)Pplus
PIN(20,30,0.150,0.070)Nwell
LIG(20,10,20,15)
LIG(25,15,15,15)
LIG(15,15,20,25)
LIG(25,15,20,25)
LIG(20,25,20,30)
LIG(25,25,15,25)
FSYM
SYM  #vss
BB(15,42,25,50)
TITLE 19 47  #vss
MODEL 0
PROP                                                                                                                                    
REC(15,40,0,0,b)
VIS 0
PIN(20,40,0.000,0.000)vss
LIG(20,40,20,45)
LIG(15,45,25,45)
LIG(15,48,17,45)
LIG(17,48,19,45)
LIG(19,48,21,45)
LIG(21,48,23,45)
FSYM
SYM  #pmos
BB(0,-20,20,0)
TITLE 15 -15  #pmos
MODEL 902
PROP   2.0u 0.12u                                                                                                                                
REC(1,-15,19,15,r)
VIS 0
PIN(20,-20,0.000,0.000)s
PIN(0,-10,0.000,0.000)g
PIN(20,0,0.030,0.210)d
LIG(0,-10,6,-10)
LIG(8,-10,8,-10)
LIG(10,-4,10,-16)
LIG(12,-4,12,-16)
LIG(20,-16,12,-16)
LIG(20,-20,20,-16)
LIG(20,-4,12,-4)
LIG(20,0,20,-4)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #vdd
BB(15,-30,25,-20)
TITLE 18 -24  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0,)
VIS 0
PIN(20,-20,0.000,0.000)vdd
LIG(20,-20,20,-25)
LIG(20,-25,15,-25)
LIG(15,-25,20,-30)
LIG(20,-30,25,-25)
LIG(25,-25,20,-25)
FSYM
SYM  #Arrow
BB(40,-3,50,3)
TITLE 43 5  #Vref
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0,)
VIS 4
PIN(40,0,0.000,0.000)in
LIG(40,0,50,0)
LIG(48,-2,50,0)
LIG(48,2,50,0)
FSYM
SYM  #Arrow
BB(32,15,38,25)
TITLE 40 25  #Vak
MODEL 935
PROP                                                                                                                                   
REC(65,65,0,0, )
VIS 4
PIN(35,25,0.000,0.000)in
LIG(35,25,35,15)
LIG(37,17,35,15)
LIG(33,17,35,15)
FSYM
CNC(20 0)
LIG(20,30,20,40)
LIG(0,-10,0,0)
LIG(0,0,20,0)
LIG(20,0,20,10)
LIG(20,0,40,0)
TEXT 32 -18  #Temperature sensor
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\SensorTemperature.sch
