//
//  11Function.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//
// Swift'te fonksiyonların özelliklerini ve kullanımını gösteren bir örnek
func demonstrateFunctions() {
    // 1. Fonksiyon Tanımı
    // Fonksiyonlar, belirli bir görevi yerine getiren kod bloklarıdır.
    // Swift'te bir fonksiyon şu şekilde tanımlanır:
    // func fonksiyonAdi(parametreler) -> DönüşTipi { ... }

    // 2. Parametresiz ve Dönüş Değeri Olmayan Fonksiyon
    func selamVer() {
        print("Merhaba, hoş geldiniz!")
    }
    selamVer()

    // 3. Parametre Alan Fonksiyon
    func selamla(isim: String) {
        print("Merhaba, \(isim)!")
    }
    selamla(isim: "Ahmet")

    // 4. Dönüş Değeri Olan Fonksiyon
    func toplama(sayi1: Int, sayi2: Int) -> Int {
        return sayi1 + sayi2
    }
    let toplam = toplama(sayi1: 10, sayi2: 20)
    print("Toplam: \(toplam)")

    // 5. Çoklu Parametre ve Dönüş Değeri Olan Fonksiyon
    func hesapla(sayi1: Int, sayi2: Int, islem: String) -> Int {
        if islem == "+" {
            return sayi1 + sayi2
        } else if islem == "-" {
            return sayi1 - sayi2
        } else if islem == "*" {
            return sayi1 * sayi2
        } else if islem == "/" {
            return sayi1 / sayi2
        } else {
            print("Geçersiz işlem")
            return 0
        }
    }
    let sonuc = hesapla(sayi1: 15, sayi2: 5, islem: "*")
    print("Sonuç: \(sonuc)")

    // 6. Varsayılan Parametre Değeri
    func selamlaVarsayilan(isim: String = "Misafir") {
        print("Merhaba, \(isim)!")
    }
    selamlaVarsayilan() // Varsayılan değeri kullanır
    selamlaVarsayilan(isim: "Ayşe") // Parametre gönderilir

    // 7. Çoklu Dönüş Değeri (Tuple ile)
    func minMax(sayilar: [Int]) -> (min: Int, max: Int)? {
        guard let ilkSayi = sayilar.first else { return nil }
        var min = ilkSayi
        var max = ilkSayi
        for sayi in sayilar {
            if sayi < min {
                min = sayi
            }
            if sayi > max {
                max = sayi
            }
        }
        return (min, max)
    }
    if let sonuc = minMax(sayilar: [3, 7, 1, 9, 4]) {
        print("En küçük: \(sonuc.min), En büyük: \(sonuc.max)")
    }

    // 8. İç İçe Fonksiyonlar
    func disFonksiyon() {
        func icFonksiyon() {
            print("Bu bir iç fonksiyondur.")
        }
        print("Bu bir dış fonksiyondur.")
        icFonksiyon()
    }
    disFonksiyon()

    // 9. In-Out Parametreler
    func sayiyiIkiyleCarp(sayi: inout Int) {
        sayi *= 2
    }
    var deger = 10
    sayiyiIkiyleCarp(sayi: &deger)
    print("İkiyle çarpılmış değer: \(deger)")

    // 10. Fonksiyonları Değişken Olarak Kullanma
    func carpma(sayi1: Int, sayi2: Int) -> Int {
        return sayi1 * sayi2
    }
    var islemFonksiyonu: (Int, Int) -> Int = carpma
    let carpimSonucu = islemFonksiyonu(6, 7)
    print("Çarpım Sonucu: \(carpimSonucu)")

    // 11. Closure (Fonksiyonun Alternatif Yazımı)
    let toplamaClosure: (Int, Int) -> Int = { (sayi1, sayi2) in
        return sayi1 + sayi2
    }
    let closureSonucu = toplamaClosure(8, 12)
    print("Closure ile Toplam: \(closureSonucu)")
}
