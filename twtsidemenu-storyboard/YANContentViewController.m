//
//  YANContentViewController.m
//  twtsidemenu-storyboard
//
//  Created by mac on 7/18/14.
//
//

#import "YANContentViewController.h"
#import "YANAppDelegate.h"
#import "TWTSideMenuViewController.h"

@interface YANContentViewController ()

@end

@implementation YANContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction) toggleMenu:(id)sender  {
    YANAppDelegate* delegate = [[UIApplication sharedApplication] delegate];
    [delegate.sideMenuViewController toggleMenuAnimated:YES completion: nil];
}

@end
