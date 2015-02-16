//
//  ViewController.m
//  David101
//
//  Created by David Nadri on 2/4/15.
//  Copyright (c) 2015 David Nadri. All rights reserved.
//

#import "ViewController.h"

typedef NS_ENUM(NSInteger, DVPageType) {
    DVPageTypeDefault,
    DVPageType1,
    DVPageType2,
    DVPageType3,
    DVPageType4,
    DVPageType5,
    DVPageType6,
    DVPageType7,
};

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width*8, self.view.frame.size.height);
    self.scrollView.delegate = self;
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:self.scrollView];
    
    for (NSInteger i = 0; i < [ViewController preferredOrder] count]; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        //adds a subview (colored background) to each of the 8 pages in the scrollView
        UIView *subview = [[UIView alloc] initWithFrame:frame];
        subview.backgroundColor = [ViewController colorForType:[ViewController preferredOrder][i]];
        [self.scrollView addSubview:subview];
    }
    
}

+ (NSArray*) preferredOrderOfTypes {
    NSArray *colors = [NSArray arrayWithObjects:[UIColor whiteColor], [UIColor greenColor], [UIColor blueColor], [UIColor cyanColor], [UIColor redColor], [UIColor orangeColor], [UIColor lightGrayColor], [UIColor blackColor], nil];
    
    return colors;
}

+ (UIColor*) colorForType:(DVPageType)pageType {
    switch (pageType) {
        case DVPageTypeDefault:
            NSLog(@"DVPageTypeDefault");
            return DVPageTypeDefault;
            break;
        case DVPageType1:
            NSLog(@"DVPageType1");
            return DVPageType1;
            break;
        case DVPageType2:
            NSLog(@"DVPageType2");
            return DVPageType2;
            break;
        case DVPageType3:
            NSLog(@"DVPageType3");
            return DVPageType3;
            break;
        case DVPageType4:
            NSLog(@"DVPageType4");
            return DVPageType4;
            break;
        case DVPageType5:
            NSLog(@"DVPageType5");
            return DVPageType5;
            break;
        case DVPageType6:
            NSLog(@"DVPageType6");
            return DVPageType6;
            break;
        case DVPageType7:
            NSLog(@"DVPageType7");
            return DVPageType7;
            break;
    }
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"scrollViewDidEndDragging");
}

-(void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"scrollViewDidEndDecelerating");
}

@end
