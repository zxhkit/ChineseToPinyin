//
//  ViewController.m
//  测试拼音
//
//  Created by zhouxuanhe on 16/11/2.
//  Copyright © 2016年 zhouxuanhe. All rights reserved.
//



/*
        导入头文件,调用方法即可,返回结果.
*/
#import <Foundation/Foundation.h>

@interface NSString (pinyin)


///拼音 ->pinyin
-(NSString*)transformToPinyin;

///拼音首字母 -> py
- (NSString *)transformToPinyinFirstLetter;

@end
