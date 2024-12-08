//
//  07ComparisonOperators.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//
// Swift'te karşılaştırma operatörlerini ve kullanımı
func demonstrateComparisonOperators() {
    // 1. Karşılaştırma Operatörleri Tanımı
    // Karşılaştırma operatörleri, iki değeri karşılaştırmak için kullanılır.
    // Sonuç her zaman bir Boolean değer (`true` veya `false`) döner.
    // Swift'teki temel karşılaştırma operatörleri şunlardır:
    // - Eşittir: `==`
    // - Eşit Değildir: `!=`
    // - Küçüktür: `<`
    // - Büyüktür: `>`
    // - Küçük Eşittir: `<=`
    // - Büyük Eşittir: `>=`

    // 2. Eşittir Operatörü: `==`
    // İki değerin eşit olup olmadığını kontrol eder.
    let a = 5
    let b = 5
    if a == b { // Eğer a ve b eşitse
        print("Eşittir: \(a) ve \(b) eşittir.") // Bu mesaj yazdırılır.
    } else {
        print("Eşittir: \(a) ve \(b) eşit değildir.")
    }

    // 3. Eşit Değildir Operatörü: `!=`
    // İki değerin eşit olmadığını kontrol eder.
    let c = 10
    if a != c { // Eğer a ve c eşit değilse
        print("Eşit Değildir: \(a) ve \(c) eşit değildir.") // Bu mesaj yazdırılır.
    } else {
        print("Eşit Değildir: \(a) ve \(c) eşittir.")
    }

    // 4. Küçüktür Operatörü: `<`
    // Soldaki değerin sağdaki değerden küçük olup olmadığını kontrol eder.
    if a < c { // Eğer a, c'den küçükse
        print("Küçüktür: \(a), \(c)'den küçüktür.") // Bu mesaj yazdırılır.
    } else {
        print("Küçüktür: \(a), \(c)'den küçük değildir.")
    }

    // 5. Büyüktür Operatörü: `>`
    // Soldaki değerin sağdaki değerden büyük olup olmadığını kontrol eder.
    if c > a { // Eğer c, a'dan büyükse
        print("Büyüktür: \(c), \(a)'dan büyüktür.") // Bu mesaj yazdırılır.
    } else {
        print("Büyüktür: \(c), \(a)'dan büyük değildir.")
    }

    // 6. Küçük Eşittir Operatörü: `<=`
    // Soldaki değerin sağdaki değerden küçük veya eşit olup olmadığını kontrol eder.
    if a <= b { // Eğer a, b'den küçük veya eşitse
        print("Küçük Eşittir: \(a), \(b)'den küçük veya eşittir.") // Bu mesaj yazdırılır.
    } else {
        print("Küçük Eşittir: \(a), \(b)'den küçük veya eşit değildir.")
    }

    // 7. Büyük Eşittir Operatörü: `>=`
    // Soldaki değerin sağdaki değerden büyük veya eşit olup olmadığını kontrol eder.
    if c >= b { // Eğer c, b'den büyük veya eşitse
        print("Büyük Eşittir: \(c), \(b)'den büyük veya eşittir.") // Bu mesaj yazdırılır.
    } else {
        print("Büyük Eşittir: \(c), \(b)'den büyük veya eşit değildir.")
    }

    // 8. Karşılaştırma Operatörleri ile String Karşılaştırma
    // Karşılaştırma operatörleri, String değerler üzerinde de çalışır.
    let name1 = "Alice"
    let name2 = "Bob"
    if name1 < name2 { // Alfabetik sıralamaya göre karşılaştırır
        print("String Karşılaştırma: \(name1), \(name2)'den önce gelir.") // Bu mesaj yazdırılır.
    } else {
        print("String Karşılaştırma: \(name1), \(name2)'den sonra gelir.")
    }

    // 9. Karşılaştırma Operatörleri ile Döngü Kullanımı
    // Karşılaştırma operatörleri döngülerde koşulları kontrol etmek için kullanılabilir.
    print("Döngü ile Karşılaştırma:")
    var counter = 1
    while counter <= 5 { // Counter 5'e eşit veya küçük olduğu sürece çalışır
        print("Sayaç: \(counter)")
        counter += 1
    }
    print("Döngü sona erdi.\n")

    // 10. Karşılaştırma Operatörleri ile Karmaşık Koşullar
    // Karşılaştırma operatörleri, mantıksal operatörlerle birlikte kullanılabilir.
    let age = 25
    let hasPermission = true
    if age >= 18 && hasPermission { // Yaş 18 veya daha büyük ve izni varsa
        print("Karmaşık Koşul: Giriş yapabilirsiniz.") // Bu mesaj yazdırılır.
    } else {
        print("Karmaşık Koşul: Giriş yapamazsınız.")
    }
}  
