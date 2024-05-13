fun main() {
    val passwordLength = 8
    val password = generateRandomPassword(passwordLength)
    println("Generated Password: $password")
}

fun generateRandomPassword(length: Int): String {
    val chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^*"
    var password = ""
    val random = java.util.Random()

    for (i in 0 until length) {
        val index = random.nextInt(chars.length)
        password = password + (chars[index])
    }

    return password
}
