using ASCE7

#mean roof height 
h = 14.0 + 2/12 + 2/12 * 60.0 / 2   

Kz = 0.90 #Table 26.10-1, Exposure C
Kzt = 1.0
Ke = 1.0
V = 107.0 #Figure 26.5-1B for Ohio 

qh = ASCE7.v2022.eq26_10__1(Kz, Kzt, Ke, V)

Kd = 0.85 #Table 26.6-1, components and cladding 

#Figure 30.3-2A
GCp = Dict([("1'+", 0.2), ("1+", 0.2), ("2+", 0.2), ("3+", 0.2), ("1'-", -0.9),("1-", -1.3), ("2-", -1.8), ("3-", -2.15)])

#Table 26.13-1, enclosed building
#apply positive pressure to all internal surfaces, or a negative pressure to all internal surfaces
GCpi = Dict([("+", 0.18), ("-", -0.18)])


p = ASCE7.v2022.eq30_3__1(qh.value, Kd, GCp["3-"], GCpi["+"])


### ASCE 7-10

Kz = 0.90 #Table 30.3-1, Exposure C
Kzt = 1.0
Ke = 1.0
V = 115.0 #Figure 26.5-1B for Ohio 

qh = eq26_10__1(Kz, Kzt, Kd, V)

Kd = 0.85 #Table 26.6-1, components and cladding 

#Figure 30.4-2A
GCp = Dict([("1+", 0.2), ("2+", 0.2), ("3+", 0.2), ("1-", -0.9), ("2-", -1.1), ("3-", -1.1)])

#Table 26.11-1, enclosed building
#apply positive pressure to all internal surfaces, or a negative pressure to all internal surfaces
GCpi = Dict([("+", 0.18), ("-", -0.18)])

