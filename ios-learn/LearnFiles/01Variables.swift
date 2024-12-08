//
//  Untitled.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//

// Swift'te değişkenlerin tanımı, özellikleri ve kullanımı
func demonstrateVariables() {
    // 1. Değişken Tanımı
    // Swift'te değişkenler, bir değer depolamak için kullanılır.
    // Değişkenler `var` anahtar kelimesiyle tanımlanır ve değerleri değiştirilebilir.
    var name = "John" // String türünde bir değişken
    print("Başlangıç adı: \(name)") // John

    // 2. Değişkenin Değerini Değiştirme
    // `var` ile tanımlanan değişkenlerin değeri sonradan değiştirilebilir.
    name = "Alice"
    print("Güncellenmiş ad: \(name)") // Alice

    // 3. Sabit Tanımı
    // Eğer bir değerin değişmesini istemiyorsak, `let` anahtar kelimesiyle sabit (constant) tanımlayabiliriz.
    let birthYear = 1990 // Bu sabit bir değerdir ve değiştirilemez.
    print("Doğum yılı: \(birthYear)") // 1990

    // Sabit bir değeri değiştirmeye çalışırsak hata alırız:
    // birthYear = 2000 // HATA: Sabit bir değerin değeri değiştirilemez.

    // 4. Tür Belirterek Değişken Tanımlama
    // Swift, değişkenin türünü otomatik olarak çıkarabilir (type inference).
    // Ancak, türü açıkça belirtmek istiyorsak, şu şekilde tanımlayabiliriz:
    var age: Int = 25 // Int türünde bir değişken
    print("Yaş: \(age)") // 25

    // 5. Farklı Türlerde Değişkenler
    // Swift'te birçok farklı türde değişken tanımlayabiliriz:
    var height: Double = 1.75 // Double türünde bir değişken (ondalıklı sayı)
    var isStudent: Bool = true // Bool türünde bir değişken (doğru/yanlış)
    var grade: Character = "A" // Character türünde bir değişken (tek bir karakter)
    var message: String = "Merhaba, Swift!" // String türünde bir değişken (metin)

    // Değişkenlerin değerlerini yazdıralım:
    print("Boy: \(height)") // 1.75
    print("Öğrenci mi?: \(isStudent)") // true
    print("Not: \(grade)") // A
    print("Mesaj: \(message)") // Merhaba, Swift!

    // 6. Değişkenlerin Varsayılan Değeri
    // Swift'te bir değişken tanımlandığında, ona bir başlangıç değeri atanmalıdır.
    // Aksi takdirde hata alırız:
    // var uninitializedVariable: Int // HATA: Başlangıç değeri atanmadı.

    // 7. Çoklu Değişken Tanımlama
    // Aynı türde birden fazla değişkeni tek bir satırda tanımlayabiliriz:
    var x = 10, y = 20, z = 30
    print("x: \(x), y: \(y), z: \(z)") // x: 10, y: 20, z: 30

    // 8. Değişkenlerin Tür Dönüşümü
    // Farklı türdeki değişkenler arasında dönüşüm yapabiliriz.
    let intNumber: Int = 42
    let doubleNumber: Double = Double(intNumber) // Int -> Double dönüşümü
    print("Double sayı: \(doubleNumber)") // 42.0

    let stringNumber: String = String(intNumber) // Int -> String dönüşümü
    print("String sayı: \(stringNumber)") // "42"

    // 9. Değişkenlerin Kullanım Alanları
    // Değişkenler, bir programda verileri depolamak, işlemek ve manipüle etmek için kullanılır.
    var radius: Double = 5.0
    let pi: Double = 3.14159
    let area = pi * radius * radius // Dairenin alanını hesaplama
    print("Dairenin alanı: \(area)") // 78.53975

    // 10. Değişkenlerin İsimlendirme Kuralları
    // Değişken isimleri harf veya alt çizgi (_) ile başlamalıdır.
    // Rakamla başlayamaz ve özel karakter içeremez.
    var _privateVariable = "Bu geçerli bir değişken."
    var variable123 = "Bu da geçerli."
    // var 123variable = "Bu geçersiz." // HATA: Rakamla başlayamaz.
    print(_privateVariable) // Bu geçerli bir değişken.
    print(variable123) // Bu da geçerli.
}

