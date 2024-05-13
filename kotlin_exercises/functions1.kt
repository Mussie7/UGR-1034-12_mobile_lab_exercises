// fun analyzeString(inputString: String) {

//     for (char in inputString) {
//         if inputString.split(" ")
//     }
// }

fun main() {
    println("Enter a string: ")
    val inputString = readln()
    val mainString = inputString.toString()
    
    val words = mainString.split(" ")
    println("Word count: ${words.size}")

    var uppercaseCount = 0
    var vowelsCount = 0
    for (char in mainString){
        if (char.isUpperCase()) {
            uppercaseCount ++
        }

        if (char.lowercaseChar() in "aeiou"){
            vowelsCount ++
        }
    }

    println("Uppercase letters count: $uppercaseCount")
    println("Vowels count: $vowelsCount")
}