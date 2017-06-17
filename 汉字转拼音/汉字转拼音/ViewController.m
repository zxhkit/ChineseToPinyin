//
//  ViewController.m
//  汉字转拼音
//
//  Created by zhouxuanhe on 2017/5/3.
//  Copyright © 2017年 mamahome. All rights reserved.
//

#import "ViewController.h"
#import "NSString+pinyin.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *one;
@property (weak, nonatomic) IBOutlet UILabel *two;
@property (weak, nonatomic) IBOutlet UILabel *three;
@property (weak, nonatomic) IBOutlet UILabel *upper;
@property (weak, nonatomic) IBOutlet UILabel *lower;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -
#pragma mark - 初始化界面
-(void)setupUI
{
    NSLog(@"拼音-:%@ \n首字母-:%@",[_three.text transformToPinyin],[_three.text transformToPinyinFirstLetter]);
    
}

- (IBAction)clickButton:(id)sender {
    _two.text = [_one.text transformToPinyin];
    _three.text = [_one.text transformToPinyinFirstLetter];
    _upper.text = [_two.text transformTouppercase];
    _lower.text = [_two.text transformTolowercase];
}


@end
