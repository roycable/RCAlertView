# RCAlertView

UIAlertView with blocks - simple.

# Installation

 - Add 'RCAlertView.h' and 'RCAlertView.m' to your project
 - add `#import RCAlertView.h` to your project (such as in your .PCH file)

# How to use it?

## Simple Alert, with no button delegation or block

        [[RCAlertView shared] alertWithTitle:@"This is my title" 
                            andMessage:@"Thanks for using RCAlertView" 
                        andButtonTitle:@"No Worries"];

## Two button Alert, with bocks

        [[RCAlertView shared] alertWithTitle:@"Title" 
                                  andMessage:@"This alert has two buttons" 
                              andCancelTitle:@"Ok" 
                              andActionTitle:@"Proceed" 
                              onSelection:^(NSInteger selectedButtonIndex)  {
                              
            NSLog(@">>>> %i", selectedButtonIndex);
            if (selectedButtonIndex == 1) {
              // Proceed
            } else {
              // Cancel
            }
        }];


# Continued Development

RCAlertView will continue to improve with more features to be added - eg. support for more than 2 buttons - so hold tight.

# License

Copyright (c) 2013 Roy Cablewski

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
