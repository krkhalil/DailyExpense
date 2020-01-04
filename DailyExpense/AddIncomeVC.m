//
//  AddIncomeVC.m
//  DailyExpense
//
//  Created by Macbook on 03/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "AddIncomeVC.h"
#import "DEData.h"

@interface AddIncomeVC ()

@end

@implementation AddIncomeVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = false;

}

- (IBAction)addIncomeButtinTouched:(id)sender
{
    [DEData addIncomeToArray:_titleTextField.text setDate:@"1" setDetail:@"1" setAmount:_amountTextField.text];
    
    
    int a = [DEData getTotalIncome];
    
    if (_amountTextField.text.length > 0)
    {
        int b = [_amountTextField.text integerValue];
        a = a+b;
     
        [DEData setTotalIncome:[NSString stringWithFormat:@"%d",a]];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
}


@end
