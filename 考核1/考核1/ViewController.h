//
//  ViewController.h
//  考核1
//
//  Created by 萨缪 on 2018/8/6.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>
{
    UITableView * _tableView;
    
    NSArray * strArray1;
    
    NSArray * detailArray1;
    
    NSArray * detailArray2;
    
    NSArray * imageArray1;
    
    NSArray * btnArray1;
    
    NSArray * btnArray2;
    
    NSArray * btnArray3;
    
    NSArray * btnImageArray1;
    
    NSArray * btnImageArray2;
    
    NSArray * jiArray1;
    
    NSArray * jiImageArray1;
    
    NSArray * jiImageArray2;
    
    NSArray * numArray;
}

@end

