//
//  alarmViewController.m
//  coadjutant
//
//  Created by John Sahil on 18/08/17.
//  Copyright © 2017 HARDCORE. All rights reserved.
//

#import "alarmViewController.h"

@interface alarmViewController ()

@end

@implementation alarmViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Actions


#pragma mark UITableView

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *alarmCell = [tableView dequeueReusableCellWithIdentifier:@""];
    if (alarmCell == nil) {
        alarmCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@""];
    }
    
    if (indexPath.section == 0)
    {
        alarmCell.textLabel.text = @"Repeat";
        alarmCell.detailTextLabel.text =@"Test";
    }
    else if (indexPath.section == 1)
    {
        alarmCell.textLabel.text = @"Sound";
        alarmCell.detailTextLabel.text = @"hell";
    }
    else if (indexPath.section == 2)
    {
        alarmCell.textLabel.text = @"Label";
        alarmCell.detailTextLabel.text = @"Wake Up !!!";
    }
    else if (indexPath.section == 3)
    {
        alarmCell.textLabel.text = @"Task";
        alarmCell.detailTextLabel.text = @"Underconstruction";
    }
    
    return alarmCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        weeklistViewController *week = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"weeklist"];
        [self.navigationController pushViewController:week animated:YES];
    }
    else if (indexPath.section == 1) {
        soundsViewController *sound = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"soundlist"];
        [self.navigationController pushViewController:sound animated:YES];
    }
    else if (indexPath.section == 2) {
        labelAlarmViewController *label = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"labelAlarm"];
        [self.navigationController pushViewController:label animated:YES];
    }
    else if (indexPath.section == 3) {
        
    }
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
