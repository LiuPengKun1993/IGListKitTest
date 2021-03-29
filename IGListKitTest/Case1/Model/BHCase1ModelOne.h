//
//  BHCase1ModelOne.h
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import <UIKit/UIKit.h>
#import <IGListDiffable.h>

NS_ASSUME_NONNULL_BEGIN

@interface BHCase1ModelOne : NSObject<IGListDiffable>

/** 姓名 */
@property (nonatomic, copy) NSString *name;
/** 描述 */
@property (nonatomic, copy) NSString *info;
/** 性别 */
@property (nonatomic, copy) NSString *sex;
/** 文本高度 */
@property (nonatomic, assign) CGFloat textHeight;
/** 是否允许折叠 */
@property (nonatomic, assign) BOOL isOpen;

/** 初始化方法 */
- (nonnull BHCase1ModelOne *)initWithName:(NSString *)name sex:(NSString *)sex info:(NSString *)info;

@end

NS_ASSUME_NONNULL_END
