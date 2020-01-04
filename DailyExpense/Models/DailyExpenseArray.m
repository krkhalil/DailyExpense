//
//  DailyExpenseArray.m
//  DailyExpense
//
//  Created by Macbook on 03/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "settings.h"

@implementation settings




+(void) addToData:(NSString *)title setDate:(NSString *)date setDetail:(NSString *)detail setAmount:(NSString *)amount
{
    
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"DailyExpenseArray"];
    
    NSMutableDictionary * a = [[NSMutableDictionary alloc] init];
    
    [a setObject:title forKey:@"title"];
    [a setObject:date forKey:@"date"];
    [a setObject:detail forKey:@"detail"];
    [a setObject:amount forKey:@"amount"];
    
    [arr addObject:a];
    
    [[NSUserDefaults standardUserDefaults] setObject:arr forKey:@"DailyExpenseArray"];
    
    
}

+(NSMutableArray *) getExpenseArray
{
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"DailyExpenseArray"];
    
    return arr;
}


@end
