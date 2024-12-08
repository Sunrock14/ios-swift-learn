//
//  05While.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//
// Swift'te while döngüsünü ve özellikleri
import math_h

func demonstrateWhileLoop() {
    // 1. While Döngüsü Tanımı
    // While döngüsü, bir koşul doğru olduğu sürece kod bloğunu tekrar tekrar çalıştırır.
    // Döngüye girmeden önce koşul kontrol edilir.
    var counter = 1 // Döngüde kullanılacak sayaç
    print("While döngüsü başlıyor:")
    while counter <= 5 { // Koşul: counter 5'ten küçük veya eşit olduğu sürece çalışır
        print("Sayaç: \(counter)")
        counter += 1 // Sayaç her döngüde 1 artırılır
    }
    print("While döngüsü bitti.\n")

    // 2. Infinite (Sonsuz) While Döngüsü
    // Eğer koşul hiçbir zaman yanlış olmazsa, döngü sonsuza kadar çalışır.
    // Bu tür döngüler genellikle belirli bir koşulda `break` ile sonlandırılır.
    var infiniteCounter = 1
    print("Sonsuz While döngüsü örneği:")
    while true { // Koşul her zaman doğru
        print("Infinite Sayaç: \(infiniteCounter)")
        infiniteCounter += 1
        if infiniteCounter > 3 { // Koşul sağlandığında döngüden çıkılır
            print("Döngüden çıkılıyor.")
            break // Döngüyü sonlandırır
        }
    }
    print("Sonsuz While döngüsü bitti.\n")

    // 3. Repeat-While Döngüsü
    // Repeat-while döngüsü, koşul doğru olmasa bile kod bloğunu en az bir kez çalıştırır.
    // Koşul döngü çalıştırıldıktan sonra kontrol edilir.
    var repeatCounter = 1
    print("Repeat-While döngüsü başlıyor:")
    repeat {
        print("Repeat Sayaç: \(repeatCounter)")
        repeatCounter += 1
    } while repeatCounter <= 3 // Koşul: repeatCounter 3'ten küçük veya eşit olduğu sürece çalışır
    print("Repeat-While döngüsü bitti.\n")

    // 4. While Döngüsü ile Liste Üzerinde İşlem Yapma
    // While döngüsü, bir liste veya array üzerinde işlem yapmak için kullanılabilir.
    var numbers = [1, 2, 3, 4, 5] // İşlenecek bir array
    print("Array üzerinde While döngüsü:")
    while !numbers.isEmpty { // Array boş olmadığı sürece çalışır
        let removedNumber = numbers.removeFirst() // İlk elemanı sil ve döndür
        print("Silinen Eleman: \(removedNumber), Kalan Array: \(numbers)")
    }
    print("Array boşaldı.\n")

    // 5. While Döngüsü ile Kullanıcı Girişi Simülasyonu
    // While döngüsü, belirli bir koşul sağlanana kadar kullanıcıdan giriş almak için kullanılabilir.
    var userInput: String? = nil
    print("Kullanıcı girişi simülasyonu:")
    while userInput != "exit" { // Kullanıcı "exit" yazmadığı sürece çalışır
        print("Bir şey yazın (çıkmak için 'exit' yazın):", terminator: " ")
        userInput = "exit" // Burada manuel olarak "exit" atanıyor (gerçek bir uygulamada kullanıcıdan alınır)
        print(userInput ?? "")
    }
    print("Kullanıcı girişi döngüsü bitti.\n")

    // 6. While Döngüsü ile Matematiksel İşlem
    // While döngüsü, belirli bir matematiksel işlemi tekrar tekrar yapmak için kullanılabilir.
    var number = 2
    var power = 1
    let maxPower = 5
    print("Matematiksel işlem (üs alma) örneği:")
    while power <= maxPower {
        let result = Int(pow(Double(number), Double(power))) // number^power işlemi
        print("\(number) üzeri \(power): \(result)")
        power += 1
    }
    print("Matematiksel işlem döngüsü bitti.\n")
}
