//
//  MyCell.h
//  动态改变cell高度
//
//  Created by shuangchun che on 14-3-2.
//  Copyright (c) 2014年 SIC-CA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell
{
    UILabel *label;
}
@property (strong,nonatomic) UILabel *label;
@property (strong,nonatomic) UIImageView *myImageView;
@end
