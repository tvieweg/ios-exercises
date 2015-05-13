//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *arrayOfStarTrekCharacters = [characterString componentsSeparatedByString:@";"];
    
    return arrayOfStarTrekCharacters;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *stringOfPicards = [characterArray componentsJoinedByString:@";"];
    return stringOfPicards;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSSortDescriptor *sortAlphabetically = [[NSSortDescriptor alloc] initWithKey: nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray *sortedCharacters = [characterArray sortedArrayUsingDescriptors:@[sortAlphabetically]];
    
    return sortedCharacters;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    BOOL worfIsHere = NO;
    
    NSPredicate *worfDetector = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    NSArray *worfArray = [characterArray filteredArrayUsingPredicate:worfDetector];
        
    if (worfArray.count > 0) {
        worfIsHere = YES;
    }
        
    return worfIsHere;
}

@end
