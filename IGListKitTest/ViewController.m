//
//  ViewController.m
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/25.
//

#import "ViewController.h"
#import "IGListKitTest-Swift.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, copy) NSArray *dataArray;

@end

@implementation ViewController


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cellId"];
    }
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            [self.navigationController pushViewController:[NSClassFromString(@"BHCase1ViewController") new] animated:YES];
            break;
        case 1:
            [self.navigationController pushViewController:[BHCase2ViewController new] animated:YES];
            break;;
        default:
            break;
    }
}

- (NSArray *)dataArray {
    if (!_dataArray) {
        _dataArray = @[@"Case1", @"Case2"];
    }
    return _dataArray;
}

@end
