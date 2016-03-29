//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
* Example URL : http://www.jungol.co.kr/bbs/board.php?bo_table=pbank&wr_id=527&sca=50
*
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputStr[73];

        int charCnt[100] = {0};
        for (int i = 0; i < 4; i++) {
            gets(inputStr);
//            scanf("%[^\n]",msg);

            for (int j = 0; j < strlen(inputStr); j++) {
                ++charCnt[inputStr[j]];
            }
        }
        
        int maxNum = charCnt['A'];
        //최대값
        for (int i = 'A'; i < 'Z' ; ++i) {
            if (maxNum < charCnt[i]) {
                maxNum = charCnt[i];
            }
        }
        
        for (int i = maxNum; i > 0; --i) {
            for (int j = 'A'; j <= 'Z'; j++) {
                if (charCnt[j] >= i) {
                    printf("* ");
                }else {
                    printf("  ");
                }
            }
            printf("\n");
//            puts("");
        }
        
        for(int i = 'A'; i <= 'Z'; ++i) {
            printf("%c ", i);
        }
        
        
//        char buffer[100];
//        char *p = malloc(sizeof(char)*128);
//        NSMutableArray *arr = [[NSMutableArray alloc] init];
//        int caseCtn = 0;
//        scanf("%d",&caseCtn);
//        for (int i = 0; i < caseCtn; i++) {
//            scanf("%s",buffer);
//            NSString *str = [NSString stringWithUTF8String:buffer];
//            NSString *changedStr = @"";
//            
////            str = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
////            NSString *trimStr = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
//            
//            for (int i = 0; i < str.length; i ++) {
//                if (i%2==0) {
//                    unichar c = [str characterAtIndex:i];
//                    changedStr = [changedStr stringByAppendingString:[NSString stringWithFormat:@"%c",c]];
//                }
//            }
//            for (int i = 0; i < str.length; i++) {
//                if (i%2!=0) {
//                    unichar c = [str characterAtIndex:i];
//                    changedStr = [changedStr stringByAppendingString:[NSString stringWithFormat:@"%c",c]];
//                }
//            }
//            [arr addObject:changedStr];
//        }
//        NSLog(@"%@",arr);
//        for (NSString *str in arr) {
//            NSLog(@"%@",str);
//        }
    }
    return 0;
}
