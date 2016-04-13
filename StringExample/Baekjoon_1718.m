//
//  main.m
//  algorithm2
//
//  Created by 규석 이 on 2016. 3. 23..
//  Copyright (c) 2016년 규석 이. All rights reserved.
//
/**
* Example URL : https://www.acmicpc.net/problem/1718
*
* 입력
* nice day
* love
*
* 출력
* btgz oet
*/
#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputStr[1000];
        char keys[1000];
        gets(inputStr);
        scanf("%s",keys);
        
        for (int i = 0; i < strlen(inputStr); i++) {
            char key = keys[i%strlen(keys)];
            int index = key - 'a' + 1;
            if (inputStr[i] == ' ') {
                continue;
            }
            int costom = inputStr[i] - 'a' - index;
            if (costom < 0) {
                costom = 26 + costom;
            }
            
            inputStr[i] = 'a' + costom;
        }
        printf("%s",inputStr);
    }
    return 0;
}
