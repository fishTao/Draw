//
//  ViewController.m
//  绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic ,strong) NSArray *array;
@property (nonatomic ,strong) NSArray *showArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _array =@[@"LienViewController",@"ShapeViewConntroller",@"ClrcleViewController",@"TextimageViewController"];
    _showArr=@[@"draw  Lien",@"draw  Shape",@"draw  Clcre",@"draw  textImage"];
    
    UITableView *mytable = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    mytable.delegate = self;
    mytable.dataSource = self;
    
    [self.view addSubview:mytable];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.array.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identfile = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identfile];
    
    if (cell == 0) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identfile];
        
    }
    
    cell.textLabel.text = self.showArr[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *controller = [NSClassFromString(_array[indexPath.row]) new];
    [self.navigationController pushViewController:controller animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
