//
//  main.m
//  algorithm
//
//  Created by 규석 이 on 2016. 3. 13..
//  Copyright (c) 2016년 규석 이. All rights reserved.
//
// example URL : https://www.acmicpc.net/problem/2941
//
// 입력
// ljes=njak
//
// 출력
// 6
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr = [NSArray arrayWithObjects:@"c=",@"c-",@"dz=",@"d-",@"lj",@"nj",@"s=",@"z=", nil];
        char buffer[100];
        scanf("%s",buffer);
        NSString *str = [NSString stringWithUTF8String:buffer];
        for (int i = 0;i<[arr count];i++){
            NSRange range = [str rangeOfString:[arr objectAtIndex:i]];
            if (range.location != NSNotFound) {
                str = [str stringByReplacingOccurrencesOfString:[arr objectAtIndex:i] withString:@"a"];
            }
        }
        
        NSLog(@"%ld",(unsigned long)str.length);
    }
    return 0;
}
