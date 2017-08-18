//
//  ViewController.m
//  coadjutant
//
//  Created by John Sahil on 18/08/17.
//  Copyright © 2017 HARDCORE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DDClock *clock = [[DDClock alloc]initWithTheme:DDClockThemeDark frame:CGRectMake(20 , 93, 200, 200)];
    [self.view addSubview:clock];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Actions

- (IBAction)alarmPage:(id)sender {
    
    alarmViewController *alarm = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"alarmPage"];
    [self.navigationController pushViewController:alarm animated:YES];
    
}

#pragma mark UITableView

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = @"hell";
    cell.detailTextLabel.text = @"johell";
    
    return cell;
    
}


@end
