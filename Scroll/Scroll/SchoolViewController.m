//
//  SchoolViewController.m
//  SchoolTron
//
//  Created by SRM Technologies on 31/07/15.
//  Copyright (c) 2015 SRM Technologies. All rights reserved.
//

#import "SchoolViewController.h"
#import "SchoolTableViewCell.h"
//#import "GradesViewController.h"
//#import "ViewController.h"
//#import "SideView.h"
//#import "Students.h"
//#import "Teachers.h"
//#import "DetailViewController.h"

@interface SchoolViewController ()
{
    UILabel *sectionheaderlabel;
    int  barbuttontags;
    
    NSString *str_swipe;

   // SideView *customView ;
    
}
@property (nonatomic,retain) NSString *str_swipe;

@end



@implementation SchoolViewController

@synthesize str_swipe;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    

    
    
    
    appDelegate=(AppDelegate *)[[UIApplication sharedApplication] delegate];
    countindex=0;
    countstore=0;
    self.view.backgroundColor=[UIColor colorWithRed:255.0 green:255.0 blue:255.0 alpha:0.95];

    
    [[NSUserDefaults standardUserDefaults] setObject:@"otherScreen" forKey:@"Notify"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    studentNameArray= [[NSMutableArray alloc]init];
    studentlastNameArray= [[NSMutableArray alloc]init];
    
    adressArray=[[NSMutableArray alloc]init];
    gradeArray=[[NSMutableArray alloc]init];
    studentidArray= [[NSMutableArray alloc]init];
    arrteacherId= [[NSMutableArray alloc] init];
    arrteacherName= [[NSMutableArray alloc] init];
    studentImg= [[NSMutableArray alloc] init];
    
    filterstudentNameArray= [[NSMutableArray alloc]init];
    filterstudentlastNameArray= [[NSMutableArray alloc]init];
    filteradressArray=[[NSMutableArray alloc]init];
    filtergradeArray=[[NSMutableArray alloc]init];
    filterstudentidArray= [[NSMutableArray alloc] init];
    filterstudentImg= [[NSMutableArray alloc] init];
    
    NSString *teacherId;
//    if([[NSUserDefaults standardUserDefaults] integerForKey:@"UserRole"]==1){
//        NSMutableArray *arrSelectedId = [[[NSUserDefaults standardUserDefaults] arrayForKey:@"selectTeacherLastName"] mutableCopy];
//        [arrSelectedId sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
//        if([arrSelectedId count]>0){
//        for(int i=0;i<[arrSelectedId count];i++){
//            NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Teachers"];
//            request.predicate = [NSPredicate predicateWithFormat:@"teacherLastName == %@",[arrSelectedId objectAtIndex:i]];
//            NSError *error=nil;
//            NSArray *objects = [appDelegate.managedObjectContext executeFetchRequest:request error:&error];
//            for (Teachers *teachobjects in objects) {
//            {
//                [arrteacherId addObject:teachobjects.teacherId];
//                [arrteacherName addObject:teachobjects.teacherLastName];
//            }
//        }
//        }
//        }else{
//            [self getTeachers];
//        }
//    }
//    else{
//        [self getTeachers];
//    }
    
    [arrteacherId addObject:@"23"];
    [arrteacherId addObject:@"454"];
    [arrteacherId addObject:@"466645"];
    [arrteacherId addObject:@"789"];
    [arrteacherId addObject:@"7987"];
    [arrteacherId addObject:@"0980"];
    [arrteacherId addObject:@"6456"];
    [arrteacherId addObject:@"756"];
    [arrteacherId addObject:@"324"];
    [arrteacherId addObject:@"23"];
    [arrteacherId addObject:@"321"];
    [arrteacherId addObject:@"432"];
    [arrteacherId addObject:@"24"];
    [arrteacherId addObject:@"3232"];
    [arrteacherId addObject:@"2432"];
//    [arrteacherId addObject:@"2432"];
//    [arrteacherId addObject:@"23432"];
//    [arrteacherId addObject:@"2432"];
//    [arrteacherId addObject:@"345"];
//    [arrteacherId addObject:@"8678"];
//    [arrteacherId addObject:@"567"];
//    [arrteacherId addObject:@"56"];
//    [arrteacherId addObject:@"45"];
//    [arrteacherId addObject:@"4634"];
//    [arrteacherId addObject:@"43"];
//
    [arrteacherName addObject:@"John1"];
    [arrteacherName addObject:@"John2"];
    [arrteacherName addObject:@"John3"];
    [arrteacherName addObject:@"John4"];
    [arrteacherName addObject:@"sdazczxczxcsa"];
    [arrteacherName addObject:@"azxczxcsdsa"];
    [arrteacherName addObject:@"asdsa"];
    [arrteacherName addObject:@"xzxz"];
    [arrteacherName addObject:@"mbzxczxcnb"];
    [arrteacherName addObject:@"Muhmmmed"];
    [arrteacherName addObject:@"rsdfgds"];
    [arrteacherName addObject:@"dfdhg"];
    [arrteacherName addObject:@"ioiuo"];
    [arrteacherName addObject:@"ewqw"];
    [arrteacherName addObject:@"cvbnvbnvcn"];

//    [arrteacherName addObject:@"hfghg"];
//    [arrteacherName addObject:@"sadfsa"];
//    [arrteacherName addObject:@"kjlkjl"];
//    [arrteacherName addObject:@"rewrew"];
//    [arrteacherName addObject:@"gdffd"];
//    [arrteacherName addObject:@"jlkj"];
//    [arrteacherName addObject:@"fghgf"];
//    [arrteacherName addObject:@"ghgffg"];
//    [arrteacherName addObject:@"wqewq"];
//    [arrteacherName addObject:@"dfgfd"];

    
    filteredContentList = [[NSMutableArray alloc] init];
    gradeContentList = [[NSMutableArray alloc] init];
    addressContentList = [[NSMutableArray alloc] init];
    
    
    [studentNameArray addObject:@"John"];
    [studentlastNameArray addObject:@"John1"];
    [adressArray addObject:@"1234 Addr"];
    [studentidArray addObject:@"21ed23e23"];
    [gradeArray addObject:@"1stgrade"];
    
//    if([arrteacherId count]>0){
//        teacherId=[arrteacherId objectAtIndex:0];
//        
//        NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Students"];
//        request.predicate = [NSPredicate predicateWithFormat:@"teacherId == %@", teacherId];
//        NSError *error=nil;
//        NSArray *objects = [appDelegate.managedObjectContext executeFetchRequest:request error:&error];
//        for(Students *category in objects)
//        {
//            
//            NSString *address=category.homeAddress;
//            [studentNameArray addObject:[NSString stringWithFormat:@"%@",category.firstName]];
//            [studentlastNameArray addObject:[NSString stringWithFormat:@"%@",category.lastName]];
//            [adressArray addObject:address];
//            [studentidArray addObject:category.studentId];
//            NSString *stringGrade;
//            if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:0]]){
//                stringGrade=@"Kindergarten";
//            }else{
//                if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:1]]){
//                    stringGrade=[NSString stringWithFormat:@"1st Grade"];
//                }
//                else if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:2]]){
//                    stringGrade=[NSString stringWithFormat:@"2nd Grade"];
//                }
//                else if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:3]]){
//                    stringGrade=[NSString stringWithFormat:@"3rd Grade"];
//                }else{
//                    stringGrade=[NSString stringWithFormat:@"%@th Grade",category.studentGrade];
//                }
//            }
//            [gradeArray addObject:stringGrade];
//            if([category.studentImage isKindOfClass:[NSNull class]] || [category.studentImage length]==0){
//                [studentImg addObject:@""];
//            }
//            else{
//                [studentImg addObject:category.studentImage];
//            }
//        }
//    }
    
    UIView *profilView=[[UIView alloc] init];
    [profilView setBackgroundColor:[UIColor colorWithRed:25.0/255.0 green:118.0/255.0 blue:210.0/255.0 alpha:1.0]];
    [self.view addSubview:profilView];
    
    profilView.translatesAutoresizingMaskIntoConstraints=NO;
    
    profileView=[[UIView alloc]init];
    [profileView setBackgroundColor:[UIColor colorWithRed:33.0/255.0 green:150.0/255.0 blue:243.0/255.0 alpha:1.0]];
    [self.view addSubview:profileView];
    
    tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapEvent:)];
    [self.view addGestureRecognizer:tap];

    
    lblStudentsTitle = [[UILabel alloc] init];
    lblStudentsTitle.textColor = [UIColor blackColor];
    lblStudentsTitle.font = [UIFont boldSystemFontOfSize:20.0];
    lblStudentsTitle.backgroundColor=[UIColor clearColor];
    lblStudentsTitle.textAlignment=NSTextAlignmentLeft;
    lblStudentsTitle.textColor=[UIColor whiteColor];
    lblStudentsTitle.userInteractionEnabled=NO;
    lblStudentsTitle.text= @"Students";
    [profileView addSubview:lblStudentsTitle];
    lblStudentsTitle.translatesAutoresizingMaskIntoConstraints=NO;
    
    Menubtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [Menubtn addTarget:self
                action:@selector(menu:)
      forControlEvents:UIControlEventTouchUpInside];
    [Menubtn setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    float ypos=(56/2)-(24/2);
    
    
    Menubtn.frame = CGRectMake(16.0,ypos,26.0,26.0);

//    if(IS_IPAD){
//        Menubtn.frame = CGRectMake(16.0,ypos,26.0,26.0);
//    }
//    else if(IS_IPHONE_4_OR_LESS || IS_IPHONE_5){
//        Menubtn.frame = CGRectMake(16.0,ypos,26.0,26.0);
//    }else if(IS_IPHONE_6 || IS_IPHONE_6s){
//        Menubtn.frame = CGRectMake(16.0,ypos,26.0,26.0);
//    }
//    else{
//      Menubtn.frame = CGRectMake(20.0,ypos+1,26.0,26.0);
//    }
    [profileView addSubview:Menubtn];
    
    //Menubtn.translatesAutoresizingMaskIntoConstraints=NO;
    
    m_more=NO;
    
    
    searchbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [searchbtn addTarget:self
                  action:@selector(searchbtn:)
        forControlEvents:UIControlEventTouchUpInside];
    searchbtn.backgroundColor=[UIColor clearColor];
    [searchbtn setBackgroundImage:[UIImage imageNamed:@"ic_search"] forState:UIControlStateNormal];
    [profileView addSubview:searchbtn];
    searchbtn.translatesAutoresizingMaskIntoConstraints=NO;
    
    gradebtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [gradebtn setTitle:@" Grades" forState:UIControlStateNormal];
    gradebtn.titleLabel.font=[UIFont systemFontOfSize:16.0];
    gradebtn.layer.shadowOffset = CGSizeMake(-5, 5);
    gradebtn.layer.shadowRadius = 5;
    gradebtn.layer.shadowOpacity = 0.5;
    [gradebtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    gradebtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    gradebtn.backgroundColor=[UIColor whiteColor];
    gradebtn.tintColor=[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.85];
    gradebtn.hidden=YES;
    [gradebtn addTarget:self
                 action:@selector(gradebtn:)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:gradebtn];
    gradebtn.translatesAutoresizingMaskIntoConstraints=NO;
    
    searchbar=[[UISearchBar alloc]init];
    searchbar.barStyle=UISearchBarStyleDefault;
    searchbar.backgroundColor=[UIColor clearColor];
    searchbar.hidden=YES;
    searchbar.delegate=self;
    searchbar.showsCancelButton=NO;
    searchbar.translucent=YES;
    searchbar.searchBarStyle=UISearchBarStyleMinimal;
    [profileView addSubview:searchbar];
    searchbar.translatesAutoresizingMaskIntoConstraints=NO;
    
   [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setTextColor:[UIColor whiteColor]];
    
    UITextField *searchField = [searchbar valueForKey:@"_searchField"];
    searchField.textColor = [UIColor whiteColor];
    
    Morebtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [Morebtn addTarget:self
                action:@selector(Morebtn:)
      forControlEvents:UIControlEventTouchUpInside];
    Morebtn.backgroundColor=[UIColor clearColor];

    [Morebtn setBackgroundImage:[UIImage imageNamed:@"ic_more_vert_white"] forState:UIControlStateNormal];
    [profileView addSubview:Morebtn];
    Morebtn.translatesAutoresizingMaskIntoConstraints=NO;
    
    scrollView = [[UIScrollView alloc] init];

    scrollView.showsVerticalScrollIndicator = false;
    scrollView.showsHorizontalScrollIndicator = false;
    [self.view addSubview:scrollView];
    
    
//    if(IS_IPAD){
//        scrollView.frame = CGRectMake(0, 76, self.view.frame.size.width, 44);
//    }else{
        if([arrteacherId count]>=10){
            scrollView.frame = CGRectMake(3, 76, self.view.frame.size.width, 44);
        }else{
        scrollView.frame = CGRectMake(10, 76, self.view.frame.size.width, 44);
        }
 //   }
    
    NSString * result = [arrteacherName componentsJoinedByString:@""];


    CGFloat width =  [result sizeWithFont:[UIFont boldSystemFontOfSize:15.0]].width;
    
    
    
    //use this for system font
    //CGFloat width =  [label.text sizeWithFont:[UIFont boldSystemFontOfSize:15.0]].width;

    
    toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, width+[arrteacherName count]*20,44)];

