//
//  firstCell.swift
//  NestedTable_CollectionView
//
//  Created by Ümit Örs on 4.10.2023.
//

import UIKit

class firstCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! nestedCollectionCell
        
        return cell
    }
    
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var header: UILabel!
    var width = 0.0
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cv.delegate  = self
        cv.dataSource = self
        width = 300
        let layout = cv.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: (width - 20) / 3, height: (width - 20) / 3)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
