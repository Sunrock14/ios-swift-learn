//
//  03.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//

// Swift'te Set veri yapısını ve özellikleri
func demonstrateSetOperations() {
    // 1. Set oluşturma
    // Set, benzersiz (unique) elemanları depolayan sırasız (unordered) bir koleksiyondur.
    // Aynı eleman birden fazla kez eklenemez.
    var fruits: Set<String> = ["Apple", "Banana", "Orange"]
    print("Başlangıç Set'i: \(fruits)") // ["Apple", "Banana", "Orange"]

    // 2. Eleman ekleme
    // Set'e yeni bir eleman eklemek için `insert` metodu kullanılır.
    // Eğer eleman zaten mevcutsa, ekleme işlemi yapılmaz.
    fruits.insert("Mango")
    print("Mango eklendi: \(fruits)") // ["Apple", "Banana", "Orange", "Mango"]

    // 3. Eleman silme
    // Set'ten bir eleman silmek için `remove` metodu kullanılır.
    // Eğer eleman mevcut değilse, işlem başarısız olur ve `nil` döner.
    fruits.remove("Banana")
    print("Banana silindi: \(fruits)") // ["Apple", "Orange", "Mango"]

    // 4. Eleman arama
    // Bir elemanın Set içinde olup olmadığını kontrol etmek için `contains` metodu kullanılır.
    if fruits.contains("Apple") {
        print("Apple mevcut!") // Bu mesaj yazdırılır.
    } else {
        print("Apple bulunamadı.")
    }

    // 5. Matematiksel küme işlemleri
    // Set'ler matematiksel küme işlemlerini destekler: union, intersection, subtracting, symmetricDifference.
    let tropicalFruits: Set<String> = ["Mango", "Pineapple", "Orange"]
    print("Tropikal Meyveler: \(tropicalFruits)") // ["Mango", "Pineapple", "Orange"]

    // 5.1 Birleşim (Union)
    // İki Set'in birleşimi, her iki Set'teki tüm benzersiz elemanları içerir.
    let unionSet = fruits.union(tropicalFruits)
    print("Birleşim (Union): \(unionSet)") // ["Apple", "Orange", "Mango", "Pineapple"]

    // 5.2 Kesişim (Intersection)
    // İki Set'in kesişimi, her iki Set'te de ortak olan elemanları içerir.
    let intersectionSet = fruits.intersection(tropicalFruits)
    print("Kesişim (Intersection): \(intersectionSet)") // ["Orange", "Mango"]

    // 5.3 Fark (Subtracting)
    // Bir Set'ten diğer Set'teki elemanlar çıkarılır.
    let subtractingSet = fruits.subtracting(tropicalFruits)
    print("Fark (Subtracting): \(subtractingSet)") // ["Apple"]

    // 5.4 Simetrik Fark (Symmetric Difference)
    // İki Set'in simetrik farkı, yalnızca bir Set'te bulunan elemanları içerir.
    let symmetricDifferenceSet = fruits.symmetricDifference(tropicalFruits)
    print("Simetrik Fark (Symmetric Difference): \(symmetricDifferenceSet)") // ["Apple", "Pineapple"]

    // 6. Set'in diğer özellikleri
    // 6.1 Eleman sayısını öğrenme
    print("Set'teki eleman sayısı: \(fruits.count)") // 3

    // 6.2 Set'in boş olup olmadığını kontrol etme
    if fruits.isEmpty {
        print("Set boş.")
    } else {
        print("Set boş değil.") // Bu mesaj yazdırılır.
    }

    // 6.3 Set'i sıralı bir diziye dönüştürme
    // Set sırasız bir koleksiyon olduğu için, sıralı bir diziye dönüştürmek gerekebilir.
    let sortedFruits = fruits.sorted()
    print("Sıralı Set: \(sortedFruits)") // ["Apple", "Mango", "Orange"]
}
