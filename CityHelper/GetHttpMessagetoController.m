//
//  GetHttpMessagetoController.m
//  CityHelper
//
//  Created by LastDay on 15/10/21.
//  Copyright © 2015年 MrLoong. All rights reserved.
//

#import "GetHttpMessagetoController.h"


@interface GetHttpMessagetoController() <HttpRequesCenterProtocol>



@end


@implementation GetHttpMessagetoController

-(void)setHttp{
    
    
    NSLog(@"ok");
    
}


-(NSDictionary *)getDictionary{
    NSLog(@"2");
    return _dictionary;
    
}


-(void)subscriptionMessage:(id)message httpNumber:(NSString *)httpNumber{
    
    NSLog(@"==%@",message[@"name"]);
}




@end
