//
//  Three20Demo1.m
//  Three20TidBits
//
//  Created by Sujee Maniyam on 8/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Three20Demo1.h"
#import "Three20/Three20+Additions.h"

@implementation Three20Demo1

- (void) runDemo
{
    {
        NSLog(@"\n\n====== NSString : white space =======");
        NSString *ws = @" \t\n";
        NSString *empty = @"    ";
        NSString *nws = @"hello";
        NSLog(@"'%@' contains only whitespace ? : %d", ws, [ws isWhitespaceAndNewlines]);
        NSLog(@"'%@' contains only whitespace ? : %d", nws, [nws isWhitespaceAndNewlines]);        
        NSLog(@"'%@' is empty? : %d", empty, [empty isEmptyOrWhitespace]);  
    }
    
    {
        NSLog(@"\n\n====== NSString : stripHTML =======");
        NSString *html = @"I <b>am</b> an HTML script.  <script type='text/javascript'>alert('surprise')</script>";
        NSString *stipped = [html stringByRemovingHTMLTags];
        NSLog(@"html : %@", html);
        NSLog(@"stripped : %@", stipped);
    }
    
    {
        NSLog(@"\n\n====== NSString : parse URL params =======");
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/search?sourceid=chrome&ie=UTF-8&q=pizza"];
        NSString *paramString = [url query];
        NSDictionary *params = [paramString queryDictionaryUsingEncoding:NSASCIIStringEncoding];
        NSLog(@"url : %@", url);
        NSLog(@"params:\n%@", params);
    }
    
    {
        NSLog(@"\n\n====== NSString : create URL query string =======");
        NSString *baseUrl = @"http://www.yahoo.com/search";
        NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
        [params setValue:@"pizza" forKey:@"q"];
        [params setValue:@"json" forKey:@"format"];
        NSString *fullURL = [baseUrl stringByAddingQueryDictionary:params];
        NSLog(@"query parameters\n%@", params);
        NSLog(@"query string is : %@", fullURL);
    }
   
    
    {
        NSLog(@"\n\n====== NSString : md5 =======");
        NSString *s1 = @"hiya three20 world";
        NSString *md5 = [s1 md5Hash];
        NSLog(@"md5('%@') =>  %@", s1, md5);
    }
    
    {
        NSLog(@"\n\n====== NSString : version check =======");
        NSString *v1 = @"2.5";
        NSString *v2 = @"3.0";
        NSString *v3 = @"3.0.1";
        NSLog(@"%@ <=> %@  is %d", v2, v1, [v2 versionStringCompare:v1]);
        NSLog(@"%@ <=> %@  is %d", v1, v2, [v1 versionStringCompare:v2]);
        NSLog(@"%@ <=> %@  is %d", v3, v2, [v3 versionStringCompare:v2]);
        NSLog(@"%@ <=> %@  is %d", v3, v3, [v3 versionStringCompare:v3]);
    }
    
    {
        NSLog(@"\n\n====== NSDate : format =======");
        NSDate *todayMidnight = [NSDate dateWithToday];
        NSLog(@"today midnight date is : %@", [todayMidnight formatDate]);
        
        NSDate *timeNow = [[NSDate alloc] init];
        NSDate *fewDaysBack = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:[timeNow timeIntervalSinceReferenceDate] - (3600*24 * 4)];
        
        NSLog(@"\n\n====== NSDate : relative time =======");
        NSLog(@"today midnight was : %@", [todayMidnight formatRelativeTime]);
        NSLog(@"just now was : %@", [timeNow formatRelativeTime]);
        NSLog(@"few days back was (short format) : %@ ago", [fewDaysBack formatShortRelativeTime]);
    }
    
    {
        // create TTImageView,
        // this can be done programatically, or change the class name
        // to 'TTImageView' in Interface Builder
        TTImageView *imgView = [[TTImageView alloc] init];
        // default image is displayed unitll the image is downloaded
        imgView.defaultImage = [UIImage imageNamed:@"place-holder.png"];
        // give it a URL to load image from
        imgView.urlPath = @"image url path";
        
        // now set the imageView to where ever you want
        // self.imageView = imgView
        
    }
}

@end
