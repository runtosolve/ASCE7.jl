module v2016


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