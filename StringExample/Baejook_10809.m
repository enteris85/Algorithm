//
//  main.m
//  algorithm
//
//  Created by 규석 이 on 2016. 3. 13..
//  Copyright (c) 2016년 규석 이. All rights reserved.
//
// 입력
// baekjoon
//
// 출력
// 1 0 -1 -1 2 -1 -1 -1 -1 4 3 -1 -1 7 5 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char buffer[100];
        scanf("%s",buffer);
        NSString *str = @"";
        
        for (char i = 'a'; i <= 'z'; i++){
            int index = -1;
            
            for (int j = 0; j < strlen(buffer); j++) {
                if (buffer[j] == i) {
                    index = j;
                    break;
                }
            }
            str = [str stringByAppendingString:[NSString stringWithFormat:@"%d ",index]];
        }
        NSLog(@"%@",str);
        
    }
    return 0;
}
