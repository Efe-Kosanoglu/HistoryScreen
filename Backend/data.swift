//
//  DummyData.swift
//  History
//
//  Created by Hakan Koşanoğlu on 29.08.2023.
//

import UIKit


struct DummyData {
    var date: String
    let time: String
    let images: [DummyDataImages]
}

struct DummyDataImages {
    let order: Int
    let image: UIImage
}
