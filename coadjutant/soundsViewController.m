//
//  soundsViewController.m
//  coadjutant
//
//  Created by John Sahil on 18/08/17.
//  Copyright © 2017 HARDCORE. All rights reserved.
//

#import "soundsViewController.h"

@interface soundsViewController ()
{
    NSArray *sound;
    AVAudioPlayer *audio;
}

@end

@implementation soundsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    sound = [[NSArray alloc]initWithObjects:@"Amonkira Prayer",@"Anderson on VidComm", nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UITableView required methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return sound.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *soundcell = [tableView dequeueReusableCellWithIdentifier:@"soundcell"];
    if (soundcell == nil) {
        soundcell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"soundcell"];
    }
    soundcell.textLabel.text = [sound objectAtIndex:indexPath.row];
    
    return soundcell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self playRingtone];
}

#pragma Audio Play

-(void)playRingtone{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"Amonkira Prayer" ofType:@"mp3"];
    audio = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    [audio play];
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
