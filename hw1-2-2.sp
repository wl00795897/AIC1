.prot
.lib "cic018.l" TT
.temp 25
.unprot
.option post
.option captab
.param l=1.8u
.param w=3*l

* Supply

V1 VDD GND DC=1.8V

* MOSFET

MP VDD VG GND VDD n_18 w=w l=l m=1

 * Analysis

.op
.dc VG 0 1.8V 0.01V sweep l 1.8u 10u 1.8u

.probe Id=LX4(MP)

.END