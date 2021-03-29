//
//  NSObject+BHTextDeal.h
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (BHTextDeal)

/**
 通过IconFont的形式创建图片
 * 例如 [UIImage imageWithIconFontName:@"iconfont" fontSize:100 text:@"\U0000e603" color:[UIColor greenColor]]

 @param iconFontName iconFont的name
 @param fontSize 字体的大小
 @param text 文本信息<unicode>
 @param color 颜色
 @return 创建的图片
 */
+ (UIImage *)imageWithIconFontName:(NSString *)iconFontName fontSize:(CGFloat)fontSize text:(NSString *)text color:(UIColor *)color;

/** 随机颜色 */
- (UIColor *)randomColor;

/** 获取文本高度 */
+ (CGFloat)getTextHeightWithText:(NSString *)text textWidth:(CGFloat)textWidth;

@end

NS_ASSUME_NONNULL_END
