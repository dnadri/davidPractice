//
//  DNImageView.m
//  David101
//
//  Created by David Nadri on 2/23/15.
//  Copyright (c) 2015 David Nadri. All rights reserved.
//

#import "DNImageView.h"
#import "MainViewController.h"

@implementation DNImageView

-(instancetype)init {
    [NSException raise:@"Improper init type" format:@"This imageview must have a type"];
}

-(instancetype)initWithType:(DVPageType *) pageType {

    if (self = [super init]) {
        self.image = placeholder
        // load image and replace
    }
    
    return self;

}

+ (NSURL *)imageURLforType:(DVPageType *) pageType {
    return [NSURL URLWithString:<#(NSString *)#>];
}

/* http://nshipster.com/nsoperation/
 http://tech.pro/tutorial/1011/loading-images-asynchronously-on-iphone-using-nsinvocationoperation
 */
-(void) NSOperationSetup {
    NSOperationQueue *queue = [NSOperationQueue new];
    NSInvocationOperation *operation = [[NSInvocationOperation alloc]
                                        initWithTarget:self
                                        selector:@selector(loadImage)
                                        object:nil];
    [queue addOperation:operation];
}

- (void)loadImage {
    NSData* imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"imageurl.jpg"]]; //some image
    UIImage* image = [[UIImage alloc] initWithData:imageData];
    [self performSelectorOnMainThread:@selector(displayImage:) withObject:image waitUntilDone:NO];
}

- (void)displayImage:(UIImage *)image {
    [imageView setImage:image]; //UIImageView
}

@end
