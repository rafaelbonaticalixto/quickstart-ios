//
//  Copyright (c) 2015 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

//
// For more information on setting up and running this sample code, see
// https://developers.google.com/firebase/docs/analytics/analytics-ios
//

#import "PatternTabBarController.h"

@import Firebase.Core;

@implementation PatternTabBarController

- (void)didTapShare:(id)sender {
  // [START custom_event_objc]
  [GMRAppMeasurement logEventWithName:kGMREventShare parameters:@{
                                                                  kGMRParameterContentType:@"cont",
                                                                  kGMRParameterContentID:@"1"
                                                                  }];
  // [END custom_event_objc]

  NSString *title = [NSString stringWithFormat:@"Share: %@",
                     self.selectedViewController.title];
  NSString *message =
      @"Share event sent to Analytics; actual share not implemented in this quickstart";
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                  message:message
                                                 delegate:nil
                                        cancelButtonTitle:@"Ok"
                                        otherButtonTitles:nil];
  [alert show];
}

@end
