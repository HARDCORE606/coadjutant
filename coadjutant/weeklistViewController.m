//
//  weeklistViewController.m
//  coadjutant
//
//  Created by John Sahil on 18/08/17.
//  Copyright © 2017 HARDCORE. All rights reserved.
//

#import "weeklistViewController.h"

@interface weeklistViewController ()
{
    NSArray *week;
    NSArray *weekthumbnails;
}
@end

@implementation weeklistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    week = [[NSArray alloc]initWithObjects:@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday",@"Sunday", nil];
    weekthumbnails = [[NSArray alloc]initWithObjects:@"monday.png",@"tuesday.png",@"wednesday.png",@"thursday.png",@"friday.png",@"saturday.png",@"sunday.png", nil];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableView

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return week.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *weekCell = [tableView dequeueReusableCellWithIdentifier:@"weekCell"];
    
    if (weekCell == nil) {
        weekCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"weekCell"];
    }
    
    UIFont *myFont = [UIFont fontWithName:@"Arial" size:20.0];
    weekCell.textLabel.font = myFont;
    weekCell.textLabel.text = [week objectAtIndex:indexPath.row];
    //weekCell.textLabel.textColor = [UIColor whiteColor];
    //weekCell.backgroundColor = [UIColor darkGrayColor];
    weekCell.imageView.image = [UIImage imageNamed:[weekthumbnails objectAtIndex:indexPath.row]];
    
    return weekCell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
