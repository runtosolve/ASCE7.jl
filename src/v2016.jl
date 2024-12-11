module v2016


function eq12_8__2(SDS, R, Ie)

    Cs = SDS / (R / Ie)

end

function eq12_8__3(SD1, T, R, Ie)

    Cs = SD1 / (T * (R / Ie))

end


function eq26_10__1(Kz, Kzt, Kd, Ke, V)

    reference = "Eq.26.10-1"
    variable = "q_h"
    qh = 0.00256 * Kz * Kzt * Kd * Ke * V^2

    equation = (reference=reference, variable=variable, value=qh)

    return equation

end


function eq30_3__1(qh, GCp, GCpi) 
    
    reference = "Eq.30.3-1"
    variable = "p"
    p = qh * (GCp - GCpi)

    equation = (reference=reference, variable=variable, value=p)

    return equation

end

end #module 