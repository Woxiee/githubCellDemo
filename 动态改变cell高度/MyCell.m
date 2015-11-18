//
//  MyCell.m
//  动态改变cell高度
//
//  Created by shuangchun che on 14-3-2.
//  Copyright (c) 2014年 SIC-CA. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
       // CGFloat height = [self heightContentBackgroundView:commentModel.content];
        self.label=[[UILabel alloc]initWithFrame:CGRectMake(0, 3, 320, 60)];
        self.label.numberOfLines=0;
        self.label.lineBreakMode=NSLineBreakByCharWrapping;
        
        self.label.backgroundColor=[UIColor clearColor];
        [self addSubview:self.label];
        
        self.myImageView=[[UIImageView alloc]initWithFrame:CGRectZero];
        [self addSubview:self.myImageView];
    }
    return self;
}

-(void)layoutSubviews{
    CGFloat height = [self heightContentBackgroundView:self.label.text];
    self.label.frame=CGRectMake(0, 5, 320, height);
    if(self.myImageView.image)
        self.myImageView.frame=CGRectMake(5, self.label.bottom, 100, 100);
    
    
}

- (CGFloat)heightContentBackgroundView:(NSString *)content
{
    CGFloat height = [self heigtOfLabelForFromString:content fontSizeandLabelWidth:290 andFontSize:16.0];
    if (height<30)
    {
        height = 30;
    }
    height += 10;
    
    return height;
}

- (CGFloat)heigtOfLabelForFromString:(NSString *)text fontSizeandLabelWidth:(CGFloat)width andFontSize:(CGFloat)fontSize
{
    
    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(width, 20000)];
    return size.height;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
