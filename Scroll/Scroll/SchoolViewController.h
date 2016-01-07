//
//  SchoolViewController.h
//  SchoolTron
//
//  Created by SRM Technologies on 31/07/15.
//  Copyright (c) 2015 SRM Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface SchoolViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate,UIScrollViewDelegate>
{
    UIView *profileView;
    NSDictionary *viewsDictionary;
    BOOL m_more;
    
    UITableView *SchoolTableView;
    UITableView *SearechTable;
    UITableView *searchresultTable;
    UIToolbar *toolBar;
    UIButton *searchbtn;
    UILabel *lblStudentsTitle;
    UIButton *Menubtn;
    UIButton *Morebtn;
    UIButton *gradebtn;
    UIImage *headerImage;
    UIImageView *img;
    UILabel *lbl;
    UIButton *close;

    AppDelegate *appDelegate;
    IBOutlet UILabel *nolblitemsfocund;
    UITapGestureRecognizer * tap;
    NSArray  *constraint_queuetbl_x;
    NSArray   *constraint_queuetbl_y;
    
    NSArray  *constraint_searchtbl_x;
    NSArray   *constraint_searchtbl_y;
    
    NSArray  *constraint_searchresulttbl_x;
    NSArray   *constraint_searchresulttbl_y;
    NSArray  *constraint_login_x;
    NSArray   *constraint_login_y;
    NSArray  *constraint_title_x;
    NSArray   *constraint_title_y;
    NSArray  *constraint_clear_x,*constraint_clear_y;
    NSLayoutConstraint *ClearRightSpaceConstraint;
    NSArray  *constraint_refresh_x,*constraint_refresh_y;
    NSLayoutConstraint *RefreshRightSpaceConstraint;
    NSArray  *constraint_schoolview_x,*constraint_schoolview_y;
    NSArray  *constraint_grade_x;
    NSArray   *constraint_grade_y;
    NSLayoutConstraint *GradeRightSpaceConstraint;
    NSArray  *constraint_search_x;
    NSArray   *constraint_search_y;
    NSLayoutConstraint *SearchRightSpaceConstraint;
    UIBarButtonItem *borisItem;
    UIBarButtonItem *doblesItem;
    UIBarButtonItem *pilleItem;
    UIBarButtonItem *seidenItem;
    
    NSMutableArray *studentNameArray;
    NSMutableArray *studentlastNameArray;
    NSMutableArray *gradeArray;
    NSMutableArray *adressArray;
    NSMutableArray *studentidArray;
    NSMutableArray *studentImg;
    
    NSMutableArray *filterstudentNameArray;
    NSMutableArray *filterstudentlastNameArray;
    NSMutableArray *filtergradeArray;
    NSMutableArray *filteradressArray;
    NSMutableArray *filterstudentidArray;
    NSMutableArray *filterstudentImg;
    
    NSMutableArray *filteredContentList;
    NSMutableArray *gradeContentList;
    NSMutableArray *addressContentList;
    
    NSMutableArray *arrteacherId;
    NSMutableArray *arrteacherName;
    UIBarButtonItem *tempBtn;
    UIScrollView *scrollView;
    
    UISearchBar *searchbar;
    BOOL isSearching;
    UIView *schoolsearchView;
    NSInteger countindex;
    UIBarButtonItem *tmptagItem;
    NSMutableArray *arrbarbuttons;
    int indexOfPage;
    NSInteger tmpcount;
    NSInteger countstore;
    CGFloat newContentOffsetX;
    NSInteger pagenumber;
    UIPageControl * pageControl;
    
    
}
@end
