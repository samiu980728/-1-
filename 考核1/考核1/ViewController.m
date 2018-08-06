//
//  ViewController.m
//  考核1
//
//  Created by 萨缪 on 2018/8/6.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "ViewController.h"
#import "JPXTableViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    [_tableView registerClass:[JPXTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    //设置代理
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    jiArray1 = [NSArray arrayWithObjects:@" ",@"山西太原",@" ",@"陕西西安",@" ",@"北京大学",@" ",@"清华大学",@" ",@"东南大学",@" ",@" ", nil];
    jiImageArray1 = [NSArray arrayWithObjects:@"39,.png",@"39,.png",@"40,.png",@"40,.png",@"26.jpg",@"42,.png",@"43,.png",@"43,.png",@"26.jpg",@"40,.png",@"26.jpg",@"25.jpg", nil];
    
    jiImageArray2 = [NSArray arrayWithObjects:@"26.jpg",@"22.jpg",@"39,.png",@"23.jpg",@"26.jpg",@"24.jpg",@"40,.png",@"25.jpg",@"26.jpg",@"26.jpg",@"43,.png",@"42,.png", nil];
    
    strArray1 = [NSArray arrayWithObjects:@" ",@" ",@"池诺",@" ",@"张淳",@" ",@"王梓丁",@" ",@"疯子",@" ",@"鸽子", nil];
    
    detailArray1 = [NSArray arrayWithObjects:@" ",@" ",@"风景大好",@" ",@"五光十色",@" ",@"囧囧有神",@" ",@"四面楚歌",@" ",@"风萧萧易水寒", nil];
    
    detailArray2 = [NSArray arrayWithObjects:@" ",@" ",@"陕西",@" ",@"东北",@" ",@"四川",@" ",@"大连",@" ",@"江苏", nil];
    
    //处理最后一个单元格被分栏控制器遮盖
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    JPXTableViewCell * cell1 = nil;
    UITableViewCell * cell2 = nil;
    UITableViewCell * cell3 = nil;
    if ( indexPath.row == 0 ){
        cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell2"];
        if ( cell2 == nil ){
            cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
            UIImageView * image1 = [[UIImageView alloc]init];
            UIImageView * image2 = [[UIImageView alloc] init];
            image1.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 180);
            image2.frame = CGRectMake(330, 130, 50, 50);
            image2.image = [UIImage imageNamed:@"41,.png"];
            image1.image = [UIImage imageNamed:@"2,.png"];
            
            UILabel * label = [[UILabel alloc] init];
            label.frame = CGRectMake(280, 150, 60, 20);
            label.font = [UIFont systemFontOfSize:13];
            label.text = @"萨缪";
            label.textColor = [UIColor whiteColor];
            
            [cell2.contentView addSubview:image1];
            [cell2.contentView addSubview:image2];
            [cell2.contentView addSubview:label];
            
        }
