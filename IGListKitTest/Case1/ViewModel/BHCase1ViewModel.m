//
//  BHCase1ViewModel.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/26.
//

#import "BHCase1ViewModel.h"
#import "BHCase1ModelOne.h"
#import "BHCase1ModelTwo.h"
#import "BHCase1SectionControllerOne.h"
#import "BHCase1SectionControllerTwo.h"

@implementation BHCase1ViewModel

- (NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    return self.dataArray;
}

- (UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return nil;
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    if ([object isKindOfClass:BHCase1ModelOne.class]) {
        return [[BHCase1SectionControllerOne alloc] init];
    } else {
        return [[BHCase1SectionControllerTwo alloc] init];
    }
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = @[
            [[BHCase1ModelOne new] initWithName:@"路飞1" sex:@"男" info:@"评论：这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释"],
            [[BHCase1ModelOne new] initWithName:@"路飞2" sex:@"男" info:@"评论：这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释"],
            [[BHCase1ModelOne new] initWithName:@"路飞3" sex:@"男" info:@"评论：这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释"],
            [[BHCase1ModelOne new] initWithName:@"路飞4" sex:@"男" info:@"评论：这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释"],
            [[BHCase1ModelTwo new] initWithInfo:@"⚠️⚠️ 我是一个广告 ⚠️⚠️"],
            [[BHCase1ModelOne new] initWithName:@"路飞5" sex:@"男" info:@"评论：这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释这里是注释"],
            [[BHCase1ModelOne new] initWithName:@"路飞6" sex:@"男" info:@"评论：这里是注释"]].mutableCopy;
    }
    return _dataArray;
}

@end
