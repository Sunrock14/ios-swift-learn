//
//  04Dictionary.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//
// Swift'te dictionary (sözlük) veri yapısını ve özellikleri
func demonstrateDictionaries() {
    // 1. Dictionary Tanımı
    // Dictionary, anahtar-değer (key-value) çiftlerini depolamak için kullanılır.
    // Her anahtar benzersizdir ve bir değere karşılık gelir.
    var studentGrades: [String: Int] = ["Alice": 90, "Bob": 85, "Charlie": 88]
    print("Başlangıç Dictionary'si: \(studentGrades)") // ["Alice": 90, "Bob": 85, "Charlie": 88]

    // 2. Boş Dictionary Oluşturma
    // Boş bir dictionary oluşturmak için şu yöntemler kullanılabilir:
    var emptyDictionary: [String: String] = [:] // String anahtar ve String değer içeren boş bir dictionary
    print("Boş Dictionary: \(emptyDictionary)") // [:]

    // Tür çıkarımı (type inference) ile boş dictionary oluşturma:
    var cityPopulation = [String: Int]() // String anahtar ve Int değer içeren boş bir dictionary
    print("Boş Şehir Nüfusları: \(cityPopulation)") // [:]

    // 3. Dictionary'ye Eleman Ekleme
    // Yeni bir anahtar-değer çifti eklemek için şu şekilde bir atama yapılır:
    cityPopulation["Istanbul"] = 15000000
    cityPopulation["Ankara"] = 5500000
    print("Şehir Nüfusları: \(cityPopulation)") // ["Istanbul": 15000000, "Ankara": 5500000]

    // 4. Dictionary'den Eleman Silme
    // Belirli bir anahtar-değer çiftini silmek için `removeValue(forKey:)` metodu kullanılır.
    var removedCity = cityPopulation.removeValue(forKey: "Ankara") // "Ankara" anahtarı silinir.
    print("Silinen Şehir: \(removedCity ?? 0)") // 5500000
    print("Güncel Şehir Nüfusları: \(cityPopulation)") // ["Istanbul": 15000000]

    // 5. Dictionary Elemanlarına Erişim
    // Belirli bir anahtarın değerine erişmek için köşeli parantezler kullanılır.
    if let istanbulPopulation = cityPopulation["Istanbul"] {
        print("Istanbul'un nüfusu: \(istanbulPopulation)") // 15000000
    } else {
        print("Istanbul bulunamadı.")
    }

    // Eğer anahtar yoksa, `nil` döner:
    let ankaraPopulation = cityPopulation["Ankara"] // "Ankara" silindiği için nil döner.
    print("Ankara'nın nüfusu: \(ankaraPopulation ?? 0)") // 0

    // 6. Dictionary'nin Özellikleri
    // Eleman sayısını öğrenmek için `count` özelliği kullanılır.
    print("Şehir sayısı: \(cityPopulation.count)") // 1

    // Dictionary'nin boş olup olmadığını kontrol etmek için `isEmpty` özelliği kullanılır.
    if cityPopulation.isEmpty {
        print("Dictionary boş.")
    } else {
        print("Dictionary boş değil.") // Bu mesaj yazdırılır.
    }

    // 7. Dictionary'deki Tüm Anahtarlar ve Değerler
    // Tüm anahtarlar için `keys`, tüm değerler için `values` özelliği kullanılır.
    let studentNames = studentGrades.keys
    let grades = studentGrades.values
    print("Öğrenci İsimleri: \(studentNames)") // ["Alice", "Bob", "Charlie"]
    print("Notlar: \(grades)") // [90, 85, 88]

    // 8. Dictionary'de Eleman Güncelleme
    // Mevcut bir anahtarın değerini güncellemek için aynı anahtar üzerinden atama yapılır.
    studentGrades["Alice"] = 95 // Alice'in notu güncellenir.
    print("Güncellenmiş Notlar: \(studentGrades)") // ["Alice": 95, "Bob": 85, "Charlie": 88]

    // Eğer anahtar yoksa, yeni bir anahtar-değer çifti eklenir.
    studentGrades["David"] = 80
    print("Yeni Öğrenci Eklendi: \(studentGrades)") // ["Alice": 95, "Bob": 85, "Charlie": 88, "David": 80]

    // 9. Dictionary'de Eleman Arama
    // Belirli bir anahtarın olup olmadığını kontrol etmek için `contains` yerine `nil` kontrolü yapılır.
    if studentGrades["Charlie"] != nil {
        print("Charlie mevcut!") // Bu mesaj yazdırılır.
    } else {
        print("Charlie bulunamadı.")
    }

    // 10. Çok Boyutlu Dictionary
    // Dictionary içinde dictionary tanımlanabilir.
    let countryCities: [String: [String]] = [
        "Turkey": ["Istanbul", "Ankara", "Izmir"],
        "USA": ["New York", "Los Angeles", "Chicago"]
    ]
    print("Ülkeler ve Şehirler: \(countryCities)")
    print("Türkiye'nin Şehirleri: \(countryCities["Turkey"] ?? [])") // ["Istanbul", "Ankara", "Izmir"]
    print("ABD'nin İlk Şehri: \(countryCities["USA"]?[0] ?? "Bulunamadı")") // New York
}
