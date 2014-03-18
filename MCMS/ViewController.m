//
//  ViewController.m
//  MCMS
//
//  Created by Jian Yao Ang on 3/18/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *creatures;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MagicalCreature *Frodo = [[MagicalCreature alloc]init];
    Frodo.name = @"Frodo";
    
    MagicalCreature *Bilbo = [[MagicalCreature alloc] init];
    Bilbo.name= @"Bilbo";
    
    MagicalCreature *Sam = [[MagicalCreature alloc]init];
    Sam.name =@"Sam";
    
    creatures = [NSMutableArray arrayWithObjects:@"Frodo",@"Bilbo",@"Sam", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return creatures.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PrototypeCells"];
    cell.textLabel.text = creatures[indexPath.row];
    return cell;
    
}




@end
