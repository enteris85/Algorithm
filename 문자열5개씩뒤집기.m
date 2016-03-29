//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
 * 입력
 * 5
 * 7
 * 3 8
 * 8 1 0
 * 2 7 4 4
 * 4 5 2 6 5
 *
 * 출력
 * 30

*
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char str[21] = "abcde12345abcde12345";
        char arr[100] = {0};
        
        for (int i = 0 ; i < strlen(str); i++) {
            int index = (i/5)*5;
            int offset = 4 - i + index;
            
            
            arr[index+offset] = str[i];
        }
        printf("%s",arr);
        
        
//        NSString *resultStr = @"";
//        for (int i = 0; i < strlen(str); i+=5) {
//            NSString *str_a = [NSString stringWithUTF8String:str];
//            NSString *substring = [str_a substringWithRange:NSMakeRange(i, 5)];
//            for (int j = (int)substring.length-1; j >= 0; j--) {
//                NSString *chr = [substring substringWithRange:NSMakeRange(j, 1)];
//                resultStr = [resultStr stringByAppendingString:chr];
//            }
//        }
//        NSLog(@"%@",resultStr);
        
        
        
        
        
        
        
        
        
//        int caseCnt;
//        scanf("%d",&caseCnt);
//        
//        for (int i = 0; i < caseCnt; i++) {
//            char strA[100] = {0,};
//            scanf("%s",strA);
//            
//            NSString *str = [NSString stringWithUTF8String:strA];
//
//            NSArray *head = [NSArray arrayWithObjects:@"[",@"{",@"(", nil];
//            NSArray *tail = [NSArray arrayWithObjects:@"]",@"}",@")", nil];
//            
//            
//            NSMutableArray *stack = [[NSMutableArray alloc] init];
//            BOOL checkYn = YES;
//            for (int T = 0; T < str.length; T++) {
//                unichar character = [str characterAtIndex:T];
//                //여는 괄호
//                for (int j = 0; j < [head count]; j++) {
//                    unichar headChar = [[head objectAtIndex:j] characterAtIndex:0];
//                    if (character == headChar){
//                        [stack addObject:[NSNumber numberWithChar:headChar]];
//                        break;
//                    }
//                    
//
//                }
//                //닫는 괄호
//                for (int j = 0; j < [tail count]; j++) {
//                    unichar tailChar = [[tail objectAtIndex:j] characterAtIndex:0];
//                    if ((character == tailChar)&& ([stack count]>0) && [[stack lastObject] charValue]== [head objectAtIndex:j]) {
//                        [stack removeLastObject];
////                        break;
//                    }else {
//                        checkYn = NO;
////                        break;
//                    }
//                }
//                
//                
//                NSLog(@"%ld",(long)[stack count]);
//                
//                
//            }
//        }
        
//        int triangleCnt;
//        scanf("%d",&triangleCnt);
//        int triangle[500][500] = {0,};
//        
//        for (int i = 0; i < triangleCnt; i++) {
//            for (int j = 0; j <= i; j++) {
//                scanf("%d",&triangle[i][j]);
//            }
//        }
//        
//        for (int i = triangleCnt-2 ; i>=0; i--) {
//            for (int j = 0; j <= i ; j++) {
//                triangle[i][j] += MAX(triangle[i+1][j], triangle[i+1][j+1]);
//            }
//        }
//        printf("%d",triangle[0][0]);
        
//        char inputStr[73];
//
//        int charCnt[100] = {0};
//        for (int i = 0; i < 4; i++) {
//            gets(inputStr);
////            scanf("%[^\n]",msg);
//
//            for (int j = 0; j < strlen(inputStr); j++) {
//                ++charCnt[inputStr[j]];
//            }
//        }
//        
//        int maxNum = charCnt['A'];
//        //최대값
//        for (int i = 'A'; i < 'Z' ; ++i) {
//            if (maxNum < charCnt[i]) {
//                maxNum = charCnt[i];
//            }
//        }
//        
//        for (int i = maxNum; i > 0; --i) {
//            for (int j = 'A'; j <= 'Z'; j++) {
//                if (charCnt[j] >= i) {
//                    printf("* ");
//                }else {
//                    printf("  ");
//                }
//            }
//            printf("\n");
////            puts("");
//        }
//        
//        for(int i = 'A'; i <= 'Z'; ++i) {
//            printf("%c ", i);
//        }
//        

    }
    return 0;
}
