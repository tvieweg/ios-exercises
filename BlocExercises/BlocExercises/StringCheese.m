//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favoriteCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options: NSCaseInsensitiveSearch];
    
    NSString *noCheese;
    
    if (cheeseRange.location != NSNotFound) {
        noCheese = [cheeseName substringToIndex: cheeseRange.location];
    } else {
        noCheese = cheeseName;
    }
    
    return noCheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSString *numberOfCheeses;
    if (cheeseCount == 1) {
        numberOfCheeses = @"1 cheese";
    } else {
        numberOfCheeses = [NSString stringWithFormat:@"%lu cheeses", (unsigned long) cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return numberOfCheeses;
}

@end
