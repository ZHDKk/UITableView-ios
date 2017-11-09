//
//  ViewController.m
//  UITableView
//
//  Created by zh dk on 2017/8/28.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建数据视图
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds  style:UITableViewStyleGrouped];
    //设置数据视图的代理对象
    _tableView.delegate = self;
    //设置数据视图的数据源对象
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
}

//获取每组元素的个数，必须要实现的协议函数
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
//设置数据视图的组数
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

//创建单元格对象函数
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellStr = @"cell";
    UITableViewCell* cell= [_tableView dequeueReusableCellWithIdentifier:cellStr];
    
    if (cell == nil) {
        //创建一个单元格对象  参数一：UITableViewCellStyleDefault:单元格样式。 参数二：单元格复用标记
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    
    NSString *str=[NSString stringWithFormat:@"第%ld组,第%ld行",indexPath.section,indexPath.row];
    cell.textLabel.text = str;
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
