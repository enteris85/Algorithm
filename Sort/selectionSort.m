//
//  main.m
//  algorithm
//
//  Created by 규석 이 on 2016. 3. 13..
//  Copyright (c) 2016년 규석 이. All rights reserved.
//

#import <Foundation/Foundation.h>

void selectionSort(int arr[], int size) {
    for (int i = 0; i < size-1; i++) {
        int indexMin = i;
        for (int j = i+1; j <= size-1; j++) {
            if (arr[indexMin]>arr[j]) {
                indexMin = j;
            }
        }
        int temp = arr[indexMin];
        arr[indexMin] = arr[i];
        arr[i] = temp;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int arr[] = {2,6,3,1,5};
        int size = sizeof(arr)/sizeof(int);
        selectionSort(arr,size);
        for (int i = 0; i <= size-1; i++) {
            printf("%d",arr[i]);
        }
    }
    return 0;
}




