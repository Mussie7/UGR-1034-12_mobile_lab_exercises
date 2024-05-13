fun findMax(nums: List<Int>): Int {
    var maxNumber = nums[0]
    for (num in nums){
        if (num > maxNumber){
            maxNumber = num
        }
    }

    return maxNumber
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    val result = mutableListOf<Int>()
    for (num in numbers) {
        if (num % 2 == 0) {
            result.add(num)
        }
    }
    return result
}

fun calculateAverage(numbers: List<Double>): Double {
    if (numbers.isEmpty()) return 0.0
    var sum = 0.0
    for (num in numbers) {
        sum += num
    }
    return sum / numbers.size
}
