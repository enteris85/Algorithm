//
//  main.m
//  testmac
//
//  Created by enteris on 2016. 3. 8..
//  Copyright © 2016년 12corp. All rights reserved.
//
/**
*
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         1. Using NSSortDescriptor
         */
        NSMutableArray *arr1 = [[NSMutableArray alloc] init];
        [arr1 addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:10],@"num", nil]];
        [arr1 addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:3],@"num", nil]];
        [arr1 addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:14],@"num", nil]];
        [arr1 addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:1],@"num", nil]];
        [arr1 addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:20],@"num", nil]];
        [arr1 addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2],@"num", nil]];
        [arr1 addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:8],@"num", nil]];
        
        NSSortDescriptor *lastSortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"num" ascending:YES selector:@selector(compare:)];
        NSArray *arr2 = [NSArray arrayWithObject:lastSortDescriptor];
        NSArray *arr3 = [arr1 sortedArrayUsingDescriptors:arr2]; // sorted array
        NSLog(@"%@",arr3);
        
        /**
         2. Using Block sorting
         */
        NSMutableArray *arr4 = [[NSMutableArray alloc] init];
        [arr4 addObject:[NSNumber numberWithInteger:10]];
        [arr4 addObject:[NSNumber numberWithInteger:1]];
        [arr4 addObject:[NSNumber numberWithInteger:15]];
        [arr4 addObject:[NSNumber numberWithInteger:3]];
        [arr4 addObject:[NSNumber numberWithInteger:20]];
        [arr4 addObject:[NSNumber numberWithInteger:2]];
        NSArray *arr5 = [arr4 sortedArrayUsingComparator:^(id obj1,id obj2){
            if ([obj1 integerValue] > [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedDescending;
            }else if ([obj2 integerValue]>[obj1 integerValue]) {
                return (NSComparisonResult)NSOrderedAscending;
            }else {
                return (NSComparisonResult)NSOrderedSame;
            }
            
        }];
        // arr5 was sorted
        NSLog(@"%@",arr5);
        
    }
    return 0;
}
