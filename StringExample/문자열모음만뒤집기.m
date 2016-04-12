//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
*
* 입력
* ddddabbbbecccciddddofffffu
*
* 출력
* ddddubbbbocccciddddefffffa
*
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char arr[6] = {'a','e','i','o','u'};
        char str[100] = "ddddabbbbecccciddddofffffu";
        NSMutableArray *idx = [[NSMutableArray alloc] init];
        
        for (int i = 0 ; i< strlen(str); i++) {
            for (int j = 0; j < strlen(arr); j++) {
                if (arr[j] == str[i]) {
                    [idx addObject:[NSNumber numberWithInt:i]];
                }
            }
        }
        
        int left = 0;
        int right = (int)[idx count]-1;;
        
        while (left < right ) {
            
            int leftValue = [[idx objectAtIndex:left] intValue];
            int rightValue = [[idx objectAtIndex:right] intValue];
            
            char temp = str[leftValue];
            str[leftValue] = str[rightValue];
            str[rightValue] = temp;
            left++,right--;
        }
        
        printf("%s",str);
        
    }
    return 0;
}
