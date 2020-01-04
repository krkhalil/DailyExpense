//
//  DEData.m
//  DailyExpense
//
//  Created by Macbook on 03/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "DEData.h"

@implementation DEData


+(void) removeDailyData
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"DailyExpenseArray"];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"DailyIncomeArray"];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"DailyTotalIncome"];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"DailyTotalExpense"];
    
}

+(void) addExpenseToArray:(NSString *)title setDate:(NSString *)date setDetail:(NSString *)detail setAmount:(NSString *)amount
{
    
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"DailyExpenseArray"])
    {
        arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"DailyExpenseArray"];
    }
    
     NSMutableArray * arr2 = [[NSMutableArray alloc] initWithArray:arr ];
    
    NSMutableDictionary * a = [[NSMutableDictionary alloc] init];
    
    [a setObject:title forKey:@"title"];
    [a setObject:date forKey:@"date"];
    [a setObject:detail forKey:@"detail"];
    [a setObject:amount forKey:@"amount"];
    
    if (arr2)
    {
        
        [arr2 addObject:a];
    }
    else
    {
        NSMutableArray * arr2 = [[NSMutableArray alloc] init];
        [arr2 addObject:a];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:arr2 forKey:@"DailyExpenseArray"];
    
    
}

+(NSMutableArray *) getExpenseArray
{
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"DailyExpenseArray"];
    
    return arr;
}



+(void) addIncomeToArray:(NSString *)title setDate:(NSString *)date setDetail:(NSString *)detail setAmount:(NSString *)amount
{
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"DailyIncomeArray"])
    {
          arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"DailyIncomeArray"];
    }
    
   
    
    NSMutableArray * arr2 = [[NSMutableArray alloc] initWithArray:arr ];
    
    
    NSMutableDictionary * a = [[NSMutableDictionary alloc] init];
    
    [a setObject:title forKey:@"title"];
    [a setObject:date forKey:@"date"];
    [a setObject:detail forKey:@"detail"];
    [a setObject:amount forKey:@"amount"];
    
    if (arr2)
    {
        
        [arr2 addObject:a];
    }
    else
    {
        NSMutableArray * arr2 = [[NSMutableArray alloc] init];
         [arr2 addObject:a];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:arr2 forKey:@"DailyIncomeArray"];
}

+(NSMutableArray *) getIncomeArray
{
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"DailyIncomeArray"];
    
    return arr;
}



+(void) setTotalIncome:(NSString *)amount
{
     [[NSUserDefaults standardUserDefaults] setObject:amount forKey:@"DailyTotalIncome"];
}

+(int) getTotalIncome
{
    NSString * arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"DailyTotalIncome"];
    
    int a;
    
    if (arr.length > 0)
    {
        a= [arr integerValue];
    }
    else
    {
        a=0;
    }
     return a;
}


+(void) setTotalExpense:(NSString *)amount
{
    [[NSUserDefaults standardUserDefaults] setObject:amount forKey:@"DailyTotalExpense"];
}

+(int) getTotalExpense
{
    NSString * arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"DailyTotalExpense"];
    
    int a;
    
    if (arr.length > 0)
    {
        a= [arr integerValue];
    }
    else
    {
        a=0;
    }
    
    return a;
}



+(void) addMonthlyData:(NSString *)income setExpense:(NSString *)expense setmonth:(NSString *)month setsavings:(NSString *)savings
{
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"MonthlyArray"])
    {
        arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"MonthlyArray"];
    }
    
    
     NSMutableArray * arr2 = [[NSMutableArray alloc] initWithArray:arr ];
    
    NSMutableDictionary * a = [[NSMutableDictionary alloc] init];
    
    [a setObject:income forKey:@"income"];
    [a setObject:expense forKey:@"expense"];
    [a setObject:month forKey:@"month"];
    [a setObject:savings forKey:@"savings"];
    
    if (arr2)
    {
        
        [arr2 addObject:a];
    }
    else
    {
        NSMutableArray * arr2 = [[NSMutableArray alloc] init];
        [arr2 addObject:a];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:arr2 forKey:@"MonthlyArray"];
}

+(NSMutableArray *) getMonthlyData
{
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    arr = [[NSUserDefaults standardUserDefaults] objectForKey:@"MonthlyArray"];
    
    return arr;
}



@end
