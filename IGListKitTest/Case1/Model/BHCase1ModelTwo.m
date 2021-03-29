//
//  BHCase1ModelTwo.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import "BHCase1ModelTwo.h"

@implementation BHCase1ModelTwo

- (BHCase1ModelTwo *)initWithInfo:(NSString *)info {
    self.info = info;
    return self;
}

- (nonnull id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object {
    return [self isEqual:object];
}

@end
