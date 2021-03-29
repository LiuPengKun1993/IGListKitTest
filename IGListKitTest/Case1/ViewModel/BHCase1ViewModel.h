//
//  BHCase1ViewModel.h
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/26.
//

#import <Foundation/Foundation.h>
#import <IGListKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BHCase1ViewModel : NSObject<IGListAdapterDataSource>

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

NS_ASSUME_NONNULL_END
