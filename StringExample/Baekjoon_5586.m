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
        int idx[1000] = {-1};
        int index = 0;
        scanf("%1000s",input);
        
        for (int i = 0; i < strlen(input)-1; i++) {
            if (input[i] == 'O' && input[i+1] == 'I') {
                idx[index] = i;
                index++;
            }
        }
        
        int JOI = 0;
        int IOI = 0;
        
        for (int i = 0; i < index; i++) {
            if (idx[i]==0) {
                continue;
            }
            if (input[idx[i]-1] == 'J') {
                JOI++;
                continue;
            }
            if (input[idx[i]-1] == 'I') {
                IOI++;
                continue;
            }
            
        }
        
        printf("%d\n%d",JOI,IOI);
    }
    return 0;
}
