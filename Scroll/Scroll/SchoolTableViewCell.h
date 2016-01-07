//
//  SchoolTableViewCell.h
//  SchoolTron
//
//  Created by SRM Technologies on 31/07/15.
//  Copyright (c) 2015 SRM Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

static NSString * const kCellIDTitleMain = @"CellWithTitleMain";

@interface SchoolTableViewCell : UITableViewCell{
    NSString *reuseID;
    NSDictionary *viewsDictionary;
    AppDelegate *appDelgate;
}

@property(strong,nonatomic) UILabel *lbl_studentName;
@property(strong,nonatomic) UILabel *lbl_grade;
@property(strong,nonatomic) UILabel *lbl_addressDetail;
@property(strong,nonatomic) UILabel *singleLinelbl;
@property(strong,nonatomic)IBOutlet UIImageView *Studentphoto;

@end
