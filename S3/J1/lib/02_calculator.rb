def add (a,b)
    return a+b
end

def subtract (a,b)
    return a-b
end

def sum (tab)
    result = 0
    tab.each do |item|
        result += item
    end
    return result
end

def multiply (a,b)
    return a*b
end

def power (a,b)
    return a**b
end

def factorial(a)
    result = a
    if a - 1 <=0
        then return 1
        else
            for n in 1..(a-1)
                result = result * (a-n)
            end
            return result
    end
end