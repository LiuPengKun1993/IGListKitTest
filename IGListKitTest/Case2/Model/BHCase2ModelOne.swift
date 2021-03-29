//
//  BHCase2ModelOne.swift
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

import Foundation

class BHCase2ModelOne: ListDiffable {
    /** 姓名 */
    private(set) var name = ""
    /** 性别 */
    private(set) var sex = ""
    /** 描述 */
    private(set) var info = ""
    /** 文本高度 */
    private(set) var textHeight:CGFloat = 0
    /** 是否允许折叠 */
    public var isOpen = false
    private var identifier: String = UUID().uuidString

    func initWithName(name: String, sex: String, info: String) -> BHCase2ModelOne {
        self.name = name
        self.sex = sex
        self.info = info
        self.textHeight = NSObject.getTextHeight(withText: info, textWidth: UIScreen.main.bounds.size.width-40)
        return self
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return self.identifier as NSString
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? BHCase2ModelOne else {
            return false
        }
        
        return self.identifier == object.identifier
    }
}
