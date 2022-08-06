currentNumber = 0

function add(numbers)
    for n in numbers 
        currentNumber += n
    end
end

function remove(numbers)
    for n in numbers 
        currentNumber -= n
    end
end