//
//  SortingTools.m
//  Array Sorting
//
//  Created by David Manuntag on 2015-01-19.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "SortingTools.h"

@implementation SortingTools


-(void)sortAlphabetically:(NSArray*)list {
    
    NSArray * sortedList = [list sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    for (NSArray * list in sortedList) {
        
        NSLog(@"%@", list);
        
    }
}

-(void)sortByLength:(NSArray*)list {
    
    
      NSArray *sortedByLength = [list sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
          
          if ([obj1 length] < [obj2 length]) {
              
              return (NSComparisonResult)NSOrderedDescending;
              
              
          } if ([obj1 length] > [obj2 length] ) {
              
              return (NSComparisonResult)NSOrderedAscending;
              
          }
          
          return (NSComparisonResult)NSOrderedSame;
      
    
      }];

    
    for (NSArray * sortedList in sortedByLength) {
        
        NSLog(@"%@",sortedList);
        
    }
    
}

-(void)sortAlphabeticallyByLastCharacter:(NSArray *)list {
    
   //block takes last character in each word and puts it at index 0
    
      NSMutableArray * newList = [[NSMutableArray alloc]init];
    
    [list enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
      
      NSInteger length = [(NSString*)obj length];
      NSInteger lengthOfCut = length -1;
      NSRange  rangeOfCut = NSMakeRange(0, lengthOfCut);
      NSString * lastChar = [(NSString*)obj stringByReplacingCharactersInRange:rangeOfCut withString:@""];
      NSMutableString * newWord = [[NSMutableString alloc]init];
      [newWord insertString:lastChar atIndex:0];
      [newWord insertString:(NSString*)obj atIndex:1];
      [newList addObject:newWord];
      
  }];
    
    
 NSArray * sortedAlphabeticallyByLastCharacter = [newList sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    for (NSArray * sortedByLast in sortedAlphabeticallyByLastCharacter) {
        NSLog(@"%@",sortedByLast );
    }
    
}



-(void)soryByOccurencesOfE:(NSArray*)list {

    NSArray * arraySortedByOccurencesOfE = [list sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        
        if ([[obj1  componentsSeparatedByString:@"e"]count]-1 < [[obj2  componentsSeparatedByString:@"e"]count]-1) {
            
            return (NSComparisonResult)NSOrderedAscending;
            
        } if ([[obj1  componentsSeparatedByString:@"e"]count]-1 < [[obj2  componentsSeparatedByString:@"e"]count]-1) {
            
            return (NSComparisonResult)NSOrderedDescending;
        }
        
        return (NSComparisonResult)NSOrderedSame;
        
    }];
    
    
    for (NSArray * sortedByE in arraySortedByOccurencesOfE) {
        NSLog(@"%@", sortedByE);
    }
    
}


@end
