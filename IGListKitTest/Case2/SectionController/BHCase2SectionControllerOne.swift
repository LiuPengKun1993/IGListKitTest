//
//  BHCase2SectionControllerOne.swift
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

import UIKit

class BHCase2SectionControllerOne: ListSectionController {
    
    private var modelOne:BHCase2ModelOne?
    private var isOpen = false
    
    override func didUpdate(to object: Any) {
        if object is BHCase2ModelOne {
            self.modelOne = (object as! BHCase2ModelOne)
        }
    }
    
    override func numberOfItems() -> Int {
        if self.modelOne!.isOpen {
            return 2
        }
        return self.isOpen ? 2 : 1
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        if (self.collectionContext == nil) {
            return UICollectionViewCell.init()
        }
        if index == 1 {
            let cell:BHCase2CollectionViewCellSuperOne = self.collectionContext?.dequeueReusableCell(withNibName: "BHCase2CollectionViewCellSuperOne", bundle: nil, for: self, at: index) as! BHCase2CollectionViewCellSuperOne
            cell.bindViewModel(self.modelOne!)
            return cell
        } else {
            let cell:BHCase2CollectionViewCellOne = self.collectionContext?.dequeueReusableCell(withNibName: "BHCase2CollectionViewCellOne", bundle: nil, for: self, at: index) as! BHCase2CollectionViewCellOne
            cell.bindViewModel(self.modelOne!)
            return cell
        }
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let tempWidth:CGFloat = self.collectionContext?.containerSize.width ?? 0.0
        if index == 1 {
            return CGSize(width: tempWidth, height: self.modelOne!.textHeight + 20)
        } else {
            return CGSize(width: tempWidth, height: 120)
        }
    }
}

extension BHCase2SectionControllerOne {
    override func didSelectItem(at index: Int) {
        self.collectionContext?.performBatch(animated: true, updates: { (batchContext) in
            self.isOpen = !self.isOpen
            batchContext.reload(self)
        }, completion: nil)
    }
}
