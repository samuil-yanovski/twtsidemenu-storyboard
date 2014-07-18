twtsidemenu-storyboard
===============

TWTSideMenu Storyboard is an example of the [TWTSideMenu library](https://github.com/twotoasters/TWTSideMenuViewController)  using Storyboards.



#### Setup

Storyboard usage is rather simple.

- Add the following properties to your App Delegate:
```objective-c
@property (strong, nonatomic) UIViewController* mainViewController;
@property (strong, nonatomic) UIViewController* menuViewController;
@property (strong, nonatomic) TWTSideMenuViewController* sideMenuViewController;
```
- Add a View Controller for your menu layout in the Storyboard. You should provide a Storyboard ID - in my case ```menuViewController```.
- Override ```application:didFinishLaunchingWithOptions:``` like that:
```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // remember to change the identifier with the one you've used in the Storyboard
    self.menuViewController = [self.window.rootViewController.storyboard instantiateViewControllerWithIdentifier:@"menuViewController"];
    self.mainViewController = self.window.rootViewController;
    
    // create a new side menu
    self.sideMenuViewController = [[TWTSideMenuViewController alloc] initWithMenuViewController:self.menuViewController mainViewController: self.mainViewController];
    
    // specify the shadow color to use behind the main view controller when it is scaled down.
    self.sideMenuViewController.shadowColor = [UIColor blackColor];
    
    // specify a UIOffset to offset the open position of the menu
    self.sideMenuViewController.edgeOffset = UIOffsetMake(18.0f, 0.0f);
    
    // specify a scale to zoom the interface — the scale is 0.0 (scaled to 0% of it's size) to 1.0 (not scaled at all). The example here specifies that it zooms so that the main view is 56.34% of it's size in open mode.
    self.sideMenuViewController.zoomScale = 0.5634f;
    
    // set the side menu controller as the root view controller
    self.window.rootViewController = self.sideMenuViewController;
    
    return YES;
}
```
- Add a Navigation Controller and View Controller for your content
- Add a Bar Button to your content View Controller and wire it to an IBAction to toggle the side menu with a method like this one:
```objective-c
- (IBAction) toggleMenu:(id)sender  {
    YANAppDelegate* delegate = [[UIApplication sharedApplication] delegate];
    [delegate.sideMenuViewController toggleMenuAnimated:YES completion: nil];
}
```

At that point you should be ready to go!


#### Aknowledgement

All credits go to [Two Toasters](@twotoasters) for providing the library. :)

#### License

This product is provided under the The MIT License (MIT). For more information please refer to the LICENSE file.

