//
//  ViewController.m
//  测试拼音
//
//  Created by zhouxuanhe on 16/11/2.
//  Copyright © 2016年 zhouxuanhe. All rights reserved.
//

#import "NSString+pinyin.h"

@implementation NSString (pinyin)


//pinyin
-(NSString*)transformToPinyin{
    NSMutableString *mutableString=[NSMutableString stringWithString:self];
    CFStringTransform((CFMutableStringRef)mutableString,NULL,kCFStringTransformToLatin,false);
    mutableString = (NSMutableString*)[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
   mutableString = [[mutableString stringByReplacingOccurrencesOfString:@" " withString:@""] mutableCopy];
    return mutableString.lowercaseString;
}


- (NSString *)transformToPinyinFirstLetter {
    NSMutableString *stringM = [NSMutableString string];
    
    
    NSString *temp  =  nil;
    for(int i = 0; i < [self length]; i++){
        
        temp = [self substringWithRange:NSMakeRange(i, 1)];
        
        NSMutableString *mutableString=[NSMutableString stringWithString:temp];
        
        CFStringTransform((CFMutableStringRef)mutableString,NULL,kCFStringTransformToLatin,false);
        
        mutableString = (NSMutableString*)[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
        
        mutableString =  [[mutableString substringToIndex:1] mutableCopy];
        
        [stringM appendString:(NSString *)mutableString];
        
    }
    
    return stringM.lowercaseString;
}


@end
