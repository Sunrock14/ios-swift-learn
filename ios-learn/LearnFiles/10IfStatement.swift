import math_h
//  10IfStatement.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//
// Swift'te if yapısının özelliklerini ve kullanımını gösteren bir örnek
func demonstrateIfStatement() {
    // 1. If Yapısının Tanımı
    // If, bir koşulun doğru olup olmadığını kontrol etmek için kullanılır.
    // Eğer koşul doğruysa (true), if bloğu çalışır. Yanlışsa (false), if bloğu atlanır.

    // 2. Basit If Kullanımı
    let sayi = 10
    if sayi > 5 {
        print("\(sayi) sayısı 5'ten büyüktür.")
    }

    // 3. If-Else Kullanımı
    let yas = 16
    if yas >= 18 {
        print("Reşitsiniz.")
    } else {
        print("Reşit değilsiniz.")
    }

    // 4. If-Else If-Else Kullanımı
    let not = 85
    if not >= 90 {
        print("Harf Notu: A")
    } else if not >= 80 {
        print("Harf Notu: B")
    } else if not >= 70 {
        print("Harf Notu: C")
    } else {
        print("Harf Notu: F")
    }

    // 5. Birden Fazla Koşul (Mantıksal Operatörler)
    let sicaklik = 25
    if sicaklik > 20 && sicaklik < 30 { // &&: ve operatörü
        print("Hava güzel.")
    }

    if sicaklik < 15 || sicaklik > 35 { // ||: veya operatörü
        print("Hava kötü.")
    }

    // 6. Negasyon Operatörü (!)
    let yagmurYagiyor = false
    if !yagmurYagiyor { // !: değilse
        print("Dışarı çıkabilirsiniz.")
    }

    // 7. If ile Değişken Tanımlama
    let sayi2 = 8
    if let karekok = sqrtIfPositive(sayi2) {
        print("\(sayi2) sayısının karekökü: \(karekok)")
    } else {
        print("\(sayi2) negatif bir sayı olduğu için karekök alınamaz.")
    }

    // 8. If ile Döngü Kullanımı
    for i in 1...10 {
        if i % 2 == 0 {
            print("\(i) çift bir sayıdır.")
        } else {
            print("\(i) tek bir sayıdır.")
        }
    }
    
    // Pozitif sayılar için karekök hesaplayan bir yardımcı fonksiyon
    func sqrtIfPositive(_ number: Int) -> Double? {
        if number >= 0 {
            return sqrt(Double(number))
        } else {
            return nil
        }
    }
    
}
