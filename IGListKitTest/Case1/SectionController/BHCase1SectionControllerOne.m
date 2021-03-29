//
//  BHCase1SectionControllerOne.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import "BHCase1SectionControllerOne.h"
#import "BHCase1ModelOne.h"
#import "BHCase1CollectionViewCellOne.h"
#import "BHCase1CollectionViewCellSuperOne.h"

@interface BHCase1SectionControllerOne()

@property (nonatomic, strong) BHCase1ModelOne *modelOne;

@property (nonatomic, assign) BOOL isOpen;

@end

@implementation BHCase1SectionControllerOne

- (void)didUpdateToObject:(id)object {
    if ([object isKindOfClass:BHCase1ModelOne.class]) {
        self.modelOne = object;
    }
}

- (NSInteger)numberOfItems {
    if (self.modelOne.isOpen) {
        return 2;
    }
    return self.isOpen ? 2 : 1;
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    if (!self.collectionContext) {
        return [UICollectionViewCell new];
    }
    if (index == 1) {
        BHCase1CollectionViewCellSuperOne *cell = [self.collectionContext dequeueReusableCellWithNibName:@"BHCase1CollectionViewCellSuperOne" bundle:nil forSectionController:self atIndex:index];
        [cell bindViewModel:self.modelOne];
        return cell;
    } else {
        BHCase1CollectionViewCellOne *cell = [self.collectionContext dequeueReusableCellWithNibName:@"BHCase1CollectionViewCellOne" bundle:nil forSectionController:self atIndex:index];
        [cell bindViewModel:self.modelOne];
        return cell;
    }
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    CGFloat tempWidth = self.collectionContext.containerSize.width?:0;
    if (index == 1) {
        return CGSizeMake(tempWidth, self.modelOne.textHeight+20);
    } else {
        return CGSizeMake(tempWidth, 120);
    }
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    __weak typeof(self) weakSelf = self;
    [self.collectionContext performBatchAnimated:YES updates:^(id<IGListBatchContext>  _Nonnull batchContext) {
        weakSelf.isOpen = !weakSelf.isOpen;
        [batchContext reloadSectionController:weakSelf];
    } completion:nil];
}

@end