//    if(IS_IPHONE_5 || IS_IPHONE_4_OR_LESS){
//    toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, [arrteacherId count]*80,44)];
//    }else{
//    }
    [toolBar setBarTintColor:[UIColor colorWithRed:33.0/255.0 green:150.0/255.0 blue:243.0/255.0 alpha:1.0]];
    //  [toolBar setBarTintColor:[UIColor redColor]];
    
    [toolBar setBarStyle:UIBarStyleDefault];
    toolBar.translucent=NO;
    toolBar.tintColor=[UIColor colorWithRed:30.0/255.0 green:127.0/255.0 blue:237.0/255.0 alpha:1.0];

    
    arrbarbuttons=[[NSMutableArray alloc] init];
    if([arrteacherId count]>0){
        for(int i=0;i<[arrteacherId count];i++){
            if(i==0){
                borisItem = [[UIBarButtonItem alloc] initWithTitle:[[arrteacherName objectAtIndex:i] uppercaseString] style:UIBarButtonItemStylePlain target:self action:@selector(boris_baritem:)];
                countindex=i;
                tempBtn=borisItem;
                borisItem.tag=i;
                [borisItem setTitleTextAttributes:
                 [NSDictionary dictionaryWithObjectsAndKeys:
                  [UIFont boldSystemFontOfSize:15.0], NSFontAttributeName,nil]
                                                              forState:UIControlStateNormal];
                borisItem.imageInsets = UIEdgeInsetsMake(0.0, 50.0, 0,50);

                borisItem.tintColor=[UIColor whiteColor];
                
                borisItem.accessibilityLabel=[arrteacherId objectAtIndex:i];
                [arrbarbuttons addObject:borisItem];
            }
            else{
                borisItem = [[UIBarButtonItem alloc] initWithTitle:[[arrteacherName objectAtIndex:i] uppercaseString] style:UIBarButtonItemStylePlain target:self action:@selector(boris_baritem:)];
                 [borisItem setTitleTextAttributes:
                 [NSDictionary dictionaryWithObjectsAndKeys:
                  [UIFont boldSystemFontOfSize:15.0], NSFontAttributeName,nil]
                                         forState:UIControlStateNormal];
                borisItem.imageInsets = UIEdgeInsetsMake(0.0, 50.0,0,50);
                borisItem.tag=i;
                borisItem.tintColor=[UIColor lightTextColor];
                borisItem.accessibilityLabel=[arrteacherId objectAtIndex:i];
                [arrbarbuttons addObject:borisItem];
            }
        }
    }
    
    UISwipeGestureRecognizer * swipeleft=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeleft:)];
    swipeleft.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeleft];
    
    UISwipeGestureRecognizer * swiperight=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swiperight:)];
    swiperight.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swiperight];
 //   toolBar.autoresizingMask = UIViewAutoresizingNone;
    toolBar.bounds = toolBar.frame;
    [toolBar setItems:arrbarbuttons animated:NO];
    CGSize size;
        size=CGSizeMake(width+[arrteacherName count]*35, 0);
    //scrollView.pagingEnabled=YES;
    scrollView.delegate=self;
    scrollView.frame=CGRectMake(2, scrollView.frame.origin.y, scrollView.frame.size.width, scrollView.frame.size.height);
    scrollView.scrollEnabled=YES;
    scrollView.contentSize = size;
    [scrollView addSubview:toolBar];
    
    pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, scrollView.frame.size.width, 20)];
    pageControl.numberOfPages = scrollView.contentSize.width/scrollView.frame.size.width;
    [pageControl addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventValueChanged];
    NSLog(@"NUmber of page %ld",(long)pageControl.numberOfPages);
    if([arrteacherId count]>0){
        toolBar.hidden=NO;
    }
    else{
        toolBar.hidden=YES;
    }
    SchoolTableView= [[UITableView alloc] init];
    SchoolTableView.delegate = self;
    SchoolTableView.dataSource = self;
    SchoolTableView.backgroundColor = [UIColor clearColor];
    SchoolTableView.separatorStyle=UITableViewCellSelectionStyleNone;
    [self.view addSubview:SchoolTableView];
