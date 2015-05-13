//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    number = [NSNumber numberWithInt: ([number intValue] * 2)];
    return (number);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *numberArray = [NSMutableArray new];
    
    NSInteger lowerNumber = number;
    NSInteger higherNumber = otherNumber;
    
    
    if (number > otherNumber) {
        lowerNumber = otherNumber;
        higherNumber = number;
    }
    
    while (lowerNumber <= higherNumber) {
        [numberArray addObject:[NSNumber numberWithInteger:lowerNumber++]];
    }
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSInteger currentLowestNumber = [arrayOfNumbers[0] integerValue];
    
    for (NSNumber *number in arrayOfNumbers) {
        if ([number integerValue] < currentLowestNumber) {
            currentLowestNumber = [number integerValue];
        }
    }
    return currentLowestNumber;
}

@end
