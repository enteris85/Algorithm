//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
* 문제URL : https://www.acmicpc.net/problem/10987
* 입력
* baekjoon
*
* 출력
* 4
*
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char arr[6] = {'a','e','i','o','u'};
        char str[100];
        
        scanf("%s",str);
        int cnt = 0;
        for (int i = 0; i < strlen(str); i++) {
            for (int j = 0; j < strlen(arr); j++) {
                if (arr[j] == str[i]) {
                    cnt++;
                }
            }
        }
        printf("%d",cnt);
    }
    return 0;
}
