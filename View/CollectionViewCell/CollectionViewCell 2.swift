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
    
    static var identifier: String {
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        historyPicture.layer.cornerRadius = 8
        historyPicture.layer.masksToBounds = true 
    }
    
    public func populate(data: DummyDataImages){
            
        var image = UIImage()
        
        switch data.order {
        case 0:
            image = UIImage(named: "1st")!
        case 1:
            image = UIImage(named: "2nd")!
        case 2:
            image = UIImage(named: "3rd")!
        default:
            image = UIImage(named: "1st")!
        }
        
        rows.image = image
    }
}
