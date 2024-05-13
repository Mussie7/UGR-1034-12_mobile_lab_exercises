fun main() {
    val originalPrice = 180.0 // Original price of the product
    val discountPercentage = 0.6 // Discount percentage (60%)
    val threshold = 0.5 // Threshold value for discount (50%)
    var finalPrice: Double

    if (discountPercentage > threshold) {
        println("The discount is too high. Will use the threshold value - ${threshold * 100}%.")
        finalPrice = originalPrice * (1 - threshold)
    } else {
        finalPrice = originalPrice * (1 - discountPercentage)
    }

    println("Original Price: $$originalPrice")
    println("Discount Percentage: ${discountPercentage * 100}%")
    println("Final Price after Discount: $$finalPrice")
}
