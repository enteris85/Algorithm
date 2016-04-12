//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
* 문제URL : https://www.acmicpc.net/problem/9935
* 입력
* mirkovC4nizCC44
* C4
*
* 출력
* mirkovniz
*
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputStr[1000000];
        char compareStr[36];
        scanf("%s",inputStr);
        scanf("%s",compareStr);
        
        NSString *input = [NSString stringWithUTF8String:inputStr];
        NSString *compare = [NSString stringWithUTF8String:compareStr];
        
        while (true) {
            NSString *temp;
            temp = [input stringByReplacingOccurrencesOfString:compare withString:@""];
            if ([temp isEqualToString:input]) {
                input = temp;
                break;
            }
            input = temp;
        }
        
        NSLog(@"%@",input);

    }
    return 0;
}
