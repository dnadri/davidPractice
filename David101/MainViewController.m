//
//  ViewController.m
//  David101
//
//  Created by David Nadri on 2/4/15.
//  Copyright (c) 2015 David Nadri. All rights reserved.
//

#import "MainViewController.h"

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

@interface MainViewController()

@property (nonatomic, strong) NSArray* preferredOrderOfTypes;

@end

@implementation MainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width*8, self.view.frame.size.height);
    self.scrollView.delegate = self;
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:self.scrollView];
    
    for (NSInteger i = 0; i < [self.preferredOrderOfTypes count]; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        //adds a subview (colored background) to each of the 8 pages in the scrollView
        UIView *subview = [[UIView alloc] initWithFrame:frame];
        subview.backgroundColor = [MainViewController colorForType:[self.preferredOrderOfTypes[i] integerValue]];
        [self.scrollView addSubview:subview];
    }
    
}

- (NSArray*)preferredOrderOfTypes
{
    if(!_preferredOrderOfTypes)
    {
        _preferredOrderOfTypes =  @[@(DVPageTypeDefault), @(DVPageType1), @(DVPageType2), @(DVPageType3), @(DVPageType4), @(DVPageType5), @(DVPageType6), @(DVPageType7)];
    }

    return _preferredOrderOfTypes;
}

+ (UIColor *)colorForType:(DVPageType)pageType
{
    switch (pageType) {
        case DVPageTypeDefault:
            return [UIColor whiteColor];
        case DVPageType1:
            return [UIColor greenColor];
        case DVPageType2:
            return [UIColor blueColor];
        case DVPageType3:
            return [UIColor cyanColor];
        case DVPageType4:
            return [UIColor redColor];
        case DVPageType5:
            return [UIColor orangeColor];
        case DVPageType6:
            return [UIColor lightGrayColor];
        case DVPageType7:
            return [UIColor blackColor];
    }
}

@end
