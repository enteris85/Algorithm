//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
* 문제URL : https://www.acmicpc.net/problem/2998
* 입력
* 1010
*
*
* 출력
* 12
*
*/
#import <Foundation/Foundation.h>
#include <string.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char input[1000];
        scanf("%1000s",input);
        
        NSString *str = [NSString stringWithUTF8String:input];
        
        while (str.length%3!=0) {
            str = [NSString stringWithFormat:@"0%@",str];
        }
        for (int i = 0; i < str.length; i+=3) {
            int sum = 0;
            if ([[str substringWithRange:NSMakeRange(i, 1)] isEqualToString:@"1"]) {
                sum += 4;
            }
            if ([[str substringWithRange:NSMakeRange(i+1, 1)] isEqualToString:@"1"]) {
                sum += 2;
            }
            if ([[str substringWithRange:NSMakeRange(i+2, 1)] isEqualToString:@"1"]) {
                sum += 1;
            }
            printf("%d",sum);
        }
    }
    return 0;
}
