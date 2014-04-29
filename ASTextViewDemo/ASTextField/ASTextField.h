//
//  UITextField+ASTextField.h
//  ASTextViewDemo
//
//  Created by Adil Soomro on 4/14/14.
//  Copyright (c) 2014 Adil Soomro. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    ASTextFieldTypeDefault,
    ASTextFieldTypeRound
}ASTextFieldType;

@interface ASTextField : UITextField

@end


@interface UITextField ()
- (void)setupTextFieldWithIconName:(NSString *)name;
- (void)setupTextFieldWithType:(ASTextFieldType)type withIconName:(NSString *)name;
@end
