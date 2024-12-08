//
//  12Optionals.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//
// Swift'te opsiyonellerin özelliklerini ve kullanımını gösteren bir örnek
func demonstrateOptionals() {
    // 1. Opsiyonel Tanımlama
    // Opsiyonel bir değişken ya bir değer içerir ya da nil olabilir.
    var isim: String? = "Ahmet"
    print("Opsiyonel değişken: \(isim)") // Optional("Ahmet")
    
    // Opsiyonel bir değişken varsayılan olarak nil'dir.
    var yas: Int?
    print("Varsayılan opsiyonel değer: \(yas)") // nil

    // 2. Zorunlu Açma (Force Unwrapping)
    // Opsiyonelin içindeki değere `!` ile zorla erişilir.
    if isim != nil {
        print("Zorunlu açma ile isim: \(isim!)") // Ahmet
    }

    // Ancak, opsiyonel nil ise zorunlu açma programın çökmesine neden olur.
    // yas = nil
    // print(yas!) // Hata: Fatal error: Unexpectedly found nil while unwrapping an Optional value

    // 3. Güvenli Açma (Optional Binding)
    // Opsiyonelin içindeki değere güvenli bir şekilde erişmek için `if let` veya `guard let` kullanılır.
    if let acilmisIsim = isim {
        print("Güvenli açma ile isim: \(acilmisIsim)") // Ahmet
    } else {
        print("Opsiyonel isim nil.")
    }

    // Guard let ile güvenli açma
    func isimKontrol() {
        guard let acilmisIsim = isim else {
            print("İsim nil, işlem yapılamaz.")
            return
        }
        print("Guard let ile isim: \(acilmisIsim)") // Ahmet
    }
    isimKontrol()

    // 4. Varsayılan Değer ile Açma (Nil-Coalescing Operator)
    // `??` operatörü, opsiyonel nil ise bir varsayılan değer döndürür.
    let varsayilanIsim = isim ?? "Misafir"
    print("Varsayılan değer ile isim: \(varsayilanIsim)") // Ahmet

    let varsayilanYas = yas ?? 18
    print("Varsayılan değer ile yaş: \(varsayilanYas)") // 18

    // 5. Opsiyonel Zincirleme (Optional Chaining)
    // Opsiyonel bir değişkenin alt özelliklerine güvenli bir şekilde erişmek için kullanılır.
    struct Kisi {
        var adres: Adres?
    }
    struct Adres {
        var sehir: String
    }

    let kisi = Kisi(adres: Adres(sehir: "İstanbul"))
    let sehir = kisi.adres?.sehir // Eğer adres nil değilse, sehir'e erişilir.
    print("Opsiyonel zincirleme ile şehir: \(sehir ?? "Bilinmiyor")") // İstanbul

    let kisi2 = Kisi(adres: nil)
    let sehir2 = kisi2.adres?.sehir
    print("Opsiyonel zincirleme ile şehir: \(sehir2 ?? "Bilinmiyor")") // Bilinmiyor

    // 6. İmplicitly Unwrapped Optionals
    // Değişkenin her zaman bir değer içereceği garanti ediliyorsa `!` ile tanımlanabilir.
    var acikIsim: String! = "Ayşe"
    print("İmplicitly unwrapped opsiyonel: \(acikIsim)") // Ayşe

    // Ancak, nil atanırsa program çöker.
    // acikIsim = nil
    // print(acikIsim) // Hata: Fatal error: Unexpectedly found nil while unwrapping an Optional value

    // 7. Opsiyoneller ile Döngü Kullanımı
    let isimler: [String?] = ["Ali", nil, "Mehmet", nil, "Zeynep"]
    for isim in isimler {
        if let isim = isim {
            print("Döngüde güvenli açma ile isim: \(isim)")
        } else {
            print("Döngüde isim nil.")
        }
    }

    // 8. Opsiyoneller ile Karşılaştırma
    // Opsiyonel bir değişken doğrudan nil ile karşılaştırılabilir.
    if yas == nil {
        print("Yaş bilgisi mevcut değil.")
    } else {
        print("Yaş bilgisi mevcut.")
    }
}

