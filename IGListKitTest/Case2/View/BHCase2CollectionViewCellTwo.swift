//
//  BHCase2CollectionViewCellTwo.swift
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

import UIKit

class BHCase2CollectionViewCellTwo: UICollectionViewCell,ListBindable {

    @IBOutlet weak var infoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bindViewModel(_ viewModel: Any) {
        let vm: BHCase2ModelTwo? = viewModel as? BHCase2ModelTwo
        self.infoLabel.text = vm?.info
        
    }

}
