//
//  BHCase1ModelTwo.h
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import <Foundation/Foundation.h>
#import <IGListDiffable.h>

NS_ASSUME_NONNULL_BEGIN

@interface BHCase1ModelTwo : NSObject<IGListDiffable>

/** 描述 */
@property (nonatomic, copy) NSString *info;

/** 初始化方法 */
- (nonnull BHCase1ModelTwo *)initWithInfo:(NSString *)info;

@end

NS_ASSUME_NONNULL_END
