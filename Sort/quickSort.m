//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//


*
*/
#import <Foundation/Foundation.h>
void swap(int arr[],int left, int right) {
    int temp = arr[left];
    arr[left] = arr[right];
    arr[right] = temp;
}
int quickSort(int arr[], int left, int right) {
    int low = left+1;
    int high = right;
    int pivot = arr[left];
    
    while (low <= high) {
        while (arr[low]<=pivot && low<=right) {
            low++;
        }
        while (arr[high]>=pivot && high >= left+1) {
            high--;
        }
        if (low <= high) {
            swap(arr, low, high);
            
        }
    }
    
    swap(arr, left, high);
    return high;
}
void quick_sort (int arr[], int left, int right) {
    if (left <= right) {
        int pivot = quickSort(arr, left, right);
        quickSort(arr, left, pivot-1);
        quickSort(arr, pivot+1, right);
    }
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //퀵정렬
        int arr[] = {6,3,9,1,2,7};
        int arrSize = sizeof(arr)/sizeof(int);
        quick_sort(arr,0,arrSize-1);
        
        for (int i = 0; i < arrSize; i++) {
            printf("%d",arr[i]);
        }
        
    }
    return 0;
}
