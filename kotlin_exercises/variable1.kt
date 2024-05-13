fun commandCheck(command: String): Boolean {
    return command == "1" || command == "2" || command == "3" || command == "4"
}

fun main() {
    println("Enter the first number: ")
    val firstNum = readLine()
    if (firstNum == null) {
        println("You have to enter a number")
        return
    }
    val firstNumber = firstNum.toInt()

    println("Enter the second number: ")
    val secondNum = readLine()
    if (secondNum == null) {
        println("You have to enter a number")
        return
    }
    val secondNumber = secondNum.toInt()

    println("Choose operation: ")
    println("1 for Addition")
    println("2 for Subtraction")
    println("3 for Multiplication")
    println("4 for Division")
    val command = readLine()

    val answerString = when {
        command == "1" -> firstNumber + secondNumber
        command == "2" -> firstNumber - secondNumber
        command == "3" -> firstNumber * secondNumber
        command == "4" -> firstNumber / secondNumber
        else -> "Please try again"
    }

    println(answerString)
}