//    SchoolTableView.separatorInset = UIEdgeInsetsMake (0,65, 0,0);
    SchoolTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    SchoolTableView.translatesAutoresizingMaskIntoConstraints=NO;
    
    if([studentNameArray count]>0){
        SchoolTableView.hidden=NO;
        nolblitemsfocund.hidden=YES;
        nolblitemsfocund.font=[UIFont italicSystemFontOfSize:15.0];
    }else{
        SchoolTableView.hidden=YES;
        nolblitemsfocund.hidden=NO;
        nolblitemsfocund.font=[UIFont italicSystemFontOfSize:15.0];
    }
    
    schoolsearchView=[[UIView alloc] init];
    schoolsearchView.backgroundColor=[UIColor colorWithRed:255.0 green:255.0 blue:255.0 alpha:0.87];
    schoolsearchView.hidden=YES;
    schoolsearchView.layer.cornerRadius=5.0f;
    [self.view addSubview:schoolsearchView];
    schoolsearchView.translatesAutoresizingMaskIntoConstraints=NO;
    schoolsearchView.layer.shadowOffset = CGSizeMake(-5, 5);
    schoolsearchView.layer.shadowRadius = 5;
    schoolsearchView.layer.shadowOpacity = 0.5;
    
    SearechTable= [[UITableView alloc] init];
    SearechTable.delegate = self;
    SearechTable.dataSource = self;
    SearechTable.backgroundColor = [UIColor clearColor];
    SearechTable.layer.shadowOffset = CGSizeMake(-5, 5);
    SearechTable.layer.shadowRadius = 5;
    SearechTable.layer.shadowOpacity = 0.5;
    [self.view addSubview:SearechTable];
    SearechTable.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    SearechTable.hidden=YES;
    SearechTable.bounces=NO;
    SearechTable.separatorStyle=UITableViewCellSeparatorStyleNone;
    SearechTable.translatesAutoresizingMaskIntoConstraints=NO;
    
    searchresultTable= [[UITableView alloc] init];
    searchresultTable.backgroundColor = [UIColor clearColor];
    searchresultTable.delegate = self;
    searchresultTable.dataSource = self;
    [schoolsearchView addSubview:searchresultTable];
    searchresultTable.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    searchresultTable.bounces=NO;
    searchresultTable.separatorStyle=UITableViewCellSeparatorStyleNone;
    
    close = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    close.backgroundColor=[UIColor clearColor];
    [close setBackgroundImage:[UIImage imageNamed:@"ic_close"] forState:UIControlStateNormal];
    [close addTarget:self
              action:@selector(closebtn:)
    forControlEvents:UIControlEventTouchUpInside];
    [schoolsearchView addSubview:close];
    
    close.translatesAutoresizingMaskIntoConstraints=NO;
    
    
        lbl = [[UILabel alloc] initWithFrame:CGRectMake(24,5,self.view.frame.size.width-80,40)];
    lbl.adjustsFontSizeToFitWidth=YES;
    [lbl setFont:[UIFont systemFontOfSize:18.0]];
    [lbl setTextColor:[UIColor blackColor]];
    lbl.backgroundColor=[UIColor clearColor];
    [lbl setText:[NSString stringWithFormat:@"Students"]];
    [schoolsearchView addSubview:lbl];
    

    searchresultTable.translatesAutoresizingMaskIntoConstraints=NO;
    profileView.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    viewsDictionary = @{@"profileView":profileView,@"profView":profilView,@"lblTitle":lblStudentsTitle,@"more":Morebtn,@"grade":gradebtn,@"searchbar":searchbar,@"menu":Menubtn,@"search":searchbtn,@"schooltbl":SchoolTableView,@"searchtbl":SearechTable,@"searchresulttbl":searchresultTable,@"schoolsearchView":schoolsearchView,@"close":close};
    
    NSArray  *constraint_profil_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[profView(20)]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
    NSArray   *constraint_profil_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[profView]-0-|"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:viewsDictionary];
    
    constraint_grade_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-25-[grade(40)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    
    NSString *strGrade=[NSString stringWithFormat:@"H:[grade(%f)]-5-|",self.view.frame.size.width/2];
    
    
    constraint_grade_y = [NSLayoutConstraint constraintsWithVisualFormat:strGrade
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    
    NSArray  *constraint_close_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[close(30)]"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:viewsDictionary];
    NSArray   *constraint_close_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[close(30)]-10-|"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
    
    [self.view addConstraints:constraint_profil_x];
    [self.view addConstraints:constraint_profil_y];
    
    [self.view addConstraints:constraint_grade_x];
    [self.view addConstraints:constraint_grade_y];
    [self.view addConstraints:constraint_close_x];
    [self.view addConstraints:constraint_close_y];

    UIDeviceOrientation Orientation=[[UIDevice currentDevice]orientation];
    if(Orientation==UIDeviceOrientationLandscapeLeft || Orientation==UIDeviceOrientationLandscapeRight)
    {
        
            if([arrteacherId count]>=10){
                scrollView.frame = CGRectMake(0, 76, self.view.frame.size.width, 44);
            }else{
                scrollView.frame = CGRectMake(10, 76, self.view.frame.size.width, 44);
            }
        
        float ypos=(56/2)-(24/2);
        
        
        Menubtn.frame = CGRectMake(14.0,ypos+1,24.0,24.0);

//        else if(IS_IPHONE_4_OR_LESS || IS_IPHONE_5){
//        }else if(IS_IPHONE_6 || IS_IPHONE_6s){
//            Menubtn.frame = CGRectMake(14.0,ypos+1,24.0,24.0);
//        }
//        else{
//            Menubtn.frame = CGRectMake(18.0,ypos+1,24.0,24.0);
//        }
        [self setFrameForPotrait];
    }
    else{
        
        [self setFrameForPotrait];
    }
    // Do any additional setup after loading the view.
}
-(void)getTeachers{
//    NSManagedObjectContext *teachmanagedObjectContext = [appDelegate managedObjectContext];
//    NSEntityDescription *teachentityDescriptionDelegate = [NSEntityDescription entityForName:@"Teachers" inManagedObjectContext:teachmanagedObjectContext];
//    NSFetchRequest *teachrequestData = [[NSFetchRequest alloc] init];
//    [teachrequestData setEntity:teachentityDescriptionDelegate];
//    NSError *error1;
//    NSArray *teachresults = [teachmanagedObjectContext executeFetchRequest:teachrequestData error:&error1];
//    NSSortDescriptor *number     = [[NSSortDescriptor alloc] initWithKey:@"teacherLastName" ascending:YES selector:@selector(localizedStandardCompare:)];
//    NSArray *sortedArray = [teachresults sortedArrayUsingDescriptors:[NSArray arrayWithObjects:number, nil]];
//    if([sortedArray count]>0){
//        for (Teachers *teachobjects in sortedArray) {
//            // Here update values of every object
//            [arrteacherId addObject:teachobjects.teacherId];
//            [arrteacherName addObject:teachobjects.teacherLastName];
//        }
//    }
}
-(void)handleTapEvent:(id)sender{
   // SearechTable.hidden=YES;
    searchbar.hidden=YES;
    gradebtn.hidden=YES;
    Morebtn.hidden=NO;
    lblStudentsTitle.hidden=NO;
    searchbtn.hidden=NO;
    [Morebtn setBackgroundImage:[UIImage imageNamed:@"ic_more_vert_white"] forState:UIControlStateNormal];
    m_more=NO;
    [self.view endEditing:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didChangeOrientation:)
                                                 name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
    [super viewWillAppear:animated];
}


- (void) viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

}

