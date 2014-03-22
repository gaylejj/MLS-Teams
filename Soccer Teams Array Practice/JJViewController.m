//
//  JJViewController.m
//  Soccer Teams Array Practice
//
//  Created by Jeff Gayle on 2/24/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

#import "JJViewController.h"

@interface JJViewController ()

@end

@implementation JJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MLS *sounders = [[MLS alloc]init];
    sounders.teamName = @"Sounders";
    sounders.teamLocation = @"Seattle";
    sounders.jerseyImage = [UIImage imageNamed:@"Sounders.jpeg"];
    
    MLS *nyRedBulls = [[MLS alloc]init];
    nyRedBulls.teamName = @"Red Bulls";
    nyRedBulls.teamLocation = @"New York";
    nyRedBulls.jerseyImage = [UIImage imageNamed:@"NY Red Bulls.jpg"];
    
    MLS *losAngGalaxy = [[MLS alloc]init];
    losAngGalaxy.teamName = @"Galaxy";
    losAngGalaxy.teamLocation = @"Los Angeles";
    losAngGalaxy.jerseyImage = [UIImage imageNamed:@"LA Galaxy.jpg"];
    
    MLS *sportingKansasCity = [[MLS alloc]init];
    sportingKansasCity.teamName = @"Sporting";
    sportingKansasCity.teamLocation = @"Kansas City";
    sportingKansasCity.jerseyImage = [UIImage imageNamed:@"Sporting KC.jpeg"];
                         
    self.soccerTeams = [[NSMutableArray alloc]init];
    [self.soccerTeams addObject:sounders];
    [self.soccerTeams addObject:nyRedBulls];
    [self.soccerTeams addObject:losAngGalaxy];
    [self.soccerTeams addObject:sportingKansasCity];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newTeamButtonPressed:(UIBarButtonItem *)sender {
    int numberOfTeams = [self.soccerTeams count];
    int randomIndex = arc4random() % numberOfTeams;
    MLS *randomTeam = [self.soccerTeams objectAtIndex:randomIndex];
    
    self.jerseyView.image = randomTeam.jerseyImage;
    self.nameLabel.text = randomTeam.teamName;
    self.locationLabel.text = randomTeam.teamLocation;
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0) {
        randomIndex ++;
    }
    else if (self.currentIndex == randomIndex)
    {
        randomIndex --;
    }
    
    self.currentIndex = randomIndex;
    sender.title = @"Choose another team!";
}
@end
