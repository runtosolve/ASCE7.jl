module v2010

function eq26_10__1(Kz, Kzt, Kd, V)

    reference = "Eq.26.10-1"
    variable = "q_h"
    qh = 0.00256 * Kz * Kzt * Kd * V^2

    equation = (reference=reference, variable=variable, value=qh)

    return equation

end


function eq30_4__1(qh, GCp, GCpi) 
    
    reference = "Eq.30.4-1"
    variable = "p"
    p = qh * (GCp - GCpi)

    equation = (reference=reference, variable=variable, value=p)

    return equation

end


function Table30_7__2(building_width, building_length, h)

    a = minimum([0.1*minimum([building_width, building_length]), 0.4*h])

    if a < 0.04 * minimum([building_width, building_length])
        a = 0.04 * minimum([building_width, building_length])
    end

    #gable roof, enclosed buildings, h<=160ft
    wind_pressure_zones = [(x=[0.0, a], y=[0.0, a], zone = 3),
    (x=[building_length-a, building_length], y=[building_width/2-a, building_width/2], zone = 3),
    (x=[0.0, a], y=[building_width/2-a, building_width/2], zone = 3),
    (x=[building_length - a, building_length], y = [0.0, a], zone = 3),
    (x=[a, building_length - a], y = [0.0, a], zone = 2),
    (x=[0.0, a], y=[a, building_width/2-a], zone = 2),
    (x=[building_length-a, building_length], y=[a, building_width/2-a], zone = 2),
    (x=[a, building_length - a], y = [building_width/2-a, building_width/2], zone = 2),
    (x=[a, building_length - a], y = [a, building_width/2-a], zone = 3),

    (x=[0.0, a], y=building_width .-[0.0, a], zone = 3),
    (x=[building_length-a, building_length], y=building_width .-[building_width/2-a, building_width/2], zone = 3),
    (x=[0.0, a], y=building_width .-[building_width/2-a, building_width/2], zone = 3),
    (x=[building_length - a, building_length], y = building_width .-[0.0, a], zone = 3),
    (x=[a, building_length - a], y = building_width .-[0.0, a], zone = 2),
    (x=[0.0, a], y=building_width .-[a, building_width/2-a], zone = 2),
    (x=[building_length-a, building_length], y=building_width .-[a, building_width/2-a], zone = 2),
    (x=[a, building_length - a], y = building_width .-[building_width/2-a, building_width/2], zone = 2),
    (x=[a, building_length - a], y = building_width .-[a, building_width/2-a], zone = 3)]

    return a, wind_pressure_zones

end


end #module