/* Change in Orientation */
- (void)didChangeOrientation:(NSNotification *)notification{
    
    gradebtn.hidden=YES;
    
    UIDeviceOrientation Orientation=[[UIDevice currentDevice]orientation];
    if(Orientation==UIDeviceOrientationLandscapeLeft || Orientation==UIDeviceOrientationLandscapeRight)
    {
        
        [self.view removeConstraints:constraint_queuetbl_x];
        [self.view removeConstraints:constraint_queuetbl_y];
        
        [self.view removeConstraints:constraint_grade_x];
        [self.view removeConstraints:constraint_grade_y];
        
        [self.view removeConstraints:constraint_schoolview_x];
        [self.view removeConstraints:constraint_schoolview_y];
        
        [self.view removeConstraints:constraint_searchresulttbl_x];
        [self.view removeConstraints:constraint_searchresulttbl_y];
        
        
        NSString *strschoolresult=[NSString stringWithFormat:@"V:|-10-[schoolsearchView]-10-|"];
        constraint_schoolview_x = [NSLayoutConstraint constraintsWithVisualFormat:strschoolresult
                                                                          options:0
                                                                          metrics:nil
                                                                            views:viewsDictionary];
        
        constraint_schoolview_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[schoolsearchView]-5-|"
                                                                          options:0
                                                                          metrics:nil
                                                                            views:viewsDictionary];
        
        NSString *strsearchresult=[NSString stringWithFormat:@"V:|-40-[searchresulttbl]-0-|"];
        constraint_searchresulttbl_x = [NSLayoutConstraint constraintsWithVisualFormat:strsearchresult
                                                                               options:0
                                                                               metrics:nil
                                                                                 views:viewsDictionary];
        
        constraint_searchresulttbl_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[searchresulttbl]-5-|"
                                                                               options:0
                                                                               metrics:nil
                                                                                 views:viewsDictionary];
        
        
        
        
        
        constraint_grade_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-25-[grade(40)]"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:viewsDictionary];
        
        NSString *strGrade=[NSString stringWithFormat:@"H:[grade(%f)]-5-|",[[UIScreen mainScreen] bounds].size.width/2];
        
        
        constraint_grade_y = [NSLayoutConstraint constraintsWithVisualFormat:strGrade
                                                                     options:0
                                                                     metrics:nil
                                                                       views:viewsDictionary];
        
    //    scrollView.frame = CGRectMake(0, 76, [[UIScreen mainScreen] bounds].size.width, 44);
        
            if([arrteacherId count]>=10){
                scrollView.frame = CGRectMake(0, 76, [[UIScreen mainScreen] bounds].size.width, 44);
            }else{
                scrollView.frame = CGRectMake(10, 76, [[UIScreen mainScreen] bounds].size.width, 44);
            }
        
           toolBar.frame=CGRectMake(0, 0, [arrteacherId count]*80,44);

        float ypos=(56/2)-(24/2);
        
        
            Menubtn.frame = CGRectMake(14.0,ypos+2,24.0,24.0);

        
        NSString *strQueue=[NSString stringWithFormat:@"V:|-128-[schooltbl(%f)]",self.view.bounds.size.height-128];

        
        constraint_queuetbl_x = [NSLayoutConstraint constraintsWithVisualFormat:strQueue
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDictionary];
        
        constraint_queuetbl_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[schooltbl]-0-|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDictionary];
        
        [self.view addConstraints:constraint_queuetbl_x];
        [self.view addConstraints:constraint_queuetbl_y];
        
        [self.view addConstraints:constraint_grade_x];
        [self.view addConstraints:constraint_grade_y];
        
        [self.view addConstraints:constraint_schoolview_x];
        [self.view addConstraints:constraint_schoolview_y];
        
        [self.view addConstraints:constraint_searchresulttbl_x];
        [self.view addConstraints:constraint_searchresulttbl_y];
        
        [searchresultTable reloadData];
        
        [SchoolTableView reloadData];
        
//        if (constraint_login_x!=nil) {
//            [self.view removeConstraints:constraint_login_x];
//            [self.view removeConstraints:constraint_login_y];
//            [self.view removeConstraints:constraint_title_x];
//            [self.view removeConstraints:constraint_title_y];
//            [self.view removeConstraints:constraint_clear_x];
//            [self.view removeConstraints:constraint_clear_y];
//
//        //    [self.view removeConstraint:ClearRightSpaceConstraint];
//            [self.view removeConstraints:constraint_refresh_x];
//            [self.view removeConstraint:RefreshRightSpaceConstraint];
//            [self.view removeConstraints:constraint_search_x];
//            [self.view removeConstraints:constraint_search_y];
//         //   [self.view removeConstraint:SearchRightSpaceConstraint];
//            
//            [self.view removeConstraints:constraint_searchtbl_x];
//            [self.view removeConstraints:constraint_searchtbl_y];
//            
//            [self.view removeConstraints:constraint_searchresulttbl_x];
//            [self.view removeConstraints:constraint_searchresulttbl_y];
//        }
//
//        [self setFrameForLandscape];
        
    }else if(Orientation==UIDeviceOrientationPortrait || Orientation==UIDeviceOrientationPortraitUpsideDown)
    {
       
        [self.view removeConstraints:constraint_queuetbl_x];
        [self.view removeConstraints:constraint_queuetbl_y];
        
        [self.view removeConstraints:constraint_grade_x];
        [self.view removeConstraints:constraint_grade_y];
        
        constraint_grade_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-25-[grade(40)]"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:viewsDictionary];
        
        NSString *strGrade=[NSString stringWithFormat:@"H:[grade(%f)]-5-|",[[UIScreen mainScreen] bounds].size.width/2];
        
        
        constraint_grade_y = [NSLayoutConstraint constraintsWithVisualFormat:strGrade
                                                                     options:0
                                                                     metrics:nil
                                                                       views:viewsDictionary];

        
            if([arrteacherId count]>=10){
                scrollView.frame = CGRectMake(3, 76, self.view.frame.size.width, 44);
            }else{
              scrollView.frame = CGRectMake(10, 76, self.view.frame.size.width, 44);
            }
        
        toolBar.frame=CGRectMake(0, 0, [arrteacherId count]*80,44);

       //toolBar.frame=CGRectMake(0, 0, self.view.frame.size.width, 44);
        float ypos=(56/2)-(24/2);
            Menubtn.frame = CGRectMake(16.0,ypos+2,24.0,24.0);

        [SchoolTableView reloadData];

        
        NSString *strQueue=[NSString stringWithFormat:@"V:|-128-[schooltbl(%f)]",self.view.bounds.size.height-128];
        
        
        constraint_queuetbl_x = [NSLayoutConstraint constraintsWithVisualFormat:strQueue
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDictionary];
        
        constraint_queuetbl_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[schooltbl]-0-|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDictionary];
        
        [self.view addConstraints:constraint_queuetbl_x];
        [self.view addConstraints:constraint_queuetbl_y];
        
        [self.view addConstraints:constraint_grade_x];
        [self.view addConstraints:constraint_grade_y];
        
//        if (constraint_login_x!=nil) {
//            [self.view removeConstraints:constraint_login_x];
//            [self.view removeConstraints:constraint_login_y];
//            [self.view removeConstraints:constraint_title_x];
//            [self.view removeConstraints:constraint_title_y];
//            [self.view removeConstraints:constraint_clear_x];
//            [self.view removeConstraints:constraint_clear_y];
//
//         //   [self.view removeConstraint:ClearRightSpaceConstraint];
//            [self.view removeConstraints:constraint_refresh_x];
//            [self.view removeConstraint:RefreshRightSpaceConstraint];
//            [self.view removeConstraints:constraint_search_x];
//            [self.view removeConstraints:constraint_search_y];
//        //    [self.view removeConstraint:SearchRightSpaceConstraint];
//            
//            [self.view removeConstraints:constraint_queuetbl_x];
//            [self.view removeConstraints:constraint_queuetbl_y];
//            [self.view removeConstraints:constraint_searchtbl_x];
//            [self.view removeConstraints:constraint_searchtbl_y];
//            
//            [self.view removeConstraints:constraint_searchresulttbl_x];
//            [self.view removeConstraints:constraint_searchresulttbl_y];
//        }
//        
//        
//        [self setFrameForPotrait];
    }
}



