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
int reverse (int a) {
    int three = a/100;
    int two = (a/10)%10;
    int one = a%10;
    
    return one*100+two*10+three;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a,b;
        scanf("%d %d",&a,&b);
        int result = reverse(a);
        int result2 = reverse(b);
        if (result > result2) {
            printf("%d",result);
        }else if (result < result2) {
            printf("%d",result2);
        }else {
            printf("same");
        }
        
        
    }
    return 0;
}
