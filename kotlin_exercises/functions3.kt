// transforms all the strings in the list into Uppercase
fun applyUppercaseTransformation(strings: List<String>): List<String> {
    return strings.map { it.uppercase() }
}

// returns the list of numbers greater than the specified threshold
fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

// sums up all the numbers in the list
fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}