/*Set Potrait */
-(void)setFrameForPotrait{
    
    
    [self.view removeConstraints:constraint_refresh_x];
    [self.view removeConstraints:constraint_refresh_y];
    
    [self.view removeConstraints:constraint_schoolview_x];
    [self.view removeConstraints:constraint_schoolview_y];
    
    [self.view removeConstraints:constraint_searchresulttbl_x];
    [self.view removeConstraints:constraint_searchresulttbl_y];
    
    
    constraint_grade_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-25-[grade(40)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    
    NSString *strGrade=[NSString stringWithFormat:@"H:[grade(%f)]-5-|",[[UIScreen mainScreen] bounds].size.width/2];
    
    
    constraint_grade_y = [NSLayoutConstraint constraintsWithVisualFormat:strGrade
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    
    constraint_login_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[profileView(100)]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    constraint_login_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[profileView]-0-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    
    float flName=(56/2)-(40/2);
    
    NSString *strName=[NSString stringWithFormat:@"V:|-%f-[lblTitle(40)]",flName];
    
    constraint_title_x = [NSLayoutConstraint constraintsWithVisualFormat:strName
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    constraint_title_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-54-[lblTitle]-100-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    
    float flSearch=(56/2)-(26/2);
    
    NSString *strSearch=[NSString stringWithFormat:@"V:|-%f-[search(27)]",flSearch];
    
    
    constraint_clear_x = [NSLayoutConstraint constraintsWithVisualFormat:strSearch
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    constraint_clear_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[search(27)]-54-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    
    float flMore=(56/2)-(29/2);
    
    NSString *strMore=[NSString stringWithFormat:@"V:|-%f-[more(29)]",flMore];
   
    
    constraint_refresh_x = [NSLayoutConstraint constraintsWithVisualFormat:strMore
                                                                   options:0
                                                                   metrics:nil
                                                                     views:viewsDictionary];
    
    constraint_refresh_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[more(29)]-18-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary];
    
    float flsearchbar=(56/2)-(40/2);

    
    NSString *strSearchbar=[NSString stringWithFormat:@"V:|-%f-[searchbar(40)]",flsearchbar];
    
    constraint_search_x = [NSLayoutConstraint constraintsWithVisualFormat:strSearchbar
                                                                  options:0
                                                                  metrics:nil
                                                                    views:viewsDictionary];
    constraint_search_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-54-[searchbar]-54-|"
                                                                  options:0
                                                                  metrics:nil
                                                                    views:viewsDictionary];

    NSString *strQueue=[NSString stringWithFormat:@"V:|-128-[schooltbl(%f)]",self.view.bounds.size.height-128];
    constraint_queuetbl_x = [NSLayoutConstraint constraintsWithVisualFormat:strQueue
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewsDictionary];
    
    constraint_queuetbl_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[schooltbl]-0-|"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewsDictionary];
    
    NSString *strsearch=[NSString stringWithFormat:@"V:|-63-[searchtbl(150)]"];
    constraint_searchtbl_x = [NSLayoutConstraint constraintsWithVisualFormat:strsearch
                                                                     options:0
                                                                     metrics:nil
                                                                       views:viewsDictionary];
    
    constraint_searchtbl_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-60-[searchtbl]-60-|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:viewsDictionary];
    
    NSString *strschoolresult=[NSString stringWithFormat:@"V:|-25-[schoolsearchView]-100-|"];
    constraint_schoolview_x = [NSLayoutConstraint constraintsWithVisualFormat:strschoolresult
                                                                           options:0
                                                                           metrics:nil
                                                                             views:viewsDictionary];
    
    constraint_schoolview_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[schoolsearchView]-5-|"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:viewsDictionary];
    
    NSString *strsearchresult=[NSString stringWithFormat:@"V:|-40-[searchresulttbl]-0-|"];
    constraint_searchresulttbl_x = [NSLayoutConstraint constraintsWithVisualFormat:strsearchresult
                                                                           options:0
                                                                           metrics:nil
                                                                             views:viewsDictionary];
    
    constraint_searchresulttbl_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[searchresulttbl]-5-|"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:viewsDictionary];
    [self.view addConstraints:constraint_login_x];
    [self.view addConstraints:constraint_login_y];
    [self.view addConstraints:constraint_grade_x];
    [self.view addConstraints:constraint_grade_y];
    
    [self.view addConstraints:constraint_title_x];
    [self.view addConstraints:constraint_title_y];
    [self.view addConstraints:constraint_clear_x];
    [self.view addConstraints:constraint_clear_y];
    [self.view addConstraints:constraint_refresh_x];
    [self.view addConstraints:constraint_refresh_y];
    [self.view addConstraints:constraint_search_x];
    [self.view addConstraints:constraint_search_y];
    [self.view addConstraints:constraint_queuetbl_x];
    [self.view addConstraints:constraint_queuetbl_y];
    [self.view addConstraints:constraint_searchtbl_x];
    [self.view addConstraints:constraint_searchtbl_y];
    [self.view addConstraints:constraint_schoolview_x];
    [self.view addConstraints:constraint_schoolview_y];
    
    [self.view addConstraints:constraint_searchresulttbl_x];
    [self.view addConstraints:constraint_searchresulttbl_y];
}


/*Teacher List */
-(void)boris_baritem:(id)sender{
    gradebtn.hidden=YES;
    
    
    CGRect buttonRect = [[sender view] frame];

    tempBtn.tintColor=[UIColor lightTextColor];
    UIBarButtonItem *btn= (UIBarButtonItem *)sender;
    tempBtn=btn;
    countindex=btn.tag;
    NSLog(@"%@",btn.accessibilityLabel);
    btn.tintColor=[UIColor whiteColor];
    
    UIView *view = [btn valueForKey:@"view"];
    CGFloat width;
    if(view){
        width=buttonRect.size.width;
    }
    else{
        width=(CGFloat)0.0 ;
    }
    //scrollView.contentOffset = CGPointMake(view.frame.origin.x,view.frame.origin.y);
    
    
//    SchoolTableView.frame=CGRectMake(self.view.frame.size.width,SchoolTableView.frame.origin.y,SchoolTableView.frame.size.width,SchoolTableView.frame.size.height);
    
    
    
    CATransition *Animation = [CATransition animation];
    [Animation setDelegate:self];
    Animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    Animation.type = kCATransitionPush;
    Animation.subtype = kCATransitionFromRight;
    Animation.speed=.2;
    
    [SchoolTableView.layer addAnimation:Animation forKey:@"transaction"];

    /*
    [UIView animateWithDuration:1.2
                     animations:^{
                         
                         SchoolTableView.frame=CGRectMake(-self.view.frame.size.width, SchoolTableView.frame.origin.y, SchoolTableView.frame.size.width, SchoolTableView.frame.size.height);
                         
                             CATransition *transition = [CATransition animation];
                             transition.type =kCATransitionFromLeft;
                             transition.duration = 0.5f;
                             transition.delegate = self;
                             [SchoolTableView.layer addAnimation:transition forKey:nil];


                         
                     } completion:^(BOOL finished)
          {


              SchoolTableView.frame=CGRectMake(0.0, SchoolTableView.frame.origin.y, SchoolTableView.frame.size.width, SchoolTableView.frame.size.height);
        }]; */
    
//    [UIView animateWithDuration:1.2
//                          delay:0
//                        options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionTransitionFlipFromLeft animations:^
//     {
//         [SchoolTableView setAlpha:0.0];
//     } completion:^(BOOL finished)
//     {
//         [SchoolTableView setAlpha:1.0];
//     }];

//    CATransition *transition = [CATransition animation];
//    transition.type =kCATransitionFromLeft;
//    transition.duration = 0.5f;
//    transition.delegate = self;
//    [SchoolTableView.layer addAnimation:transition forKey:nil];
//    [SearechTable.layer addAnimation:transition forKey:nil];
//    [searchresultTable.layer addAnimation:transition forKey:nil];

    float sx= SchoolTableView.bounds.origin.x;
    float sw= SchoolTableView.bounds.size.width;
    
    float bx=buttonRect.origin.x;
    float bw=scrollView.contentSize.width;
    
    
//    if (sx<) {
//        
//        
//    }
    //        if ((buttonRect.origin.x+buttonRect.size.width)>scrollView.frame.size.width){
    //            [scrollView setContentOffset:CGPointMake(buttonRect.origin.x,buttonRect.origin.y) animated:NO];
    //        }

    
   // [scrollView setContentOffset:CGPointMake(buttonRect.origin.x,buttonRect.origin.y) animated:NO];

    
    float a=(buttonRect.origin.x+buttonRect.size.width);
    float b=(scrollView.contentSize.width-self.view.frame.size.width);
    float c=scrollView.frame.size.width;
    
    if ((a<b)&&(a>c)){
        
        
    }
    

    if([str_swipe isEqualToString:@"left"]){
        if (((buttonRect.origin.x+buttonRect.size.width)<(scrollView.contentSize.width-self.view.frame.size.width))&&((buttonRect.origin.x+buttonRect.size.width)>scrollView.frame.size.width)){
            [scrollView setContentOffset:CGPointMake(buttonRect.origin.x,buttonRect.origin.y) animated:NO];
        }
    }else{
        if ((buttonRect.origin.x+buttonRect.size.width)<scrollView.contentSize.width){
            [scrollView setContentOffset:CGPointMake(buttonRect.origin.x,buttonRect.origin.y) animated:NO];
        }
    }
 
    
    
    
    float x =scrollView.frame.origin.x;
    
    float y =scrollView.frame.origin.y;

    
    //[scrollView scrollRectToVisible:view.frame animated:YES];

    //[scrollView scrollRectToVisible:view.frame animated:YES];

    
    
    [studentNameArray removeAllObjects];
    [studentlastNameArray removeAllObjects];
    [adressArray removeAllObjects];;
    [gradeArray removeAllObjects];
    [studentidArray removeAllObjects];
    [studentImg removeAllObjects];
    
    SchoolTableView.hidden=NO;
    
    [studentNameArray addObject:@"John"];
    [studentlastNameArray addObject:@"John1"];
    [adressArray addObject:@"1234 Addr"];
    [studentidArray addObject:@"21ed23e23"];
    [gradeArray addObject:@"1stgrade"];
    
//    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Students"];
//    request.predicate = [NSPredicate predicateWithFormat:@"teacherId == %@", btn.accessibilityLabel];
//    NSError *error=nil;
//    NSArray *objects = [appDelegate.managedObjectContext executeFetchRequest:request error:&error];
//    for(Students *category in objects)
//    {
//        NSString *address=category.homeAddress;
//        [studentNameArray addObject:[NSString stringWithFormat:@"%@",category.firstName]];
//        [studentlastNameArray addObject:[NSString stringWithFormat:@"%@",category.lastName]];
//        [adressArray addObject:address];
//        [studentidArray addObject:category.studentId];
//        NSString *stringGrade;
//        if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:0]]){
//            stringGrade=@"Kindergarten";
//        }else{
//            if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:1]]){
//                stringGrade=[NSString stringWithFormat:@"1st Grade"];
//            }
//            else if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:2]]){
//                stringGrade=[NSString stringWithFormat:@"2nd Grade"];
//            }
//            else if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:3]]){
//                stringGrade=[NSString stringWithFormat:@"3rd Grade"];
//            }else{
//                stringGrade=[NSString stringWithFormat:@"%@th Grade",category.studentGrade];
//            }
//        }
//        [gradeArray addObject:stringGrade];
//        if([category.studentImage isKindOfClass:[NSNull class]] || [category.studentImage length]==0){
//            [studentImg addObject:@""];
//        }
//        else{
//            [studentImg addObject:category.studentImage];
//        }
//    }
    
    if([studentNameArray count]>0){
        SchoolTableView.hidden=NO;
        nolblitemsfocund.hidden=YES;
        nolblitemsfocund.font=[UIFont italicSystemFontOfSize:15.0];
        [SchoolTableView reloadData];
    }else{
        SchoolTableView.hidden=YES;
        nolblitemsfocund.hidden=NO;
        nolblitemsfocund.font=[UIFont italicSystemFontOfSize:15.0];
    }
}

-(void)searchbtn:(id)sender{
    tap.enabled=NO;
    m_more=YES;
    lblStudentsTitle.hidden=YES;
    searchbtn.hidden=YES;
    searchbar.hidden=NO;
    gradebtn.hidden=YES;
    Morebtn.hidden=NO;
    searchbar.text=@"";
    [searchbar becomeFirstResponder];

    [Morebtn setBackgroundImage:[UIImage imageNamed:@"ic_clear"] forState:UIControlStateNormal];
}

#pragma mark - UISearchDisplayController Delegate Methods
-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    
    SearechTable.hidden=YES;
    [searchbar resignFirstResponder];
    [SchoolTableView reloadData];
    searchbar.text=@"";
    searchbar.hidden=YES;
  //  searchresultTable.hidden=YES;
    schoolsearchView.hidden=YES;

    lblStudentsTitle.hidden=NO;
    searchbtn.hidden=NO;

    Morebtn.hidden=NO;
    [self.view endEditing:YES];
}
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    if(searchbar.text.length>=3){
        
        NSCharacterSet *s = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        s = [s invertedSet];
        NSString *stringCheck=searchbar.text;
        NSRange range = [stringCheck rangeOfCharacterFromSet:s];
        if (range.location!= NSNotFound)
        {
            
            NSPredicate *pred1=[NSPredicate predicateWithFormat:@"SELF beginswith[c] %@",searchbar.text];
            filteredContentList=[NSMutableArray arrayWithArray:[studentlastNameArray filteredArrayUsingPredicate:pred1]];
        }
        else
        {
            NSPredicate *pred=[NSPredicate predicateWithFormat:@"SELF beginswith[c] %@",searchbar.text];
            filteredContentList=[NSMutableArray arrayWithArray:[studentlastNameArray filteredArrayUsingPredicate:pred]];
        }
        SearechTable.hidden=NO;
        [SearechTable reloadData];
        [SchoolTableView reloadData];
    }
    else
    {
    }
    
}
-(BOOL)searchDisplayController:(UISearchController *)controller shouldReloadTableForSearchString:(NSString *)searchString {
    return YES;
}

