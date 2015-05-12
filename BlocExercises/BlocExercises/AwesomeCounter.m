//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSString *numberString = @"";
    
    NSInteger lowerNumber = number;
    NSInteger higherNumber = otherNumber;
    
    
    if (number > otherNumber) {
        lowerNumber = otherNumber;
        higherNumber = number;
    }
    
    while (lowerNumber <= higherNumber) {
        numberString = [numberString stringByAppendingFormat:@"%ld", (long) lowerNumber++];
    }
    return numberString;
}

@end
