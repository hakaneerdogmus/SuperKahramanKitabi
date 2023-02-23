//
//  SuperKahraman.swift
//  SuperKahramanSwiftUI
//
//  Created by Hakan ERDOĞMUŞ on 18.02.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Superkahraman : Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}

let batman = Superkahraman(isim: "Batman", gercekIsim: "Bruce Wayne", gorselIsmi: "batman", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 41.892008, longitude: -87.6151958))
let superman = Superkahraman(isim: "Superman", gercekIsim: "Clark Kent", gorselIsmi: "superman", sehir: "Kansas", meslek: "Gazateci", koordinat: Koordinat(latitude: 39.0941277, longitude: -94.5715206))
let spiderman = Superkahraman(isim: "Spiderman", gercekIsim: "Peter Parker", gorselIsmi: "spiderman", sehir: "New York", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 40.67758399050332, longitude: -73.94402726899136))
let ironman = Superkahraman(isim:"Ironman", gercekIsim: "Tony Stark", gorselIsmi: "ironman", sehir: "New York", meslek: "İş Adamı", koordinat: Koordinat(latitude: 40.748576, longitude: -73.9878837))

let superKahramanDizisi = [batman, superman, spiderman, ironman]
