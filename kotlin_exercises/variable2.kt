fun main() {
    val distance = 60.0 // Assuming the distance is in kilometers
    val originalUnit = "kilometers"
    val conversionFactor = 0.621371 // 1 kilometer is approximately 0.621371 miles
    val convertedDistance = distance * conversionFactor
    val targetUnit = "miles"

    println("$distance $originalUnit is equal to $convertedDistance $targetUnit")
}
