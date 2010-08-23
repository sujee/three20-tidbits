//
//  Three20TidBitsAppDelegate.h
//  Three20TidBits
//
//  Created by Sujee Maniyam on 8/18/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Three20TidBitsViewController;

@interface Three20TidBitsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Three20TidBitsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Three20TidBitsViewController *viewController;

@end

