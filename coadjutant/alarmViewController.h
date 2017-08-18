//
//  alarmViewController.h
//  coadjutant
//
//  Created by John Sahil on 18/08/17.
//  Copyright © 2017 HARDCORE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "weeklistViewController.h"
#import "soundsViewController.h"
#import "labelAlarmViewController.h"

@interface alarmViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIDatePicker *timePkr;
@property (weak, nonatomic) IBOutlet UITableView *alarmTable;


@end