-(BOOL)searchDisplayController:(UISearchController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption {
    return YES;
}
- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    isSearching = YES;
}
- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar {
    
}
-(void)closebtn:(id)sender{
    tap.enabled=YES;
    //searchresultTable.hidden=YES;
    schoolsearchView.hidden=YES;
    searchbar.hidden=YES;
    m_more=NO;
    SearechTable.hidden=YES;
    [searchbar resignFirstResponder];
    [SchoolTableView reloadData];
    searchbar.text=@"";
    searchbar.hidden=YES;
    // searchresultTable.hidden=YES;
    schoolsearchView.hidden=YES;
    lblStudentsTitle.hidden=NO;
    searchbtn.hidden=NO;
    [Morebtn setBackgroundImage:[UIImage imageNamed:@"ic_more_vert_white"] forState:UIControlStateNormal];
    Morebtn.hidden=NO;
    [searchbar resignFirstResponder];
}
-(void)Morebtn:(id)sender{
    if(m_more==NO){
    gradebtn.hidden=NO;
  //  Morebtn.hidden=YES;
    }
    else{
        m_more=NO;
        SearechTable.hidden=YES;
        [searchbar resignFirstResponder];
        [SchoolTableView reloadData];
        searchbar.text=@"";
        searchbar.hidden=YES;
       // searchresultTable.hidden=YES;
        schoolsearchView.hidden=YES;
        lblStudentsTitle.hidden=NO;
        searchbtn.hidden=NO;
        [Morebtn setBackgroundImage:[UIImage imageNamed:@"ic_more_vert_white"] forState:UIControlStateNormal];
        Morebtn.hidden=NO;
        [self.view endEditing:YES];
        
    }
}
-(void)gradebtn:(id)sender{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIDeviceOrientationDidChangeNotification
                                                  object:nil];

    
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    GradesViewController *gradeViewController = [storyboard instantiateViewControllerWithIdentifier:@"GradesViewController"];
//    [self.navigationController pushViewController:gradeViewController animated:NO];
    
}
-(void)menu:(id)sender{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIDeviceOrientationDidChangeNotification
                                                  object:nil];

    
