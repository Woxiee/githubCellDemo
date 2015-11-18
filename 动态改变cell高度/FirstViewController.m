//
//  FirstViewController.m
//  动态改变cell高度
//
//  Created by shuangchun che on 14-3-2.
//  Copyright (c) 2014年 SIC-CA. All rights reserved.
//

#import "FirstViewController.h"
#import "MyCell.h"
@interface FirstViewController ()
@property (strong,nonatomic)NSArray * listArray;
@end

@implementation FirstViewController
@synthesize myTableview;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.listArray=@[@"发dsa反狂萨芬是反动拉反dsa发动机拉飞但赛a费 翻开放到是尽量空a 负担凯撒发动垃圾分量撒飞单孔啦发动啦发dsa了发冬季拉风dsa了发东辣椒粉东拉风dsa了发动啦发动啦饭带撒放量撒",@"uiojoj就放开胆萨拉金矿三a类",@"发动机拉负担塞卡积分两岁积分到死a级翻开dsa肯将空a级疯狂囧a卡发动反倒赛a就分开dsa及防盗笼a费淡扫a级疯狂赛a级发东甲a廊坊的撒酒疯老dsa发但赛a费东甲a廊坊的三就开动a级及防盗笼a级发两三反elkwqjrlewqje温江三房两撒娇就开动甲a翻开将发动机卡了反动啊",@"发dsa发动afs的erqerq",@"反动及a类反倒森警而完全恩将去嗯就父母代森撒旦法龙大"];
    
	// Do any additional setup after loading the view.
    self.myTableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.myTableview.delegate=self;
    self.myTableview.dataSource=self;
    [self.view addSubview:self.myTableview];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.listArray.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static  NSString *cellIn=@"haha";
    MyCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIn];
    
    
    if(cell==nil){
        cell=[[MyCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIn];
    }
    
    if(indexPath.row==0||indexPath.row==1){
        cell.myImageView.image=[UIImage imageNamed:@"firstBg5"];
    }
    
    cell.label.text=[self.listArray objectAtIndex:indexPath.row];
    return cell;
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize size = [[self.listArray objectAtIndex:indexPath.row] sizeWithFont:[UIFont systemFontOfSize:16.0f] constrainedToSize:CGSizeMake(290, 20000)];
    CGFloat height = size.height;
    
    if (height<30) //评论年内容的高度
    {
        height = 30;
    }else{
        height += 10;
    }
    
   // NSIndexPath *indexPath = [NSIndexPath indexPathForRow:indexPath.row inSection:0];
    
    if(indexPath.row==0||indexPath.row==1){
        height+=105;
    }
    
    height+=10; //加上“评论人”和“时间”Label的高度；
    
    return height;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
