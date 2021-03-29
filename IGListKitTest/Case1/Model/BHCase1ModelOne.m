//
//  BHCase1ModelOne.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import "BHCase1ModelOne.h"
#import "NSObject+BHTextDeal.h"

@implementation BHCase1ModelOne

- (nonnull BHCase1ModelOne *)initWithName:(NSString *)name sex:(NSString *)sex info:(NSString *)info {
    self.name = name;
    self.sex = sex;
    self.info = info;
    self.textHeight = [NSObject getTextHeightWithText:info textWidth:[UIScreen mainScreen].bounds.size.width-40];
    return self;
}

- (nonnull id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object {
    return [self isEqual:object];
}


@end

