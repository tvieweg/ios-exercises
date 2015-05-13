//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

NSString *favoriteDrinkKey = @"favorite drink";
NSString *quoteKey = @"quote";
NSString *picardQuote = @"Engage!";

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return [characterDictionary objectForKey: favoriteDrinkKey];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *favoriteTrekDrinks = [[NSMutableArray alloc] init]; 
    for (NSDictionary *character in charactersArray) {
        [favoriteTrekDrinks addObject: character[favoriteDrinkKey]];
    }
    
    return favoriteTrekDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *characterDictionaryWithQuote = [characterDictionary mutableCopy];
    
    [characterDictionaryWithQuote setObject:picardQuote forKey: quoteKey];
    return characterDictionaryWithQuote;
}

@end
