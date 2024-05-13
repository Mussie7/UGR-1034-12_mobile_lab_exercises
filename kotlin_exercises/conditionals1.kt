fun main() {
    println("Enter Grade: ")
    val grade = readLine()
    val intGrade = grade!!.toInt()

    val answerString = when {
        intGrade >= 90 -> "A"
        intGrade >= 80 -> "B"
        intGrade >= 70 -> "C"
        intGrade >= 60 -> "D"
        else -> "F"
    }

    println("Your letter grade is $answerString")
}