//
//  ViewController.m
//  HelloWorld
//
//  Created by Jee Yi on 3/11/16.
//  Copyright © 2016 Demo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;

@end

@implementation ViewController

-(IBAction)Enter {
    NSString *yourName = self.inputField.text;
    NSString *myCompany = NSLocalizedString(@"Box", @"Entity name");
    NSString *message;
    
    if ([yourName length] == 0) {
        yourName = NSLocalizedString(@"World", @"Default name");
    }
    
    if ([yourName isEqualToString:myCompany]) {
        message = [NSString stringWithFormat:NSLocalizedString(@"Go %@!", @"Go {name}!"), yourName];
    } else {
        message = [NSString stringWithFormat:NSLocalizedString(@"Hello %@.", @"Hello {name}."), yourName  ];
    }
    self.messageLabel.text = message;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
