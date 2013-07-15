//
//  ViewController.m
//  DonQuijote
//
//  Created by LLBER on 15/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contador=1;
    _velocidad = 0.001;
    _imagen=1;
}

-(IBAction)rotacion:(id)sender {
    
    if (_contador==1) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:15];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
        _tiempo = [NSTimer scheduledTimerWithTimeInterval:_velocidad
                                                   target:self
                                                 selector:@selector(temporizador:)
                                                 userInfo:nil
                                                  repeats:YES];
        [UIView commitAnimations];
        
        _contador=2;
        
    } else {
        
        [_tiempo invalidate];
        _contador=1;
    }
}

-(void)temporizador:(NSTimer *) timer {
    
    _angulo += 0.01;
    if (_angulo > 6.283) {
        _angulo=0;
    }
    CGAffineTransform rotar = CGAffineTransformMakeRotation(_angulo);
    _aspas.transform = rotar;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
