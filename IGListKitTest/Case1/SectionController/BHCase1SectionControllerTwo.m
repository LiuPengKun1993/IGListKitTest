//
//  BHCase1SectionControllerTwo.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import "BHCase1SectionControllerTwo.h"
#import "BHCase1ModelTwo.h"
#import "BHCase1CollectionViewCellTwo.h"

@interface BHCase1SectionControllerTwo()

@property (nonatomic, strong) BHCase1ModelTwo *modelTwo;

@end

@implementation BHCase1SectionControllerTwo

- (void)didUpdateToObject:(id)object {
    if ([object isKindOfClass:BHCase1ModelTwo.class]) {
        self.modelTwo = object;
    }
}

- (NSInteger)numberOfItems {
    if (!self.modelTwo) {
        return 0;
    }
    return 1;
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    if (!self.collectionContext) {
        return [UICollectionViewCell new];
    }
    BHCase1CollectionViewCellTwo *cell = [self.collectionContext dequeueReusableCellWithNibName:@"BHCase1CollectionViewCellTwo" bundle:nil forSectionController:self atIndex:index];
    [cell bindViewModel:self.modelTwo];
    return cell;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    CGFloat tempWidth = self.collectionContext.containerSize.width?:0;
    return CGSizeMake(tempWidth, 45);
}

@end
