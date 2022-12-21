def ftoc (fahrenheit)
    conversion = (fahrenheit - 32)/1.8
    return conversion.round
end

def ctof(celcius)
    conversion = (celcius * 1.8) + 32
    return conversion
end