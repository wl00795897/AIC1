.prot
.lib "cic018.l" TT
.temp 25
.unprot
.option post
.option captab
.param l=1.8u
.param w=3*l
.param VG=0.7V
.param VS=0V
.param VB=0V

* Supply

V1 VDD GND DC=1.8V

* MOSFET

MN VDD VG VS VB n_18 w=w l=l m=1

 * Analysis

.op

.probe Id=LX4(MN)

.END