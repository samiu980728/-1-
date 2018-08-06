//
//  JPXTableViewCell.m
//  考核1
//
//  Created by 萨缪 on 2018/8/6.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "JPXTableViewCell.h"

@implementation JPXTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        _image1 = [[UIImageView alloc] init];
        _image2 = [[UIImageView alloc] init];
        
        _strLabel1 = [[UILabel alloc] init];
        _strLabel2 = [[UILabel alloc] init];
        _strLabel3 = [[UILabel alloc] init];
        _strLabel4 = [[UILabel alloc] init];
        _strLabel5 = [[UILabel alloc] init];
        
        [self.contentView addSubview:_image1];
        [self.contentView addSubview:_image2];
        [self.contentView addSubview:_strLabel1];
        [self.contentView addSubview:_strLabel2];
        [self.contentView addSubview:_strLabel3];
        [self.contentView addSubview:_strLabel4];
        [self.contentView addSubview:_strLabel5];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _image1.frame =CGRectMake(10, 5, 50, 50);
    _strLabel1.frame = CGRectMake(60, 5, 120, 20);
    _strLabel2.frame = CGRectMake(60, 30, 250, 20);
    
    _image2.frame = CGRectMake(60, 35, 125, 100);
    _strLabel3.frame = CGRectMake(60, 140, 130, 20);
    _strLabel4.frame = CGRectMake(60, 170, 130, 15);
    
    _strLabel5.frame = CGRectMake(60, 200, 300, 20);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
