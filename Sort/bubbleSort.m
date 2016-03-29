//
//  main.m
//  algorithm
//
//  Created by 규석 이 on 2016. 3. 13..
//  Copyright (c) 2016년 규석 이. All rights reserved.
//
// 입력
// ljes=njak
//
// 출력
// 6
//

#import <Foundation/Foundation.h>

void bubbleSort(int arr[], int size) {
    for (int i = 0; i < size-1; i++) {
        for (int j=0; j < size-1-i; j++) {
            if (arr[j] > arr[j+1]) {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int arr[] = {2,6,3,1,5};
        
        int size = sizeof(arr)/sizeof(int);
        bubbleSort(arr,size);
        for (int i = 0; i <= size-1; i++) {
            printf("%d",arr[i]);
        }
    }
    return 0;
}

main ()
{
    NSMutable
    NSArray *arr = [NSArray arrayWithObjects:[NSNUmber numberWithInt:1],[NSNUmber numberWithInt:1],[NSNUmber numberWithInt:1],[NSNUmber numberWithInt:1],[NSNUmber numberWithInt:1],nil];
    
    for (int i = 0 ; i < [arr count]-1;i++){
        for (int j = 0; j < [arr count]-1-i; j++) {
            if ([arr objectAtIndex:j] == [arr objectAtIndex:j+1]) {
                <#statements#>
            }
        }
    }
}




