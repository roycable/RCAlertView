//
//  RCAlertView.m
//  RCAlertView
//
//  Created by Roy Cablewski on 8/05/13.
//  Copyright (c) 2013 Roy Cablewski. All rights reserved.
//

#import "RCAlertView.h"

@interface RCAlertView ()

@property (nonatomic, copy) void (^onSelectionMade)(NSInteger selectedButtonIndex);

@end

@implementation RCAlertView

static RCAlertView *instance = nil;

+ (RCAlertView *) shared {
    
    @synchronized(self) {
        
        if (instance == nil) {            
            instance = [RCAlertView new];
        }
        
        return instance;
    }
}

- (void) alertWithTitle:(NSString *) _heading
             andMessage:(NSString *) _message
         andButtonTitle:(NSString *) _buttonTitle {
    
    self.onSelectionMade = nil;
    UIAlertView *_alert = [[UIAlertView alloc] initWithTitle:_heading
                                                     message:_message
                                                    delegate:self
                                           cancelButtonTitle:nil
                                           otherButtonTitles:_buttonTitle, nil];
    [_alert show];
}

- (void) alertWithTitle:(NSString *) _heading
             andMessage:(NSString *) _message
         andCancelTitle:(NSString *) _cancelButtonTitle
         andActionTitle:(NSString *) _actionButtonTitle
            onSelection:(void (^)(NSInteger)) completionBlock {
    
    self.onSelectionMade = completionBlock;
    
    UIAlertView *_alert = [[UIAlertView alloc] initWithTitle:_heading
                                                     message:_message
                                                    delegate:self
                                           cancelButtonTitle:_cancelButtonTitle
                                           otherButtonTitles:_actionButtonTitle, nil];
    [_alert show];
        
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if (self.onSelectionMade) {
        self.onSelectionMade(buttonIndex); // not authorized - could be child-locked by parent.
    }
    
}

@end
