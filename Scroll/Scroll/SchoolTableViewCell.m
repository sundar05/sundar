//
//  SchoolTableViewCell.m
//  SchoolTron
//
//  Created by SRM Technologies on 31/07/15.
//  Copyright (c) 2015 SRM Technologies. All rights reserved.
//

#import "SchoolTableViewCell.h"
@implementation SchoolTableViewCell
@synthesize Studentphoto,lbl_studentName,lbl_grade,lbl_addressDetail,singleLinelbl;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        appDelgate=(AppDelegate *)[[UIApplication sharedApplication] delegate];

       // self.contentView.backgroundColor=[UIColor clearColor];
        
        NSLog(@"Width %f",self.contentView.frame.size.width-50);
        
        float ypos=(88/2)-(60/2);
        
        Studentphoto=[[UIImageView alloc]initWithFrame:CGRectMake(ypos,ypos,60,60)];
        Studentphoto.layer.cornerRadius = Studentphoto.frame.size.width / 2;
        Studentphoto.clipsToBounds = YES;
        Studentphoto.layer.borderWidth = 1.0f;
        Studentphoto.layer.borderColor = [UIColor whiteColor].CGColor;
        [self addSubview:Studentphoto];
        
        lbl_studentName = [[UILabel alloc] init];
        [lbl_studentName setTextColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.85]];
        
        
        [lbl_studentName setFont:[UIFont systemFontOfSize:16.0]];

//        if(IS_IPHONE_4_OR_LESS || IS_IPHONE_5){
//            [lbl_studentName setFont:[UIFont systemFontOfSize:16.0]];
//        }else if(IS_IPHONE_6s || IS_IPHONE_6){
//            [lbl_studentName setFont:[UIFont systemFontOfSize:18.0]];
//        }else{
//            [lbl_studentName setFont:[UIFont systemFontOfSize:18.0]];
//        }
        
        [self addSubview:lbl_studentName];
        lbl_studentName.translatesAutoresizingMaskIntoConstraints=NO;
        
        lbl_grade = [[UILabel alloc] init];
        [lbl_grade setTextColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.55]];
        
        
        [lbl_grade setFont:[UIFont systemFontOfSize:13.0]];

//        if(IS_IPHONE_4_OR_LESS || IS_IPHONE_5){
//            [lbl_grade setFont:[UIFont systemFontOfSize:13.0]];
//
//        }else if(IS_IPHONE_6s || IS_IPHONE_6){
//            [lbl_grade setFont:[UIFont systemFontOfSize:15.0]];
//
//        }else{
//            [lbl_grade setFont:[UIFont systemFontOfSize:15.0]];
//        }
        [self addSubview:lbl_grade];
        
        lbl_grade.translatesAutoresizingMaskIntoConstraints=NO;
        
        lbl_addressDetail = [[UILabel alloc] init];
        [lbl_addressDetail setTextColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.55]];
        
        
        [lbl_addressDetail setFont:[UIFont systemFontOfSize:15.0]];

//        if(IS_IPHONE_4_OR_LESS || IS_IPHONE_5){
//            [lbl_addressDetail setFont:[UIFont systemFontOfSize:13.0]];
//            
//        }else if(IS_IPHONE_6s || IS_IPHONE_6){
//            [lbl_addressDetail setFont:[UIFont systemFontOfSize:15.0]];
//            
//        }else{
//            [lbl_addressDetail setFont:[UIFont systemFontOfSize:15.0]];
//        }
        [self addSubview:lbl_addressDetail];
        lbl_addressDetail.translatesAutoresizingMaskIntoConstraints=NO;
        
        singleLinelbl=[[UILabel alloc]init];
        [singleLinelbl setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:0.59]];
        [self addSubview:singleLinelbl];
        
        singleLinelbl.translatesAutoresizingMaskIntoConstraints=NO;

        
        viewsDictionary = @{@"Student":lbl_studentName,@"Grade":lbl_grade,@"Address":lbl_addressDetail,@"singleLinelbl":singleLinelbl};
        NSString *str_name;
        //if(appDelgate.goingtoChatscreen==YES){
            float yname=(80/2)-(20/2);
            str_name=[NSString stringWithFormat:@"V:|-%f-[Student(20)]",yname];

//        }else{
//            str_name=[NSString stringWithFormat:@"V:|-%f-[Student(20)]",ypos];
//        }
        
        NSArray  *constraint_Name_x = [NSLayoutConstraint constraintsWithVisualFormat:str_name
                                                                              options:0
                                                                              metrics:nil
                                                                                views:viewsDictionary];
        
//        NSArray  *constraint_Name_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-24-[Student(24)]"
//                                                                              options:0
//                                                                              metrics:nil
//                                                                                views:viewsDictionary];
        NSArray   *constraint_Name_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-88-[Student]-5-|"
                                                                               options:0
                                                                               metrics:nil
                                                                                 views:viewsDictionary];
        
        NSString *str_grade=[NSString stringWithFormat:@"V:|-%f-[Grade(20)]",ypos+22.0];
        
        NSArray  *constraint_grade_x = [NSLayoutConstraint constraintsWithVisualFormat:str_grade
                                                                               options:0
                                                                               metrics:nil
                                                                                 views:viewsDictionary];

        
//        NSArray  *constraint_grade_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-44-[Grade(24)]"
//                                                                               options:0
//                                                                               metrics:nil
//                                                                                 views:viewsDictionary];
        NSArray   *constraint_grade_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-88-[Grade(200)]"
                                                                                options:0
                                                                                metrics:nil
                                                                                  views:viewsDictionary];
        
        NSString *str_addr=[NSString stringWithFormat:@"V:|-%f-[Address(20)]",ypos+44.0];
        
        NSArray  *constraint_address_x = [NSLayoutConstraint constraintsWithVisualFormat:str_addr
                                                                                 options:0
                                                                                 metrics:nil
                                                                                   views:viewsDictionary];

//        NSArray  *constraint_address_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-64-[Address(20)]"
//                                                                              options:0
//                                                                              metrics:nil
//                                                                                views:viewsDictionary];
        NSArray   *constraint_address_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-88-[Address]-5-|"
                                                                               options:0
                                                                               metrics:nil
                                                                                 views:viewsDictionary];
        
        NSArray  *constraint_singleline_x;
        NSArray   *constraint_singleline_y;
        
//        if(appDelgate.goingtoChatscreen==YES)
//        {
//            constraint_singleline_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-80-[singleLinelbl(1)]"
//                                                                              options:0
//                                                                              metrics:nil
//                                                                                views:viewsDictionary];
//            constraint_singleline_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-88-[singleLinelbl]-0-|"
//                                                                              options:0
//                                                                              metrics:nil
//                                                                                views:viewsDictionary];
//        }else{
       constraint_singleline_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-88-[singleLinelbl(1)]"
                                                                                 options:0
                                                                                 metrics:nil
                                                                                   views:viewsDictionary];
       constraint_singleline_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-88-[singleLinelbl]-0-|"
                                                                                  options:0
                                                                                  metrics:nil
                                                                                    views:viewsDictionary];
  //      }
        
        [self addConstraints:constraint_singleline_x];
        [self addConstraints:constraint_singleline_y];
        
        [self addConstraints:constraint_Name_x];
        [self addConstraints:constraint_Name_y];
        [self addConstraints:constraint_grade_x];
        [self addConstraints:constraint_grade_y];
        [self addConstraints:constraint_address_x];
        [self addConstraints:constraint_address_y];
  
        
    }
    return self;
}


- (void)awakeFromNib {
    // Initialization code
 
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
