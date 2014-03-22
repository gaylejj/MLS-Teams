//
//  JJViewController.h
//  Soccer Teams Array Practice
//
//  Created by Jeff Gayle on 2/24/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLS.h"

@interface JJViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *locationLabel;
@property (strong, nonatomic) IBOutlet UIImageView *jerseyView;
@property (nonatomic, strong) NSMutableArray *soccerTeams;
@property (nonatomic) int currentIndex;

- (IBAction)newTeamButtonPressed:(UIBarButtonItem *)sender;

@end
