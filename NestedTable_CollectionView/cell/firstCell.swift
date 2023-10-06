//
//  firstCell.swift
//  NestedTable_CollectionView
//
//  Created by Ümit Örs on 4.10.2023.
//

import UIKit

class firstCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listNestedArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! nestedCollectionCell
        let  item  = listNestedArray[indexPath.row]
        
        DispatchQueue.main.async {
            cell.image.image  = UIImage(named: item.imageDrawable)
        }
        cell.imageName.text = item.imageName
        
        return cell
    }
    var listNestedArray = [NestedTable_CollectionView.listNested]()
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var header: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cv.delegate  = self
        cv.dataSource = self
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
