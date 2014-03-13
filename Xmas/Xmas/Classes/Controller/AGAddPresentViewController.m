/**
 * JBoss, Home of Professional Open Source
 * Copyright Red Hat, Inc., and individual contributors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * 	http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "AGAddPresentViewController.h"


@implementation AGAddPresentViewController
@synthesize toWhomTextField;
@synthesize description;
@synthesize password;
@synthesize isSecret;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (BOOL) validate {
    if ([toWhomTextField.text length] != 0 &&
        [description.text length] !=0 &&
        [password.text length] != 0) {
        return YES;
    } else {
        toWhomTextField.layer.borderColor = [[UIColor redColor]CGColor];
        toWhomTextField.layer.borderWidth = 1.0;
        description.layer.borderColor = [[UIColor redColor]CGColor];
        description.layer.borderWidth = 1.0;
        password.layer.borderColor = [[UIColor redColor]CGColor];
        password.layer.borderWidth = 1.0;
        return NO;
    }
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    return  [self validate];
}


@end
