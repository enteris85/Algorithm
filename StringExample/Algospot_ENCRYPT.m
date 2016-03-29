//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
* Example URL : https://algospot.com/judge/problem/read/ENCRYPT
*
* 입력
* 2
* A
* HelloWorld
* xyz
*
* 출력
* A
* HloolelWrd
*
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char buffer[100];
        char *p = malloc(sizeof(char)*128);
        NSMutableArray *arr = [[NSMutableArray alloc] init];
        int caseCtn = 0;
        scanf("%d",&caseCtn);
        for (int i = 0; i < caseCtn; i++) {
            scanf("%s",buffer);
            NSString *str = [NSString stringWithUTF8String:buffer];
            NSString *changedStr = @"";
            
//            str = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
//            NSString *trimStr = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            
            for (int i = 0; i < str.length; i ++) {
                if (i%2==0) {
                    unichar c = [str characterAtIndex:i];
                    changedStr = [changedStr stringByAppendingString:[NSString stringWithFormat:@"%c",c]];
                }
            }
            for (int i = 0; i < str.length; i++) {
                if (i%2!=0) {
                    unichar c = [str characterAtIndex:i];
                    changedStr = [changedStr stringByAppendingString:[NSString stringWithFormat:@"%c",c]];
                }
            }
            [arr addObject:changedStr];
        }
        NSLog(@"%@",arr);
        for (NSString *str in arr) {
            NSLog(@"%@",str);
        }
    }
    return 0;
}
