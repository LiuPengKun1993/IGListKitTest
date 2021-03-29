//
//  BHCase2ViewModel.swift
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//


class BHCase2ViewModel: NSObject, ListAdapterDataSource {
    let dataArray:[ListDiffable] = [
        BHCase2ModelOne().initWithName(name: "路飞1", sex: "男", info: "评论：这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释"),
        BHCase2ModelOne().initWithName(name: "路飞2", sex: "男", info: "评论：这是注释这是注释这是注释这是注释这是注释这是注"),
        BHCase2ModelTwo().initWithInfo(info: "⚠️⚠️ 广告A ⚠️⚠️"),
        BHCase2ModelOne().initWithName(name: "路飞3", sex: "男", info: "评论：这是注释"),
        BHCase2ModelOne().initWithName(name: "路飞4", sex: "男", info: "评论：这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释"),
        BHCase2ModelOne().initWithName(name: "路飞5", sex: "男", info: "评论：这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释这是注释"),
        BHCase2ModelTwo().initWithInfo(info: "⚠️⚠️ 广告B ⚠️⚠️"),
        BHCase2ModelOne().initWithName(name: "路飞6", sex: "男", info: "评论：这是注释这是注释这是注释这是注释这是注释这是注释这是注释")]
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return dataArray
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        if object is BHCase2ModelOne {
            return BHCase2SectionControllerOne()
        } else {
            return BHCase2SectionControllerTwo()
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }

}