//    [self.navigationController popViewControllerAnimated:YES];
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    ViewController *mainViewController = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
//    [self.navigationController pushViewController:mainViewController animated:NO];
}

-(void)swiperight:(UISwipeGestureRecognizer *)gestureRecognizer{
    if(countindex>0){
        countindex=countindex-1;
      //  tmptagItem.tag=countindex;
     //   tmptagItem=[arrbarbuttons objectAtIndex:countindex];
     //   tmptagItem.accessibilityLabel=[arrteacherId objectAtIndex:countindex];
        
        str_swipe=@"right";
        [self boris_baritem:[arrbarbuttons objectAtIndex:countindex]];
    }

}
- (void)changePage:(id)sender {
 
}

/*
- (void)scrollViewDidScroll:(UIScrollView *)didscrollView {
    CGFloat pageWidth = didscrollView.frame.size.width; // you need to have a **iVar** with getter for scrollView
    float fractionalPage = didscrollView.contentOffset.x / pageWidth;
    NSInteger page = lround(fractionalPage);
    CGFloat x = pageControl.currentPage * scrollView.frame.size.width;

    
    pageControl.currentPage = page; // you need to have a **iVar** with getter for pageControl
}

-(void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView  {
    NSInteger pageNumber = roundf(scrollView.contentOffset.x / (scrollView.frame.size.width));
    pageControl.currentPage = pageNumber;
}

*/
-(void)swipeleft:(UISwipeGestureRecognizer *)gestureRecognizer{
    str_swipe=@"left";

    if(countindex<[arrteacherId count]-1){
        countindex=countindex+1;
        
        tmpcount=tmpcount+1;
        
    
        NSLog(@"%f",scrollView.contentOffset.x);
        
        NSLog(@"%f",scrollView.bounds.size.width);
        NSLog(@"%ld",(long)countindex);
        
        //CGFloat x = pageControl.currentPage * scrollView.frame.size.width;
        //[scrollView setContentOffset:CGPointMake(x, 0) animated:YES];

//        float centerwidth=scrollView.frame.size.width/2;
//        if(tmpcount>5){
//            countstore=countstore+tmpcount;
//            
//            tmptagItem=[arrbarbuttons objectAtIndex:countindex];
//            NSLog(@"Title Length %lu",(unsigned long)tmptagItem.title.length);
//
//        //    [scrollView setContentOffset:CGPointMake(50*countstore, 0) animated:YES];
//            tmpcount=0;
//
//        }
//        CGFloat newContentOffsetX = (scrollView.contentSize.width-scrollView.frame.size.width) / 2;
//        scrollView.contentOffset = CGPointMake(newContentOffsetX, 0);

//        if([arrbarbuttons count]>5){
//            float floatcontentOffset=[arrbarbuttons count]/2;
//            
//
//        }
        

       // tmptagItem.tag=countindex;
       // tmptagItem=[arrbarbuttons objectAtIndex:countindex];
       // tmptagItem.accessibilityLabel=[arrteacherId objectAtIndex:countindex];
        [self boris_baritem:[arrbarbuttons objectAtIndex:countindex]];
    }

}

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//   // searchresultTable.hidden=YES;
//
//    [super touchesBegan:touches withEvent:event];
//}
//-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
//    
//    customView = [[[NSBundle mainBundle] loadNibNamed:@"SideView" owner:nil options:nil] lastObject];
//    [self.view addSubview:customView];
//    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
//    
//    switch (orientation) {
//            
//        case (UIInterfaceOrientationPortrait):
//            if ( IDIOM == IPAD ) {
//                customView.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//                
//            } else {
//                customView.frame=CGRectMake(0, 0, self.view.frame.size.width-40, self.view.frame.size.height);
//                
//            }
//            break;
//        case (UIInterfaceOrientationPortraitUpsideDown):
//            if ( IDIOM == IPAD ) {
//                customView.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//                
//            } else {
//                customView.frame=CGRectMake(0, 0, self.view.frame.size.width-40, self.view.frame.size.height);
//                
//            }
//            break;
//        case (UIInterfaceOrientationLandscapeRight):
//            [self designLandscapeView];
//            break;
//        case (UIInterfaceOrientationLandscapeLeft):
//            [self designLandscapeView];
//            break;
//        default: ;
//    }
//}
//-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
//    
//    customView.hidden=YES;
//}
//-(void)designPortraitView {
//    if ( IDIOM == IPAD ) {
//        customView.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//        
//    } else {
//        customView.frame=CGRectMake(0, 0, self.view.frame.size.width-40, self.view.frame.size.height);
//        
//    }
//}
//-(void)designLandscapeView{
//    if ( IDIOM == IPAD ) {
//        customView.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//        
//    } else {
//        customView.frame=CGRectMake(0, 0, self.view.frame.size.width-40, self.view.frame.size.height);
//        
//    }
//}

