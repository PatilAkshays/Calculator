//
//  ViewController.m
//  APCalculator
//
//  Created by Mac on 13/09/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat heightOfScreen =[[UIScreen mainScreen]bounds].size.height;
    
    CGFloat widthOfScreen = [[UIScreen mainScreen]bounds].size.width;
    
    UIView *backView =[[UIView alloc]initWithFrame:CGRectMake(0, kHeightOfStatusBar, widthOfScreen, heightOfScreen)];
    
    backView.backgroundColor = [UIColor redColor];
    backView.layer.borderColor = [UIColor blackColor].CGColor;
    backView.layer.borderWidth = 3;
    
    [self.view addSubview:backView];
    
    
    myTextField1 = [[UITextField alloc]initWithFrame:CGRectMake(kHorizantalPadding+20, 50, 150, kAllUIElementHight)];
    
    [myTextField1 setKeyboardType:UIKeyboardTypeNumberPad];
    
    [myTextField1 setFont:[UIFont boldSystemFontOfSize:25]];

    
    myTextField1.backgroundColor = [UIColor whiteColor];
    
    myTextField1.layer.cornerRadius=15;
    
    myTextField1.layer.borderColor = [UIColor blackColor].CGColor;
    myTextField1.layer.borderWidth = 3;
    
    [self.view addSubview:myTextField1];
    
    
    
    myTextField2 = [[UITextField alloc]initWithFrame:CGRectMake(220, 50, 150, kAllUIElementHight)];
    
    [myTextField2 setKeyboardType:UIKeyboardTypeNumberPad];
    
    [myTextField2 setFont:[UIFont boldSystemFontOfSize:25]];

    
    myTextField2.backgroundColor = [UIColor whiteColor];
    
    myTextField2.layer.cornerRadius=15;
    
    myTextField2.layer.borderColor = [UIColor blackColor].CGColor;
    myTextField2.layer.borderWidth = 3;
    
    [self.view addSubview:myTextField2];

    
    
    buttonAddition = [[UIButton alloc]initWithFrame:CGRectMake(kHorizantalPadding+20, 140, kAllUIElementHight, kAllUIElementHight)];
    
    buttonAddition.backgroundColor = [UIColor grayColor];
    
    buttonAddition.layer.cornerRadius = 15;
    
    buttonAddition.layer.borderColor = [UIColor yellowColor].CGColor;
    
    buttonAddition.layer.borderWidth = 3;
    
    [buttonAddition setTitle:@"+" forState:UIControlStateNormal];
    
    
    
    
    [buttonAddition setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
     buttonAddition.titleLabel.font = [UIFont systemFontOfSize:50];
    
    [buttonAddition addTarget:self action:@selector(handlerAddition) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonAddition];
    
    
    
    buttonSubtract = [[UIButton alloc]initWithFrame:CGRectMake(kHorizantalPadding+110, 140, kAllUIElementHight, kAllUIElementHight)];
    
    buttonSubtract.backgroundColor = [UIColor grayColor];
    
    buttonSubtract.layer.cornerRadius = 15;
    
    buttonSubtract.layer.borderColor = [UIColor yellowColor].CGColor;
    
    buttonSubtract.layer.borderWidth = 3;
    
    [buttonSubtract setTitle:@"-" forState:UIControlStateNormal];
    
    
    [buttonSubtract setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    buttonSubtract.titleLabel.font = [UIFont systemFontOfSize:50];
    
    [buttonSubtract addTarget:self action:@selector(handlerSubtraction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonSubtract];

    
    
    
    buttonMultiplication = [[UIButton alloc]initWithFrame:CGRectMake(kHorizantalPadding+190, 140, kAllUIElementHight, kAllUIElementHight)];
    
    buttonMultiplication.backgroundColor = [UIColor grayColor];
    
    buttonMultiplication.layer.cornerRadius = 15;
    
    buttonMultiplication.layer.borderColor = [UIColor yellowColor].CGColor;
    
    buttonMultiplication.layer.borderWidth = 3;
    
    [buttonMultiplication setTitle:@"*" forState:UIControlStateNormal];
    
    
    [buttonMultiplication setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    buttonMultiplication.titleLabel.font = [UIFont systemFontOfSize:50];
    
    [buttonMultiplication addTarget:self action:@selector(handlerMultiplication) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonMultiplication];

    
    
    
     buttonDivision = [[UIButton alloc]initWithFrame:CGRectMake(kHorizantalPadding+270, 140, kAllUIElementHight, kAllUIElementHight)];
    
    buttonDivision.backgroundColor = [UIColor grayColor];
    
    buttonDivision.layer.cornerRadius = 15;
    
    buttonDivision.layer.borderColor = [UIColor yellowColor].CGColor;
    
    buttonDivision.layer.borderWidth = 3;
    
    [buttonDivision setTitle:@"/" forState:UIControlStateNormal];
    
    
    [buttonDivision setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    buttonDivision.titleLabel.font = [UIFont systemFontOfSize:40];
    
    [buttonDivision addTarget:self action:@selector(handlerDivision) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonDivision];

    
    
    
    labelDisplay = [[UILabel alloc]initWithFrame:CGRectMake(200, 245, (3*kAllUIElementHight), kAllUIElementHight)];
    
    labelDisplay.layer.borderColor = [UIColor yellowColor].CGColor;
    labelDisplay.textAlignment = NSTextAlignmentCenter;
    
    labelDisplay.font =[UIFont boldSystemFontOfSize:25];
    
    labelDisplay.backgroundColor = [UIColor cyanColor];
    
    
    labelDisplay.layer.borderColor = [UIColor blackColor].CGColor;
    labelDisplay.layer.borderWidth = 3;
    

    
    [self.view addSubview:labelDisplay];
    
    
//    errorDisplay = [[UILabel alloc]initWithFrame:CGRectMake(80, 310, (5*kAllUIElementHight), 40)];
//    
//    errorDisplay.layer.borderColor = [UIColor yellowColor].CGColor;
//    errorDisplay.textAlignment = NSTextAlignmentCenter;
//    
//    errorDisplay.font =[UIFont boldSystemFontOfSize:25];
//    
//    errorDisplay.textColor = [UIColor whiteColor];
//    
//    errorDisplay.backgroundColor = [UIColor blackColor];
//    
//    [self.view addSubview:errorDisplay];
//    

    
    buttonEqual = [[UIButton alloc]initWithFrame:CGRectMake(175, 400, kAllUIElementHight+30, kAllUIElementHight+30)];
    
    buttonEqual.backgroundColor = [UIColor whiteColor];
    
    buttonEqual.layer.cornerRadius = 15;
    
    buttonEqual.layer.borderColor = [UIColor yellowColor].CGColor;
    
    buttonEqual.layer.borderWidth = 5;
    

    
    [buttonEqual setTitle:@"=" forState:UIControlStateNormal];
    
    [buttonEqual setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    buttonEqual.titleLabel.font = [UIFont systemFontOfSize:60];
    
    [buttonEqual addTarget:self action:@selector(handleEqual) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonEqual];
    

    
    
}

-(void)handlerAddition {
    
    oper='+';
    NSString *currentValueString = myTextField1.text;
    
    NSString *nextValueString = myTextField2.text;
    
    float currentValueFloat = currentValueString.floatValue;
    
    float nextValueFloat = nextValueString.floatValue;

    
    currentValueFloat = currentValueFloat+nextValueFloat;
        
    newValueString = [NSString stringWithFormat:@"%0.01f",currentValueFloat];
        
        //labelDisplay.text = newValueString;
    
}


-(void)handlerSubtraction {
    oper='-';
    NSString *currentValueString = myTextField1.text;
    
    NSString *nextValueString = myTextField2.text;
    
    float currentValueFloat = currentValueString.floatValue;
    
    float nextValueFloat = nextValueString.floatValue;
    
    
    currentValueFloat = currentValueFloat-nextValueFloat;
    
    newValueString = [NSString stringWithFormat:@"%0.01f",currentValueFloat];
    

}

-(void)handlerMultiplication {
    oper='*';
    NSString *currentValueString = myTextField1.text;
    
    NSString *nextValueString = myTextField2.text;
    
    float currentValueFloat = currentValueString.floatValue;
    
    float nextValueFloat = nextValueString.floatValue;
    
    
    currentValueFloat = currentValueFloat*nextValueFloat;
    
    newValueString = [NSString stringWithFormat:@"%0.01f",currentValueFloat];
    

}

-(void)handlerDivision {
    oper='/';
    NSString *currentValueString = myTextField1.text;
    
    NSString *nextValueString = myTextField2.text;
    
    float currentValueFloat = currentValueString.floatValue;
    
    float nextValueFloat = nextValueString.floatValue;
    
    
    currentValueFloat = currentValueFloat/nextValueFloat;
    
    newValueString = [NSString stringWithFormat:@"%0.01f",currentValueFloat];
    

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}


-(void) handleEqual{
   
    
    switch (oper) {
        case '+':[self handlerAddition];
            labelDisplay.text = [NSString stringWithFormat: @"%@",newValueString];
            
            
            break;
        case '-':[self handlerSubtraction];
            labelDisplay.text = [NSString stringWithFormat: @"%@",newValueString];
            
            break;
        case '*':[self handlerMultiplication];
            labelDisplay.text = [NSString stringWithFormat: @"%@",newValueString];
            break;
        case '/':[self handlerDivision];
            labelDisplay.text = [NSString stringWithFormat: @"%@",newValueString];
            break;
        default:
            break;
    }
//    if(myTextField1.text<0)
//    {
//        errorDisplay.text=@"Invalid01";
//    }
//    else if (myTextField2.text<0)
//    {
//        errorDisplay.text=@"Invalid02";
//        
//    }
//    else
//    {   errorDisplay.text=@"";
//        
//
//   }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
