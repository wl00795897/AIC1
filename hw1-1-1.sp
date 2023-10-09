.prot
.lib "cic018.l" TT
.temp 25
.unprot
.option post
.option captab
.param l=0.18u
.param w=3*l

* Supply

V1 V1 GND DC=1.8V
I1 V1 VDD DC=30u

* MOSFET

MN VDD VDD GND GND n_18 w=w l=l m=1

 * Analysis

.op
.sweep l 0.18u 10u 0.01u

.probe Id=LX4(MN)
.probe Cg=LX18(MN)

.probe Vth=LV9(MN)
.probe gm=LX7(MN)
.probe gds=LX8(MN)
.probe Vdsat=LV10(MN)
.probe IGain=par('gm/gds')
.probe powerEff=par('gm/Id')
.probe Speed=par('gm/Cg')

* Alter

.alter
.lib "cic018.l" SS

.alter
.lib "cic018.l" FF
.END
