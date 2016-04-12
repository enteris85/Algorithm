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
        char inputStr[1000];
        scanf("%s",inputStr);
        
        for (int i = 0; i < strlen(inputStr); i++) {
            int code = inputStr[i] - 'A' - 3;
            if (code < 0) {
                code = 26 + code;
            }
            
            inputStr[i] = code+ 'A';
        }
        
        printf("%s",inputStr);

    }
    return 0;
}
