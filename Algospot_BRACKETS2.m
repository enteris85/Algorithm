//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
 * Example URL : https://algospot.com/judge/problem/read/BRACKETS2
 *
 * 입력
 * 3
 * (()()
 * ({[}])
 * ({}[(){}])
 *
 * 출력
 * YES
 * NO
 * YES

*
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int caseCnt;
        scanf("%d",&caseCnt);
        
        for (int i = 0; i < caseCnt; i++) {
            char strA[100] = {0,};
            scanf("%s",strA);
            
            NSString *str = [NSString stringWithUTF8String:strA];
            
//            NSSet *head = [NSSet setWithObjects:@"[",@"{",@"(",nil];
//            NSSet *tail = [NSSet setWithObjects:@"]",@"}",@")",nil];
            
            NSArray *head = [NSArray arrayWithObjects:@"[",@"{",@"(", nil];
            NSArray *tail = [NSArray arrayWithObjects:@"]",@"}",@")", nil];
            
            NSMutableArray *stack = [[NSMutableArray alloc] init];
            
            BOOL checkYn = YES;
            for (int T = 0; T < str.length; T++) {
                NSString *subStr = [str substringWithRange:NSMakeRange(T, 1)];
                if ([head containsObject:subStr]) {

                    [stack addObject:subStr];
                }else if ([tail containsObject:subStr]) {
                    if (([stack count]!=0) && ([head indexOfObject:[stack lastObject]] == [tail indexOfObject:subStr] )) {
                        [stack removeLastObject];
                    }else {
                        checkYn = NO;
                    }
                }
                
                
                printf("%d\n",checkYn);

                
            }
        }
        
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
