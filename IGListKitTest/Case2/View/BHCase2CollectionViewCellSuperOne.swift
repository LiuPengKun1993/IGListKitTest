//
//  BHCase2CollectionViewCellSuperOne.swift
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

import UIKit

class BHCase2CollectionViewCellSuperOne: UICollectionViewCell,ListBindable {

    @IBOutlet weak var infoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func bindViewModel(_ viewModel: Any) {
        let vm:BHCase2ModelOne? = viewModel as? BHCase2ModelOne
        self.infoLabel.text = vm?.info
        self.infoLabel.textColor = NSObject.randomColor()
    }

}
