//
//  BHCase1CollectionViewCellSuperOne.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import "BHCase1CollectionViewCellSuperOne.h"
#import "BHCase1ModelOne.h"
#import "NSObject+BHTextDeal.h"

@interface BHCase1CollectionViewCellSuperOne()

@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end

@implementation BHCase1CollectionViewCellSuperOne

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)bindViewModel:(BHCase1ModelOne *)viewModel {
    self.infoLabel.text = viewModel.info;
    self.infoLabel.textColor = [NSObject randomColor];
}


@end
