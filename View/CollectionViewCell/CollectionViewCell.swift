//
//  CollectionViewCell.swift
//  History
//
//  Created by Efe Kosanoglu on 26.08.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var historyPicture: UIImageView!
    @IBOutlet weak var rows: UIImageView!
    
    var collectionViewCellArray = [CollectionViewCell]()
    static var identifier2: String {
        return String(describing: self)}
    
    override func awakeFromNib() {
        super.awakeFromNib()
        historyPicture.layer.cornerRadius = 8 // Corner radius değerini ayarlayın
                historyPicture.layer.masksToBounds = true // Köşe yuvarlatma için mask kullanın
    }
    public func populate(with model: CollectionViewCellModel){
        historyPicture.image = model.historyPicture
        rows.image = model.rows
    }
}
