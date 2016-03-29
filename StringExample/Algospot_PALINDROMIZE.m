//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
* Example URL : https://algospot.com/judge/problem/read/PALINDROMIZE
*
* 입력
* 3
* there
* amanaplanacanal
* xyz
*
* 출력
* 7
* 21
* 5
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char buffer[100000];
        int caseCtn = 0;
        scanf("%d",&caseCtn);
        for (int i = 0; i < caseCtn; i++) {
            scanf("%s",buffer);
            
            NSString *str = [NSString stringWithUTF8String:buffer];
            int length = (int)str.length;
            int left = 0, right = length-1, endIdx = length-1;
            
            while ((left != right) && (left <= endIdx) && (right <= endIdx)) {
                if ([str characterAtIndex:left] == [str characterAtIndex:right]) {
                    left++,right++;
                }else {
                    length++;
                    if (right<endIdx) {
                        right++;
                    }else {
                        left++;
                    }
                    
                }
            }
            NSLog(@"%d",length);
        }
    }
    return 0;
}
