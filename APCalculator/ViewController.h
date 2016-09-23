//
//  ViewController.h
//  APCalculator
//
//  Created by Mac on 13/09/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kVeticalPadding 20.0
#define kHorizantalPadding 20.0
#define kAllUIElementHight 60.0
#define kHeightOfStatusBar 30.0

@interface ViewController : UIViewController
{
    UITextField *myTextField1;
    UITextField *myTextField2;
    UIButton *buttonAddition;
    UIButton *buttonSubtract;
    UIButton *buttonMultiplication;
    UIButton *buttonDivision;
    UIButton *buttonEqual;
    UILabel *labelDisplay;
   // UILabel *errorDisplay;
    NSString *newValueString;
    char oper;

}

@end

