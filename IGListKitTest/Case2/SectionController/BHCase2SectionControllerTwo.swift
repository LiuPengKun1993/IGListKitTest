//
//  BHCase2SectionControllerTwo.swift
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

import UIKit

class BHCase2SectionControllerTwo: ListSectionController {
    var modelTwo:BHCase2ModelTwo?
    
    override func didUpdate(to object: Any) {
        if object is BHCase2ModelTwo {
            self.modelTwo = object as? BHCase2ModelTwo
        }
    }
    
    override func numberOfItems() -> Int {
        if (self.modelTwo == nil) {
            return 0
        }
        return 1
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        if self.collectionContext == nil {
            return UICollectionViewCell.init()
        }
        
        let cell:BHCase2CollectionViewCellTwo = self.collectionContext?.dequeueReusableCell(withNibName: "BHCase2CollectionViewCellTwo", bundle: nil, for: self, at: index) as! BHCase2CollectionViewCellTwo
        cell.bindViewModel(self.modelTwo!)
        return cell
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: self.collectionContext?.containerSize.width ?? 0, height: 45)
    }
}
