//
//  Film.swift
//  PrimeVideoDesign
//
//  Created by onur on 31.12.2023.
//

import Foundation

class Film {
    var id: Int
    var ad: String
    var resim: String
    
    init(id: Int, ad: String, resim: String) {
        self.id = id
        self.ad = ad
        self.resim = resim
    }
}
