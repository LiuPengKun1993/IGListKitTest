//
//  BHCase2CollectionViewCellOne.swift
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

import UIKit

class BHCase2CollectionViewCellOne: UICollectionViewCell,ListBindable {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var sexLabel: UILabel!
    
    @IBOutlet weak var `switch`: UISwitch!
    
    private var viewModel:BHCase2ModelOne?

    func bindViewModel(_ viewModel: Any) {
        self.viewModel = viewModel as? BHCase2ModelOne
        let fontName:NSString = "iconfont"
        let text:NSString = "\u{0000e60f}"
        self.imageView.image = NSObject.image(withIconFontName: fontName as String, fontSize: 80, text: text as String, color: NSObject.randomColor())
        self.nameLabel.text = self.viewModel?.name
        self.sexLabel.text = self.viewModel?.sex
        self.switch.isOn = self.viewModel!.isOpen
    }

    @IBAction func swiftClicked(_ sender: UISwitch) {
        self.viewModel?.isOpen = sender.isOn
    }
}
