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
    NSString *line1;
    NSString *line2;
    int count = arc4random_uniform(74) % 3;
    
    if (yourName == nil || [yourName length] == 0) {
        yourName = NSLocalizedString(@"World", @"Default name");
    }
    
    if ([yourName isEqualToString:myCompany]) {
        message = [NSString stringWithFormat:NSLocalizedString(@"Go %@!", @"Go {name}!"), yourName];
    } else {
        line1 = NSLocalizedString(@"Hello %@.\nWelcome back!", @"Hello {name}.\nWelcome back!");
        line1 = [NSString stringWithFormat:line1, yourName];
        line2 = NSLocalizedString(@"You have %d songs today.", @"You have {count} songs today.");
        line2 = [NSString localizedStringWithFormat:line2, count];
        message = [NSString stringWithFormat: @"%@\n%@", line1, line2];
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
