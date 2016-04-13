//
//  main.m
//  algorithm2
//
//  Created by 규석 이 on 2016. 3. 23..
//  Copyright (c) 2016년 규석 이. All rights reserved.
//
/**
* Example URL : https://www.acmicpc.net/problem/5622
*
* 입력
* UNUCIC
*
* 출력
* 36
*/
#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int totalSec = 0;
        NSString *inputStr = @"UNUCIC";
        NSArray *arr = [NSArray arrayWithObjects:@"",@"",@"ABC",@"DEF",@"GHI",@"JKL",@"MNO",@"PQRS",@"TUV",@"WXYZ", nil];
        for (int i = 0; i < inputStr.length; i++) {
            for (int j = 0; j < [arr count]; j++) {
                NSString *str = [inputStr substringWithRange:NSMakeRange(i, 1)];
                if ([[arr objectAtIndex:j] rangeOfString:str].location != NSNotFound) {
                    totalSec += (j+1);
                }
            }
        }
        printf("%d",totalSec);
    }
    return 0;
}
