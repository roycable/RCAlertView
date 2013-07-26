//
//  RCAlertView.h
//  RCAlertView
//
//  Created by Roy Cablewski on 8/05/13.
//  Copyright (c) 2013 Roy Cablewski. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface RCAlertView : NSObject <UIAlertViewDelegate> {
    NSString *messageTitle;
    NSString *messageText;
}

+ (RCAlertView *) shared;

// this is for when we have multiple buttons, and need to detect which button was tapped
- (void) alertWithTitle:(NSString *) _heading
             andMessage:(NSString *) _message
         andCancelTitle:(NSString *) _cancelButtonTitle
         andActionTitle:(NSString *) _actionButtonTitle
            onSelection:(void (^)(NSInteger)) completionBlock;

// Use this when you want to display a message, with one button.
- (void) alertWithTitle:(NSString *)_heading
             andMessage:(NSString *)_message
         andButtonTitle:(NSString *)_buttonTitle;

@end