//        UIImageView * image1 = [[UIImageView alloc]init];
//        UIImageView * image2 = [[UIImageView alloc] init];
//        image1.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 180);
//        image2.frame = CGRectMake(330, 130, 50, 50);
//        image2.image = [UIImage imageNamed:@"41,.png"];
//        image1.image = [UIImage imageNamed:@"2,.png"];
//
//        UILabel * label = [[UILabel alloc] init];
//        label.frame = CGRectMake(280, 150, 60, 20);
//        label.font = [UIFont systemFontOfSize:13];
//        label.text = @"萨缪";
//        label.textColor = [UIColor whiteColor];
//
//        [cell2.contentView addSubview:image1];
//        [cell2.contentView addSubview:image2];
//        [cell2.contentView addSubview:label];
        return cell2;
    }
    else if (indexPath.row == 1 || indexPath.row == 3 || indexPath.row == 5 || indexPath.row == 7 || indexPath.row == 9){
        cell3 = [_tableView dequeueReusableCellWithIdentifier:@"cell3"];
        if (cell3 == nil){
            cell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell3"];
            UIImageView * image3 = [[UIImageView alloc] init];
            UIImageView * image4 = [[UIImageView alloc] init];
            image3.frame = CGRectMake(5, 5, 50, 50);
            image4.frame = CGRectMake(55, 35, 100, 150);
            image3.image = [UIImage imageNamed:@"44,.png"];
            image4.image = [UIImage imageNamed:@"21,.png"];
            
            image3.image = [UIImage imageNamed:[jiImageArray1 objectAtIndex:indexPath.row]];
            image4.image = [UIImage imageNamed:[jiImageArray2 objectAtIndex:indexPath.row]];
            
            
            UILabel * label1 = [[UILabel alloc] initWithFrame:CGRectMake(55, 190, 340, 15)];
            UILabel * label2 = [[UILabel alloc] initWithFrame:CGRectMake(55, 215, 200, 15)];
            label1.textColor = [UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f];
            label2.textColor = [UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f];
            label1.text = [jiArray1 objectAtIndex:indexPath.row];
            label2.text = @"昨天";
            
            UIImageView * image5 = [[UIImageView alloc] init];
            image5.frame = CGRectMake(375, 215, 30, 30);
            image5.image = [UIImage imageNamed:@"70,.png"];
            
            [cell3.contentView addSubview:image3];
            [cell3.contentView addSubview:image4];
            [cell3.contentView addSubview:image5];
            [cell3.contentView addSubview:label1];
            [cell3.contentView addSubview:label2];
        }
//        UIImageView * image3 = [[UIImageView alloc] init];
//        UIImageView * image4 = [[UIImageView alloc] init];
//        image3.frame = CGRectMake(5, 5, 50, 50);
//        image4.frame = CGRectMake(55, 35, 100, 150);
//        image3.image = [UIImage imageNamed:@"44,.png"];
//        image4.image = [UIImage imageNamed:@"21,.png"];
//
//        image3.image = [UIImage imageNamed:[jiImageArray1 objectAtIndex:indexPath.row]];
//        image4.image = [UIImage imageNamed:[jiImageArray2 objectAtIndex:indexPath.row]];
//
//
//        UILabel * label1 = [[UILabel alloc] initWithFrame:CGRectMake(55, 190, 340, 15)];
//        UILabel * label2 = [[UILabel alloc] initWithFrame:CGRectMake(55, 215, 200, 15)];
//        label1.textColor = [UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f];
//        label2.textColor = [UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f];
//        label1.text = [jiArray1 objectAtIndex:indexPath.row];
//        label2.text = @"昨天";
//
//        UIImageView * image5 = [[UIImageView alloc] init];
//        image5.frame = CGRectMake(375, 215, 30, 30);
//        image5.image = [UIImage imageNamed:@"70,.png"];
//
//        [cell3.contentView addSubview:image3];
//        [cell3.contentView addSubview:image4];
//        [cell3.contentView addSubview:image5];
//        [cell3.contentView addSubview:label1];
//        [cell3.contentView addSubview:label2];
        
        return cell3;
    }
    
    if ( indexPath.row == 2 || indexPath.row == 4 || indexPath.row == 6 || indexPath.row == 8 || indexPath.row == 10){
        cell1 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
        cell1.strLabel1.text = [strArray1 objectAtIndex:indexPath.row];
        cell1.image1.image = [UIImage imageNamed:[jiImageArray1 objectAtIndex:indexPath.row]];
        cell1.image2.image = [UIImage imageNamed:[jiImageArray2 objectAtIndex:indexPath.row]];
        cell1.strLabel1.text = [strArray1 objectAtIndex:indexPath.row];
        cell1.strLabel2.text = [detailArray1 objectAtIndex:indexPath.row];
        cell1.strLabel3.text = [detailArray2 objectAtIndex:indexPath.row];
        
        
    }
    
    return cell1;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithTitle:@"发现" style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.leftBarButtonItem = item;
    self.navigationController.navigationBar.backgroundColor = [UIColor blackColor];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 ){
        return 200;
    }
    else{
        return 300;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 11;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
