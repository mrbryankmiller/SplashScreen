//
//  ViewController.m
//  SplashScreen
//
//  Created by Bryan  Miller on 7/5/16.
//  Copyright © 2016 TheIronYard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
   // self.view.backgroundColor = [UIColor redColor];
    
    // animate the view
    self.view.backgroundColor = [UIColor whiteColor];

//        [UIView animateWithDuration:3.0 animations:^{
//            
//            self.view.backgroundColor = [UIColor redColor];
//            
//        }];
    
    
     //animate view with duration and have a callback
       [UIView animateWithDuration:4.0 animations:^{
    
           // for the animations
           self.view.backgroundColor = [UIColor redColor];

    
    
       } completion:^(BOOL finished) {

           [self mySecondAnimation];
           
          // [self anyAnimationIWant: [UIColor redColor]     ];


//           //start inner animation
//           [UIView animateWithDuration:4.0 animations:^{
//               
//               self.welcomeLabel.alpha= 1.0;
//               
//               self.view.backgroundColor = [UIColor orangeColor];
//               
//           }];//end inner animation
           
       }];//end completion
    

}

-(void)mySecondAnimation{
//start inner animation
    [UIView animateWithDuration:4.0 animations:^{
        
        self.welcomeLabel.alpha= 0;
        
        self.view.backgroundColor = [UIColor orangeColor];
        
    }];//end inner animation
}

-(void)anyAnimationIWant:(UIColor *)theColorIWantToUse{
    //start inner animation
    [UIView animateWithDuration:2.0 animations:^{
        
        self.welcomeLabel.alpha= 1.0;
        
        self.view.backgroundColor = theColorIWantToUse;
        
    }];//end inner animation
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
