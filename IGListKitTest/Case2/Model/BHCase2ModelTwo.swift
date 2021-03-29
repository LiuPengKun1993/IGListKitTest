//
//  BHCase2ModelTwo.swift
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

import Foundation

class BHCase2ModelTwo: ListDiffable {
    /** 描述 */
    private(set) var info = ""
    private var identifier: String = UUID().uuidString

    func initWithInfo(info:String) -> BHCase2ModelTwo {
        self.info = info
        return self
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return self.identifier as NSString
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? BHCase2ModelTwo else {
            return false
        }
        return self.identifier == object.identifier
    }
}
