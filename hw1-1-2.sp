.prot
.lib "cic018.l" TT
.temp 25
.unprot
.option post
.option captab
.param l=0.18u
.param w=3*l

* Supply

V1 VDD GND DC=1.8V
I1 I1 GND DC=30u

* MOSFET

MP I1 I1 VDD VDD n_18 w=w l=l m=1

 * Analysis

.op
.dc l 0.18u 10u 0.01u

.probe Id=LX4(MP)
.probe Cg=LX18(MP)

.probe Vth=LV9(MP)
.probe gm=LX7(MP)
.probe gds=LX8(MP)
.probe Vdsat=LV10(MP)
.probe IGain=par('gm/gds')
.probe powerEff=par('gm/Id')
.probe Speed=par('gm/Cg')

* Alter

.alter
.lib "cic018.l" SS

.alter
.lib "cic018.l" FF
.END
