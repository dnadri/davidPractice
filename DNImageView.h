//
//  DNImageView.h
//  David101
//
//  Created by David Nadri on 2/23/15.
//  Copyright (c) 2015 David Nadri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DNImageView : UIImageView

- (instancetype)initWithType:(DVPageType *) pageType;
+ (NSURL *)imageURLforType:(DVPageType *) pageType;
- (void)NSOperationSetup;
- (void)loadImage;
- (void)displayImage:(UIImage *)image;


@end
