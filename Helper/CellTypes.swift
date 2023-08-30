//
//  CellTypes.swift
//  History
//
//  Created by Efe Kosanoglu on 28.08.2023.
//

import UIKit

struct trilogy {
    static let itemSpacing: CGFloat = 53
    static let numberOfColumns: CGFloat = 3
    
    static var cellSize: CGSize {
        let collectionViewWidth = UIScreen.main.bounds.width
        let cellWidth = (collectionViewWidth - itemSpacing * (numberOfColumns - 1)) / numberOfColumns
        return CGSize(width: cellWidth, height: 110)
    }
}
struct quadruple {
    static let itemSpacing: CGFloat = 90
    static let numberOfColumns: CGFloat = 4
    static var cellSize: CGSize {
        let collectionViewWidth = UIScreen.main.bounds.width
        let cellWidth = (collectionViewWidth - itemSpacing * (numberOfColumns - 1)) / numberOfColumns
        return CGSize(width: cellWidth, height: 66)
    }
}

