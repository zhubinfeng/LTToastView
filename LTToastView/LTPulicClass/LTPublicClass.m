//
//  LTPublicClass.m
//  ToastDemo-OC
//
//  Created by RP. wang on 2019/3/13.
//  Copyright © 2019 西安乐推网络科技有限公司. All rights reserved.
//

#import "LTPublicClass.h"

@implementation LTPublicClass

// MARK: - Whether the character is null.
+(BOOL)isStringNull:(NSString *)string{
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return YES;
    }
    if( [string isEqualToString:@""]){
        return YES;
    }
    if([string isEqualToString:@"<null>"]){
        return YES;
    }
    if([string isEqualToString:@"(null)"]){
        return YES;
    }
    return NO;
}


@end
