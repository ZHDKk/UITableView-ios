//
//  ViewController.h
//  UITableView
//
//  Created by zh dk on 2017/8/28.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    //定义一个数据视图对象，用来显示大量相同格式的数据
    UITableView *_tableView;
}


@end

