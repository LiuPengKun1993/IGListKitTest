//
//  BHCase1ViewController.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/26.
//

#import "BHCase1ViewController.h"
#import <IGListKit.h>
#import "BHCase1ViewModel.h"

@interface BHCase1ViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) IGListAdapter *adapter;

@property (nonatomic, strong) BHCase1ViewModel *viewModel;

@end

@implementation BHCase1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Case1";
    self.adapter.collectionView = self.collectionView;
}

- (IGListAdapter *)adapter {
    if (!_adapter) {
        _adapter = [[IGListAdapter alloc] initWithUpdater:[IGListAdapterUpdater new] viewController:self];
        _adapter.dataSource = self.viewModel;
    }
    return _adapter;
}

- (BHCase1ViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [[BHCase1ViewModel alloc] init];
    }
    return _viewModel;
}

- (void)dealloc {
    NSLog(@"Case1 释放了");
}

@end
