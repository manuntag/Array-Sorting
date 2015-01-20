//
//  main.m
//  Array Sorting
//
//  Created by David Manuntag on 2015-01-19.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SortingTools.h"
#import "Lists.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Lists * list = [[Lists alloc]init];
        SortingTools * tool = [[SortingTools alloc]init];
        
        // sort list alphabetically
        
        NSLog(@"\n1.List sorted Alphabetically");
        
        [tool sortAlphabetically:list.assignmentWordList];
        
        // sort list by length
        
        NSLog(@"\n2.List sorted by length");
        [tool  sortByLength:list.assignmentWordList];
        
        //sorted by last character
        
        NSLog(@"\n3.Sort alphabetically by last character");
        [tool sortAlphabeticallyByLastCharacter:list.assignmentWordList];
        
        
        NSLog(@"\n4.Sort by number of e");
        [tool soryByOccurencesOfE:list.assignmentWordList];
        
        
    }
    return 0;
}
