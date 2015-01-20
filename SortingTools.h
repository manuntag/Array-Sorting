//
//  SortingTools.h
//  Array Sorting
//
//  Created by David Manuntag on 2015-01-19.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SortingTools : NSObject

-(void)sortAlphabetically:(NSArray*)list;

-(void)sortByLength:(NSArray*)list;

-(void)sortAlphabeticallyByLastCharacter:(NSArray *)list;

-(void)soryByOccurencesOfE:(NSArray*)list;

@end
