//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
* 문제URL : https://www.acmicpc.net/problem/5598
* 입력
* MRL
*
*
* 출력
* JOI
*
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char input[1000];
        NSMutableArray *prefixArr = [[NSMutableArray alloc] init];
        scanf("%1000s",input);
        
        NSString *inpuStr = [NSString stringWithUTF8String:input];
        
        for (int i = 0; i < inpuStr.length; i++) {
            NSString *temp = [inpuStr substringWithRange:NSMakeRange(i, inpuStr.length-i)];
            [prefixArr addObject:temp];
        }
        
        NSArray *sortedArr = [prefixArr sortedArrayUsingSelector:@selector(compare:)];
        
        NSLog(@"%@",sortedArr);
    }
    return 0;
}
