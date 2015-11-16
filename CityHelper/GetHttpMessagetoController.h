//
//  GetHttpMessagetoController.h
//  CityHelper
//
//  Created by LastDay on 15/10/21.
//  Copyright © 2015年 MrLoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpRequesCenter.h"
#import "CourselistViewController.h"




@interface GetHttpMessagetoController : NSObject

@property NSDictionary *dictionary;

-(NSDictionary *)getDictionary;
-(void)setHttp;


@end