-(void)OrientationDidChange:(NSNotification*)notification{
    
    UIDeviceOrientation Orientation=[[UIDevice currentDevice]orientation];
    if(Orientation==UIDeviceOrientationLandscapeLeft || Orientation==UIDeviceOrientationLandscapeRight)
    {
        // [self setFrameForTable];
        
    }else{
        // [self setFrameForTable];
    }
    
}
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // This will create a "invisible" footer
    return 0.01f;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView==SearechTable) {
        return [filteredContentList count];
    }else if (tableView==searchresultTable) {
        return [filterstudentlastNameArray count];
    }else{
        return [studentNameArray count];
    }
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView==SearechTable) {
        return 30;
    }else if (tableView==searchresultTable) {
        return 80;
    }else{
        return 89;
    }
    return 0;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
     tap.enabled=YES;
    
    if (tableView==SearechTable) {
        [filterstudentNameArray removeAllObjects];
        [filterstudentlastNameArray removeAllObjects];
        [filteradressArray removeAllObjects];
        [filtergradeArray removeAllObjects];
        [filterstudentidArray removeAllObjects];
        [filterstudentImg removeAllObjects];
        [searchbar resignFirstResponder];
        
     /*   NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Students"];
        request.predicate = [NSPredicate predicateWithFormat:@"lastName == %@", [filteredContentList objectAtIndex:indexPath.row]];
        NSError *error=nil;
        NSArray *objects = [appDelegate.managedObjectContext executeFetchRequest:request error:&error];
        for(Students *category in objects)
        {
            // NSString *strfirstLast=[NSString stringWithFormat:@"%@ %@",[category valueForKey:@"lastName"],[category valueForKey:@"firstName"]];
            //  NSLog(@"%@",strfirstLast);
            [filterstudentNameArray addObject:[NSString stringWithFormat:@"%@",[category valueForKey:@"firstName"]]];
            [filterstudentlastNameArray addObject:[NSString stringWithFormat:@"%@",[category valueForKey:@"lastName"]]];
            NSString *address=category.homeAddress;
            [filteradressArray addObject:address];
            //            NSString *gradestr = [NSString stringWithFormat:@"%@", [category valueForKey:@"studentGrade"]];
            //            [filtergradeArray addObject:gradestr];
            [filterstudentidArray addObject:category.studentId];
            NSString *stringGrade;
            if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:0]]){
                stringGrade=@"Kindergarten";
            }else{
                if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:1]]){
                    stringGrade=[NSString stringWithFormat:@"1st Grade"];
                }
                else if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:2]]){
                    stringGrade=[NSString stringWithFormat:@"2nd Grade"];
                }
                else if([category.studentGrade isEqualToNumber:[NSNumber numberWithInt:3]]){
                    stringGrade=[NSString stringWithFormat:@"3rd Grade"];
                }else{
                    stringGrade=[NSString stringWithFormat:@"%@th Grade",category.studentGrade];
                }
            }
            [filtergradeArray addObject:stringGrade];
            
            if([category.studentImage isKindOfClass:[NSNull class]] || [category.studentImage length]==0){
                [filterstudentImg addObject:@""];
            }
            else{
                [filterstudentImg addObject:category.studentImage];
            }
        }*/
        SearechTable.hidden=YES;
        schoolsearchView.hidden=NO;
        //searchresultTable.hidden=NO;
        [searchresultTable reloadData];
        
        NSLog(@"filterstudentNameArray---%@",filterstudentNameArray);
        NSLog(@"filterstudentlastNameArray---%@",filterstudentlastNameArray);
        NSLog(@"filtergradeArray---%@",filtergradeArray);
        NSLog(@"filteradressArray---%@",filteradressArray);
        NSLog(@"filterstudentImg---%@",filterstudentImg);
        
    }else if (tableView==searchresultTable) {
    }else{
        
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    if (tableView==SearechTable) {
        
    }else if (tableView==searchresultTable) {
    }else{
        return 40;
    }
    return 0;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (tableView==SearechTable) {
        
    }else if (tableView==searchresultTable) {

    }else{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 18)];
      //  [view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Colectionheader"]]];
        UIDeviceOrientation Orientation=[[UIDevice currentDevice]orientation];
        if(Orientation==UIDeviceOrientationLandscapeLeft || Orientation==UIDeviceOrientationLandscapeRight)
        {
                sectionheaderlabel = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, tableView.frame.size.width, 48)];
                
                sectionheaderlabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, tableView.frame.size.width, 48)];
        }else{
        /* Create custom view to display section header... */
            sectionheaderlabel = [[UILabel alloc] initWithFrame:CGRectMake(18, 0, tableView.frame.size.width, 48)];
        }
        [sectionheaderlabel setFont:[UIFont systemFontOfSize:16]];
        //  NSString *string =[list objectAtIndex:section];
        /* Section header is in 0th index... */
        //  [label setText:string];
        sectionheaderlabel.text=@"Kindergarten";
        sectionheaderlabel.textColor=[UIColor whiteColor];
        
        headerImage = [UIImage imageNamed:@"Colectionheader"];
        img=[[UIImageView alloc] init];
        img.image=headerImage;
        [view addSubview:img];
        
        img.translatesAutoresizingMaskIntoConstraints=NO;
        
        NSDictionary *headerDictionary = @{@"headerimg":img};
        
        
        NSArray *constraint_header_x = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[headerimg(48)]"
                                                                               options:0
                                                                               metrics:nil
                                                                                 views:headerDictionary];
        NSArray *constraint_header_y = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[headerimg]-0-|"
                                                                               options:0
                                                                               metrics:nil
                                                                                 views:headerDictionary];
        
        [view addConstraints:constraint_header_x];
        [view addConstraints:constraint_header_y];

        [view addSubview:sectionheaderlabel];

       // [view setBackgroundColor:[UIColor colorWithRed:33.0/255.0 green:150.0/255.0 blue:243.0/255.0 alpha:1.0]]; //your background color...
        
        if (barbuttontags==101) {
            sectionheaderlabel.text=@"Kindergarten";
        }
        if (barbuttontags==102) {
            sectionheaderlabel.text=@"Kindergarten";
        }
        if (barbuttontags==103) {
            sectionheaderlabel.text=@"5th Grade";
        }
        if (barbuttontags==104) {
            sectionheaderlabel.text=@"3th Grade";
        }
        
        return view;
    }
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView==SearechTable) {
        static NSString *cellIdentifier = @"cellidentifier";
        
        UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        
        if (cell1 == nil) {
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        cell1.textLabel.text=[filteredContentList objectAtIndex:indexPath.row];
        cell1.textLabel.textColor=[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.55];
        
        return cell1;
        
        
    }else if (tableView==searchresultTable) {
        static NSString *cellIdentifier = @"SchoolCell";
        SchoolTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell == nil) {
            cell = [[SchoolTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        
        UIImage *imagedata=nil;
        if(imagedata==nil){
            cell.Studentphoto.contentMode=UIViewContentModeScaleAspectFill;
            cell.Studentphoto.image=[UIImage imageNamed:@"profile-image"];
        }else{
            cell.Studentphoto.contentMode=UIViewContentModeScaleAspectFill;
            cell.Studentphoto.image=imagedata;
            
        }
        cell.Studentphoto.tag=indexPath.row;
        cell.Studentphoto.userInteractionEnabled=YES;
        
        cell.Studentphoto.layer.borderColor=[UIColor whiteColor].CGColor;
        cell.Studentphoto.layer.borderWidth=1.0;
        
        UITapGestureRecognizer *tapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myFunction:)];
        tapped.numberOfTapsRequired = 1;
        tapped.accessibilityLabel=[filterstudentidArray objectAtIndex:indexPath.row];
        [cell.Studentphoto addGestureRecognizer:tapped];
        
        cell.lbl_studentName.text=[NSString stringWithFormat:@"%@, %@",[filterstudentlastNameArray objectAtIndex:indexPath.row],[filterstudentNameArray objectAtIndex:indexPath.row]];
        cell.lbl_grade.text=[NSString stringWithFormat:@"%@",[filtergradeArray objectAtIndex:indexPath.row]];
        cell.lbl_addressDetail.text=[NSString stringWithFormat:@"%@",[filteradressArray objectAtIndex:indexPath.row]];
        cell.backgroundColor=[UIColor clearColor];
        
        cell.selectionStyle=UITableViewCellSeparatorStyleNone;
        //cell.backgroundColor=[UIColor colorWithRed:255.0 green:255.0 blue:255.0 alpha:0.87];
        return cell;
        
    }else{
        static NSString *cellIdentifier = @"SchoolCell";
        
        SchoolTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:cellIdentifier ];
        
        if (cell == nil) {
            cell = [[SchoolTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        
        UIImage *imagedata=nil;
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                             NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSString *imageCacheDirPath = [documentsDirectory stringByAppendingPathComponent:@"Images"];
        NSString *strfile=[NSString stringWithFormat:@"%@.png",[studentidArray objectAtIndex:indexPath.row]];
        NSString* path = [imageCacheDirPath stringByAppendingPathComponent:strfile];
        imagedata = [UIImage imageWithContentsOfFile:path];
        if(imagedata==nil){
            cell.Studentphoto.contentMode=UIViewContentModeScaleAspectFill;
            cell.Studentphoto.image=[UIImage imageNamed:@"profile-image"];
        }else{
            cell.Studentphoto.contentMode=UIViewContentModeScaleAspectFill;
            cell.Studentphoto.image=imagedata;
            
            
        }
        cell.Studentphoto.layer.borderWidth = 1.0f;
        cell.Studentphoto.layer.borderColor = [UIColor whiteColor].CGColor;
        cell.Studentphoto.tag=indexPath.row;
        cell.Studentphoto.userInteractionEnabled=YES;
        
        UITapGestureRecognizer *tapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myFunction:)];
        tapped.numberOfTapsRequired = 1;
        tapped.accessibilityLabel=[studentidArray objectAtIndex:indexPath.row];
        [cell.Studentphoto addGestureRecognizer:tapped];
        
        cell.lbl_studentName.text=[NSString stringWithFormat:@"%@, %@",[studentlastNameArray objectAtIndex:indexPath.row],[studentNameArray objectAtIndex:indexPath.row]];
        cell.lbl_grade.text=[NSString stringWithFormat:@"%@",[gradeArray objectAtIndex:indexPath.row]];
        cell.lbl_addressDetail.text=[NSString stringWithFormat:@"%@",[adressArray objectAtIndex:indexPath.row]];
        
        cell.selectionStyle=UITableViewCellSeparatorStyleNone;
        
        
        return cell;
    }
    return 0;
}
-(void)myFunction:(id)sender{
    gradebtn.hidden=YES;
    
    UITapGestureRecognizer *gesture = (UITapGestureRecognizer *) sender;
    NSLog(@"Tag = %ld", (long)gesture.accessibilityLabel);
    [[NSUserDefaults standardUserDefaults] setValue:gesture.accessibilityLabel forKey:@"studentid"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    DetailViewController *detailsViewController = [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
//    [self presentViewController:detailsViewController animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
