//
//  ViewController.m
//  MyScrollView
//
//  Created by Graeme Harrison on 2016-01-25.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (nonatomic, strong) MyScrollView *myScrollView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyScrollView *myScrollView = [[MyScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    myScrollView.contentSize = CGSizeMake(self.view.frame.size.width, 750.0);
    [self.view addSubview:myScrollView];

//    UIView *mainView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    mainView.bounds = CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height);
//    [self.view addSubview:mainView];
    
    UIView *redView=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    [redView setBackgroundColor:[UIColor redColor]];
    [myScrollView addSubview:redView];
    
    UIView *greenView=[[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    [greenView setBackgroundColor:[UIColor greenColor]];
    [myScrollView addSubview:greenView];
    
    UIView *blueView=[[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    [blueView setBackgroundColor:[UIColor blueColor]];
    [myScrollView addSubview:blueView];
    
    UIView *yellowView=[[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    [yellowView setBackgroundColor:[UIColor yellowColor]];
    [myScrollView addSubview:yellowView];
}

-(void)viewDidAppear:(BOOL)animated {
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end