//
//  09For.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//
// Swift'te for döngüsünün özelliklerini ve kullanımını gösteren bir örnek
func demonstrateForLoop() {
    // 1. For Döngüsü Tanımı
    // For döngüsü, bir koleksiyonun (dizi, aralık, sözlük vb.) elemanlarını sırasıyla işlemek için kullanılır.
    // Swift'teki for döngüsü şu şekilde çalışır:
    // - Koleksiyonun her bir elemanını alır ve döngü bloğunda işlem yapar.

    // 2. Basit Bir Dizi Üzerinde Döngü
    let meyveler = ["Elma", "Armut", "Muz", "Çilek"]
    for meyve in meyveler {
        print("Meyve: \(meyve)")
    }

    // 3. Sayısal Aralıklarla Döngü (Range)
    for sayi in 1...5 { // 1'den 5'e kadar (5 dahil)
        print("Sayı: \(sayi)")
    }

    // 4. Kapalı Aralık (Closed Range) ve Açık Aralık (Half-Open Range)
    for sayi in 1..<5 { // 1'den 5'e kadar (5 hariç)
        print("Açık Aralık Sayı: \(sayi)")
    }

    // 5. Döngüde Adım Atlamak (Stride)
    for sayi in stride(from: 0, to: 10, by: 2) { // 0'dan 10'a kadar (10 hariç), 2'şer artış
        print("Adımlı Sayı: \(sayi)")
    }

    for sayi in stride(from: 10, through: 0, by: -2) { // 10'dan 0'a kadar (0 dahil), 2'şer azalış
        print("Azalan Adımlı Sayı: \(sayi)")
    }

    // 6. İndeks ve Elemanlara Erişim (Enumerated)
    for (indeks, meyve) in meyveler.enumerated() {
        print("İndeks: \(indeks), Meyve: \(meyve)")
    }

    // 7. Sözlük Üzerinde Döngü
    let ogrenciler = ["Ali": 85, "Ayşe": 90, "Mehmet": 78]
    for (isim, not) in ogrenciler {
        print("Öğrenci: \(isim), Not: \(not)")
    }

    // 8. Döngüde Şart Kullanımı (if ile)
    for sayi in 1...10 {
        if sayi % 2 == 0 {
            print("Çift Sayı: \(sayi)")
        }
    }

    // 9. Döngüyü Erken Sonlandırma (break) ve Atlama (continue)
    for sayi in 1...10 {
        if sayi == 5 {
            print("Döngü 5'te kırıldı.")
            break // Döngüyü tamamen sonlandırır
        }
        print("Sayı: \(sayi)")
    }

    for sayi in 1...10 {
        if sayi % 2 != 0 {
            continue // Tek sayıları atlar
        }
        print("Çift Sayı: \(sayi)")
    }

    // 10. Çok Boyutlu Dizilerde Döngü
    let matris = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]
    for satir in matris {
        for eleman in satir {
            print("Eleman: \(eleman)")
        }
    }

    // 11. For Döngüsü ile String İşleme
    let kelime = "Swift"
    for harf in kelime {
        print("Harf: \(harf)")
    }
}
