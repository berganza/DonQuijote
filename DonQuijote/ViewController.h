//
//  ViewController.h
//  DonQuijote
//
//  Created by LLBER on 15/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UIImageView * aspas;
@property NSTimer * tiempo;
@property float angulo;
@property int contador;
@property int imagen;

@property float velocidad;

-(IBAction)rotacion:(id)sender;

@end
