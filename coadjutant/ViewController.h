//
//  ViewController.h
//  coadjutant
//
//  Created by John Sahil on 18/08/17.
//  Copyright © 2017 HARDCORE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DDClock.h>
#import "alarmViewController.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *table;
@property (weak, nonatomic) IBOutlet UILabel *locLbl;
@property (weak, nonatomic) IBOutlet UILabel *tempLbl;
@property (weak, nonatomic) IBOutlet UILabel *weatherLbl;


@end

