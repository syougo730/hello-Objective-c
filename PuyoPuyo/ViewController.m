//
//  ViewController.m
//  PuyoPuyo
//
//  Created by 本間奨悟 on 2022/05/11.
//

#import "ViewController.h"
#import "Puyo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"Hello World!");
    
    UILabel *label = [[UILabel alloc] init]; //UILabelを宣言
    label.text = @"Hello World!!";  //labelのtextプロパティに文字列を指定
    [label sizeToFit];  //挿入した文字列に対して適切なサイズのラベルにする
    label.center = self.view.center;
    //[self.view addSubview:label];  //ViewController(self)に設定
    
    Puyo *puyo = [[Puyo alloc] initWithFrame:self.view.bounds];  //viewを準備
    [self.view addSubview:puyo];
    
}



@end
