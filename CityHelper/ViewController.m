
//  ViewController.m
//  CityHelper
//
//  Created by MrLoong on 15/9/15.
//  Copyright (c) 2015年 MrLoong. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "HttpRequesCenter.h"
#import "CourselistViewController.h"
#import "GetHttpMessagetoController.h"
#import "LoginViewController.h"
#import "ClassViewController.h"
#import "DbHelper.h"
#import "GetManage.h"
#import "MainTabBarController.h"



@interface ViewController ()


//View
@property LoginViewController *loginViewController;
@property UINavigationController *classViewController;
@property MainTabBarController *mainTabBarController;


//model
@property(nonatomic,weak) NSNumber *weekNumber;
@property (nonatomic, copy) NSArray *prototypeEntitiesFromJSON;
@property (nonatomic, strong) NSMutableArray *feedEntitySections; // 2d array
@property NSString *dataFilePath;
@property NSData *data;
@property NSDictionary *rootDict ;
@property DbHelper *dbHelper;

@end
@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    [self initViewFrame];
    _dbHelper = [[DbHelper alloc] init];
    [_dbHelper LoadData];
    [GetManage setDbHerlper:_dbHelper];

    if([[_dbHelper searchCheck:@"ClassData"]  isEqual: @"yes"]&&[[_dbHelper searchCheck:@"Stalls"]  isEqual: @"yes"]){
        
      [self.view addSubview:_mainTabBarController.view];
    }else{
        
        [self.view addSubview:_loginViewController.view];
    }
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//初始化视图
-(void) initViewFrame{
    
    _loginViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Login"];
    _mainTabBarController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Root"];
    
}
//从云端获取数据
-(void) getClassMessageFromCloud{
    

}
@end
