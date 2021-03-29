//
//  BHCase1CollectionViewCellOne.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

#import "BHCase1CollectionViewCellOne.h"
#import "BHCase1ModelOne.h"
#import "NSObject+BHTextDeal.h"

@interface BHCase1CollectionViewCellOne()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *sexLabel;
@property (weak, nonatomic) IBOutlet UISwitch *isOpen;

@property (nonatomic, strong) BHCase1ModelOne *viewModel;

@end

@implementation BHCase1CollectionViewCellOne

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
}
- (IBAction)openSwitchState:(UISwitch *)sender {
    self.viewModel.isOpen = sender.on;
}

- (void)bindViewModel:(BHCase1ModelOne *)viewModel {
    self.viewModel = viewModel;
    self.iconImageView.image = [NSObject imageWithIconFontName:@"iconfont" fontSize:80 text:@"\U0000e60f" color:[NSObject randomColor]];
    self.nameLabel.text = viewModel.name;
    self.sexLabel.text = viewModel.sex;
    self.isOpen.on = viewModel.isOpen;
}

@end
