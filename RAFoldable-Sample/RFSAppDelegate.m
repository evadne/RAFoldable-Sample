#import <objc/runtime.h>
#import "RFSAppDelegate.h"
#import "RAFoldable.h"

@implementation RFSAppDelegate

- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	[self.window makeKeyAndVisible];
	return YES;
	
}

- (UIWindow *) window {

	if (!_window) {
		
		_window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
		_window.backgroundColor = [UIColor blackColor];
		
		UIViewController *rootVC = [UIViewController new];
		rootVC.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
		rootVC.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
		
		RAFoldableContainerView *fcv = [[RAFoldableContainerView alloc] initWithFrame:rootVC.view.bounds];
		
		fcv.foldableView.image = [UIImage imageNamed:@"Sample.jpeg"];
		
		[rootVC.view addSubview:fcv];
		
		_window.rootViewController = rootVC;
		
	}
	
	//	_window.transform = CGAffineTransformMakeScale(0.75f, 0.75f);
	
	return _window;
	
}

@end
