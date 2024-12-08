import math_h
//
//  08MathematicalOperators.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//
// Swift'te matematiksel operatörleri ve kullanımı
func demonstrateMathematicalOperators() {
    // 1. Matematiksel Operatörler Tanımı
    // Matematiksel operatörler, sayılar üzerinde temel aritmetik işlemleri yapmak için kullanılır.
    // Swift'teki temel matematiksel operatörler şunlardır:
    // - Toplama: `+`
    // - Çıkarma: `-`
    // - Çarpma: `*`
    // - Bölme: `/`
    // - Mod Alma (Kalan): `%`

    // 2. Toplama Operatörü: `+`
    let a = 10
    let b = 5
    let sum = a + b // İki sayıyı toplar
    print("Toplama: \(a) + \(b) = \(sum)") // 10 + 5 = 15

    // 3. Çıkarma Operatörü: `-`
    let difference = a - b // İki sayı arasındaki farkı alır
    print("Çıkarma: \(a) - \(b) = \(difference)") // 10 - 5 = 5

    // 4. Çarpma Operatörü: `*`
    let product = a * b // İki sayıyı çarpar
    print("Çarpma: \(a) * \(b) = \(product)") // 10 * 5 = 50

    // 5. Bölme Operatörü: `/`
    let quotient = a / b // İki sayıyı böler
    print("Bölme: \(a) / \(b) = \(quotient)") // 10 / 5 = 2

    // 6. Mod Alma (Kalan) Operatörü: `%`
    let remainder = a % b // a'nın b'ye bölümünden kalan
    print("Mod Alma: \(a) % \(b) = \(remainder)") // 10 % 5 = 0

    // 7. Matematiksel Operatörlerle Değişken Güncelleme
    var number = 20
    number += 10 // number = number + 10
    print("Güncellenmiş Değer (+=): \(number)") // 30

    number -= 5 // number = number - 5
    print("Güncellenmiş Değer (-=): \(number)") // 25

    number *= 2 // number = number * 2
    print("Güncellenmiş Değer (*=): \(number)") // 50

    number /= 5 // number = number / 5
    print("Güncellenmiş Değer (/=): \(number)") // 10

    number %= 3 // number = number % 3
    print("Güncellenmiş Değer (%=): \(number)") // 1

    // 8. Ondalıklı Sayılarla İşlem Yapma
    let x = 7.5
    let y = 2.0
    let floatSum = x + y
    let floatDifference = x - y
    let floatProduct = x * y
    let floatQuotient = x / y
    print("Ondalıklı Toplama: \(x) + \(y) = \(floatSum)") // 7.5 + 2.0 = 9.5
    print("Ondalıklı Çıkarma: \(x) - \(y) = \(floatDifference)") // 7.5 - 2.0 = 5.5
    print("Ondalıklı Çarpma: \(x) * \(y) = \(floatProduct)") // 7.5 * 2.0 = 15.0
    print("Ondalıklı Bölme: \(x) / \(y) = \(floatQuotient)") // 7.5 / 2.0 = 3.75

    // 9. Matematiksel Fonksiyonlar (Foundation Kütüphanesi)
    // Swift'te daha karmaşık matematiksel işlemler için Foundation kütüphanesi kullanılır.
    let base = 2.0
    let exponent = 3.0
    let power = pow(base, exponent) // Üs alma (2^3)
    print("Üs Alma: \(base) üzeri \(exponent) = \(power)") // 2.0 üzeri 3.0 = 8.0

    let squareRoot = sqrt(16.0) // Karekök alma
    print("Karekök: √16 = \(squareRoot)") // √16 = 4.0

    let absoluteValue = abs(-10) // Mutlak değer
    print("Mutlak Değer: |-10| = \(absoluteValue)") // |-10| = 10

    let roundedValue = round(3.7) // Yuvarlama
    print("Yuvarlama: 3.7 ≈ \(roundedValue)") // 3.7 ≈ 4.0

    let floorValue = floor(3.7) // Aşağı yuvarlama
    print("Aşağı Yuvarlama: 3.7 → \(floorValue)") // 3.7 → 3.0

    let ceilValue = ceil(3.2) // Yukarı yuvarlama
    print("Yukarı Yuvarlama: 3.2 → \(ceilValue)") // 3.2 → 4.0

    // 10. Matematiksel Operatörlerle Döngü Kullanımı
    // Matematiksel operatörler döngülerde kullanılabilir.
    print("Döngü ile Matematiksel İşlem:")
    for i in 1...5 {
        let square = i * i // Sayının karesi
        print("\(i) sayısının karesi: \(square)")
    }
}
