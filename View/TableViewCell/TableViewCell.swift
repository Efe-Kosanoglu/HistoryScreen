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
    
    var cellType: MainCellType = .quadruple
    
    static var identifier: String {
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let cellNib = UINib(nibName: CollectionViewCell.identifier2, bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: CollectionViewCell.identifier2)
    }
    
    public func populate(with model: TableViewCellModel){
        dateLabel.text = model.dateLabel
        timeLabel.text = model.timeLabel
        clockImage.image = model.clockImage
        cellBackground.image = model.cellBackground
        collectionView.dataSource = self
    }
}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 33
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier2, for: indexPath) as! CollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch cellType {
        case .trilogy:
            return trilogy.cellSize
        case .quadruple:
            return quadruple.cellSize
        }
    }
}
