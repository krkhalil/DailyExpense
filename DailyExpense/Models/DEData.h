//
//  DEData.h
//  DailyExpense
//
//  Created by Macbook on 03/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DEData : NSObject

+(void) removeDailyData;

+(void) addExpenseToArray:(NSString *)title setDate:(NSString *)date setDetail:(NSString *)detail setAmount:(NSString *)amount;

+(NSMutableArray *) getExpenseArray;




+(void) addIncomeToArray:(NSString *)title setDate:(NSString *)date setDetail:(NSString *)detail setAmount:(NSString *)amount;

+(NSMutableArray *) getIncomeArray;



+(void) setTotalIncome:(NSString *)amount;

+(int) getTotalIncome;



+(void) setTotalExpense:(NSString *)amount;

+(int) getTotalExpense;



+(void) addMonthlyData:(NSString *)income setExpense:(NSString *)expense setmonth:(NSString *)month setsavings:(NSString *)savings;

+(NSMutableArray *) getMonthlyData;

@end

NS_ASSUME_NONNULL_END
