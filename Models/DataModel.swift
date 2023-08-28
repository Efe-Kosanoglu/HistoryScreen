//
//  DataModel.swift
//  History
//
//  Created by Efe Kosanoglu on 27.08.2023.
//

import Foundation
import UIKit


struct History {
    let data: [Element]
    let totalCount: Int
}
struct Element {
    let cellBackground: UIImage
    let dateLabel: String
    let timeLabel: String
    let innerData: [collectionView]
}
struct collectionView {
    let historyPicture: UIImage
    let rows: UIImage
    
}
