//
//  main.m
//  algorithm
//
//  Created by 규석 이 on 2016. 3. 13..
//  Copyright (c) 2016년 규석 이. All rights reserved.
//
// Example URL: https://algospot.com/judge/problem/read/HABIT
//
// 입력
// 2
// uhmhellouhmmynameislibe
//
// 출력
// 3
//

#import <Foundation/Foundation.h>
int returnMaxlength(NSString* str,NSRange range,int repeatCnt) {
    NSString *tempStr = nil;
    int tempCnt = 0;
    int startIdx = (int)range.location;
    
    for (int i = startIdx; i <= str.length-range.length; i++) {
        NSRange tempRange = NSMakeRange(i, range.length);
        NSString *rangeStr = [str substringWithRange:tempRange];
        if (tempStr==nil) {
            tempStr = rangeStr;
            tempCnt++;
            if (tempCnt == repeatCnt) {
                return (int)range.length;
            }
            continue;
        }
        if ([tempStr isEqualToString:rangeStr]) {
            tempCnt++;
            if (tempCnt == repeatCnt) {
                return (int)range.length;
            }
        }
    }
    
    return 0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char strS[100];
        int repeatCnt;
        scanf("%d",&repeatCnt);
        scanf("%s",strS);
        
        NSString *str = [NSString stringWithUTF8String:strS];
        
        for (int i = 1; i <= str.length; i++) {
            for (int j = 0; j <= str.length-i; j++) {
                NSRange range = NSMakeRange(j, i);
                
                int max = returnMaxlength(str, range, repeatCnt);
            }
        }
    }
    return 0;
}




