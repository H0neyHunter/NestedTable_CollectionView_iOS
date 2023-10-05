//
//  Dynamic.swift
//  NestedTable_CollectionView
//
//  Created by Ümit Örs on 5.10.2023.
//

import UIKit

class DynamicHeightCollectionView: UICollectionView {
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        if bounds.size != intrinsicContentSize {
            
            self.invalidateIntrinsicContentSize()
            
        }
        
    }
    
    override var intrinsicContentSize: CGSize {
        
        return collectionViewLayout.collectionViewContentSize
        
    }
    
}
