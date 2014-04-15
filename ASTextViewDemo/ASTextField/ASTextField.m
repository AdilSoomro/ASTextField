//
//  UITextField+ASTextField.m
//  ASTextViewDemo
//
//  Created by Adil Soomro on 4/14/14.
//  Copyright (c) 2014 Adil Soomro. All rights reserved.
//

#import "ASTextField.h"
#define kLeftPadding 50
#define kVerticalPadding 10
#define kHorizontalPadding 10

@implementation ASTextField

- (CGRect)textRectForBounds:(CGRect)bounds {
    CGFloat x = bounds.origin.x + kLeftPadding;
    CGFloat y = bounds.origin.y + kVerticalPadding;
    
    
    return CGRectMake(x,y,bounds.size.width - kHorizontalPadding*2, bounds.size.height - kVerticalPadding*2);
}
- (CGRect)editingRectForBounds:(CGRect)bounds {
    return [self textRectForBounds:bounds];
}

- (void)setupTextFieldWithIconName:(NSString *)name{
    CGFloat leftEdge = 43;
    UIImage *image = [UIImage imageNamed:@"text_field"];
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(10, leftEdge, 10, 19)];
    
    [self setBackground:image];
    
    UIImage *icon = [UIImage imageNamed:name];
    
    //38x35
    UIImageView * left = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, leftEdge, self.frame.size.height)];
    [left setImage:icon];
    [left setContentMode:UIViewContentModeCenter];
    self.leftView = left;
    self.leftViewMode = UITextFieldViewModeAlways;
    
}

@end
