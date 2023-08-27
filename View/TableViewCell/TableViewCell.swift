//
//  TableViewCell.swift
//  History
//
//  Created by Efe Kosanoglu on 26.08.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellBackground: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var clockImage: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var tableViewCellArray = [TableViewCell]()
    static var identifier: String {
        return String(describing: self)}
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.minimumLineSpacing = -15// Dikeyde hücreler arası mesafe
             }
        let cellNib = UINib(nibName: CollectionViewCell.identifier2, bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "collectionViewCellid")
    }
    public func populate(with model: TableViewCellModel){
        dateLabel.text = model.dateLabel
        timeLabel.text = model.timeLabel
        clockImage.image = model.clockImage
        cellBackground.image = model.cellBackground
        collectionView.dataSource = self
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 33
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCellid", for: indexPath) as! CollectionViewCell
            return cell
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.bounds.width - 12) / 2.5
         return CGSize(width: cellWidth, height: cellWidth)
     }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           let totalCellWidth = (collectionView.bounds.width - 12)
           let totalSpacingWidth = CGFloat(2) * CGFloat(145) 
           let leftInset = (totalCellWidth - totalSpacingWidth) / 2
           let rightInset = leftInset
           return UIEdgeInsets(top: 0, left: leftInset, bottom: 0, right: rightInset)
       }
}
