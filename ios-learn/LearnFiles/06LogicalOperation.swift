//
//  06LogicalOperation.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 7.12.2024.
//
// Swift'te mantıksal operatörleri ve kullanımı
func demonstrateLogicalOperators() {
    // 1. Mantıksal Operatörler Tanımı
    // Mantıksal operatörler, birden fazla koşulu birleştirmek veya koşulları kontrol etmek için kullanılır.
    // Swift'te üç temel mantıksal operatör vardır:
    // - VE (AND): `&&`
    // - VEYA (OR): `||`
    // - DEĞİL (NOT): `!`

    // 2. Mantıksal VE (AND) Operatörü: `&&`
    // Tüm koşullar doğruysa sonuç `true` olur, aksi takdirde `false` döner.
    let isAdult = true
    let hasID = true
    if isAdult && hasID { // Her iki koşul da doğruysa çalışır
        print("Mantıksal VE: Giriş yapabilirsiniz.") // Bu mesaj yazdırılır.
    } else {
        print("Mantıksal VE: Giriş yapamazsınız.")
    }

    // 3. Mantıksal VEYA (OR) Operatörü: `||`
    // Koşullardan en az biri doğruysa sonuç `true` olur.
    let hasTicket = false
    let isVIP = true
    if hasTicket || isVIP { // En az bir koşul doğruysa çalışır
        print("Mantıksal VEYA: Etkinliğe katılabilirsiniz.") // Bu mesaj yazdırılır.
    } else {
        print("Mantıksal VEYA: Etkinliğe katılamazsınız.")
    }

    // 4. Mantıksal DEĞİL (NOT) Operatörü: `!`
    // Bir koşulun tersini alır. `true` ise `false`, `false` ise `true` döner.
    let isOnline = false
    if !isOnline { // `isOnline` false olduğu için bu blok çalışır
        print("Mantıksal DEĞİL: Kullanıcı çevrimdışı.") // Bu mesaj yazdırılır.
    } else {
        print("Mantıksal DEĞİL: Kullanıcı çevrimiçi.")
    }

    // 5. Mantıksal Operatörlerin Birlikte Kullanımı
    // Mantıksal operatörler birden fazla koşulu birleştirmek için birlikte kullanılabilir.
    let age = 20
    let hasParentalConsent = false
    if (age >= 18 && hasID) || hasParentalConsent {
        print("Birlikte Kullanım: Giriş yapabilirsiniz.") // Bu mesaj yazdırılır.
    } else {
        print("Birlikte Kullanım: Giriş yapamazsınız.")
    }

    // 6. Mantıksal Operatörlerle Döngü Kullanımı
    // Mantıksal operatörler döngülerde koşulları kontrol etmek için kullanılabilir.
    var counter = 0
    print("Mantıksal Operatörlerle Döngü:")
    while counter < 5 && counter != 3 { // Hem `counter < 5` hem de `counter != 3` doğruysa çalışır
        print("Sayaç: \(counter)")
        counter += 1
    }
    print("Döngü sona erdi.\n")

    // 7. Mantıksal Operatörlerle Kullanıcı Girişi Kontrolü
    // Mantıksal operatörler, kullanıcı girişlerini kontrol etmek için kullanılabilir.
    let username = "admin"
    let password = "1234"
    if username == "admin" && password == "1234" { // Kullanıcı adı ve şifre doğruysa
        print("Kullanıcı Girişi: Başarılı.") // Bu mesaj yazdırılır.
    } else {
        print("Kullanıcı Girişi: Başarısız.")
    }

    // 8. Mantıksal Operatörlerle Karmaşık Koşullar
    // Daha karmaşık koşullar parantezlerle gruplanarak kontrol edilebilir.
    let isWeekend = true
    let isHoliday = false
    let hasWork = false
    if (isWeekend || isHoliday) && !hasWork { // Hafta sonu veya tatil ve iş yoksa
        print("Karmaşık Koşul: Dinlenebilirsiniz.") // Bu mesaj yazdırılır.
    } else {
        print("Karmaşık Koşul: Çalışmanız gerekiyor.")
    }
}  
