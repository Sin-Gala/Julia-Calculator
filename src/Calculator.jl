clear() = run(`cmd /c cls`)

# Basic calculator in console test
currentNumber = 0

function waitingForInput()
    clear()
    println("Please enter a number \n")
    println("Enter blank to end this program\n")

    command = readline()

    if (isempty(command))
        exit()
    elseif (tryparse(Int, command) !== nothing)
        add(parse(Int, command))
    else
        waitingForInput()
    end
end

#region CALCULUS
function add(number)
    currentNumber += number

    println("Current Number: " + currentNumber)

    waitingForInput()
end

function remove(numbers)
    for n in numbers 
        currentNumber -= n
    end
end
#endregion

waitingForInput()