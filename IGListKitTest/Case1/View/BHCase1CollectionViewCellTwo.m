//
//  BHCase1CollectionViewCellTwo.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import "BHCase1CollectionViewCellTwo.h"
#import "BHCase1ModelTwo.h"

@interface BHCase1CollectionViewCellTwo()

@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end

@implementation BHCase1CollectionViewCellTwo

- (void)bindViewModel:(BHCase1ModelTwo *)viewModel {
    self.infoLabel.text = viewModel.info;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

@end
