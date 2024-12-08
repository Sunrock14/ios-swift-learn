//
//  02Arrays.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//

// Swift'te array (dizi) veri yapısını ve özellikleri
func demonstrateArrays() {
    // 1. Array Tanımı
    // Array, aynı türdeki birden fazla değeri sıralı bir şekilde depolamak için kullanılır.
    // Array'ler sıralıdır ve elemanlara indeks (index) ile erişilir.
    var numbers: [Int] = [1, 2, 3, 4, 5] // Int türünde bir array
    print("Başlangıç Array'i: \(numbers)") // [1, 2, 3, 4, 5]

    // 2. Array Oluşturma
    // Boş bir array oluşturmak için şu yöntemler kullanılabilir:
    var emptyArray: [String] = [] // String türünde boş bir array
    print("Boş Array: \(emptyArray)") // []

    // Array türünü belirtmeden de oluşturabiliriz (type inference):
    var fruits = ["Apple", "Banana", "Orange"] // String türünde bir array
    print("Meyveler: \(fruits)") // ["Apple", "Banana", "Orange"]

    // 3. Array'e Eleman Ekleme
    // Array'e yeni bir eleman eklemek için `append` metodu kullanılır.
    fruits.append("Mango")
    print("Mango eklendi: \(fruits)") // ["Apple", "Banana", "Orange", "Mango"]

    // Birden fazla eleman eklemek için `+=` operatörü kullanılabilir.
    fruits += ["Pineapple", "Grapes"]
    print("Yeni meyveler eklendi: \(fruits)") // ["Apple", "Banana", "Orange", "Mango", "Pineapple", "Grapes"]

    // 4. Array'den Eleman Silme
    // Belirli bir indeksteki elemanı silmek için `remove(at:)` metodu kullanılır.
    let removedFruit = fruits.remove(at: 1) // İndeks 1'deki eleman silinir.
    print("\(removedFruit) silindi: \(fruits)") // Banana silindi: ["Apple", "Orange", "Mango", "Pineapple", "Grapes"]

    // Son elemanı silmek için `removeLast` metodu kullanılabilir.
    let lastFruit = fruits.removeLast()
    print("Son eleman (\(lastFruit)) silindi: \(fruits)") // Grapes silindi: ["Apple", "Orange", "Mango", "Pineapple"]

    // Tüm elemanları silmek için `removeAll` metodu kullanılabilir.
    fruits.removeAll()
    print("Tüm elemanlar silindi: \(fruits)") // []

    // 5. Array'e Eleman Ekleme (Belirli Bir İndekse)
    // Array'e belirli bir indekse eleman eklemek için `insert` metodu kullanılır.
    numbers.insert(10, at: 2) // İndeks 2'ye 10 eklenir.
    print("10 eklendi: \(numbers)") // [1, 2, 10, 3, 4, 5]

    // 6. Array Elemanlarına Erişim
    // Array elemanlarına indeks ile erişilir.
    let firstNumber = numbers[0] // İlk eleman
    print("İlk eleman: \(firstNumber)") // 1

    let lastNumber = numbers[numbers.count - 1] // Son eleman
    print("Son eleman: \(lastNumber)") // 5

    // 7. Array'in Özellikleri
    // Eleman sayısını öğrenmek için `count` özelliği kullanılır.
    print("Eleman sayısı: \(numbers.count)") // 6

    // Array'in boş olup olmadığını kontrol etmek için `isEmpty` özelliği kullanılır.
    if numbers.isEmpty {
        print("Array boş.")
    } else {
        print("Array boş değil.") // Bu mesaj yazdırılır.
    }

    // 8. Array'i Sıralama
    // Array'i sıralamak için `sorted` metodu kullanılır.
    let sortedNumbers = numbers.sorted() // Küçükten büyüğe sıralar.
    print("Sıralı Array: \(sortedNumbers)") // [1, 2, 3, 4, 5, 10]

    // Ters sıralama için `reversed` kullanılabilir.
    let reversedNumbers = numbers.reversed()
    print("Ters Array: \(Array(reversedNumbers))") // [5, 4, 3, 10, 2, 1]

    // 9. Array'de Eleman Arama
    // Belirli bir elemanın array'de olup olmadığını kontrol etmek için `contains` metodu kullanılır.
    if numbers.contains(3) {
        print("3 mevcut!") // Bu mesaj yazdırılır.
    } else {
        print("3 bulunamadı.")
    }

    // 10. Çok Boyutlu Array
    // Array içinde array'ler tanımlanabilir (çok boyutlu array).
    let matrix: [[Int]] = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]
    print("Matris: \(matrix)")
    print("Matrisin ilk satırı: \(matrix[0])") // [1, 2, 3]
    print("Matrisin ilk elemanı: \(matrix[0][0])") // 1
}  
