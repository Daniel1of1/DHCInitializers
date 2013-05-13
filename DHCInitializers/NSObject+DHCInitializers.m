//
//  DHCInitializers.m
//  DHCInitializers
//
//  Created by Daniel Haight on 13/05/2013.
//  Copyright (c) 2013 confidence. All rights reserved.
//

#import "NSObject+DHCInitializers.h"

@implementation  NSObject (DHCInitializers)

#pragma mark +construct

+(instancetype)objectWithDictionary:(NSDictionary *)dictionary{
    return [[self alloc] initWithDictionary:dictionary];
}

#pragma mark -init
-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self ==[self init]) {
        [self populateWithDictionary:dictionary];
    }
    return self;
}

#pragma mark -update values
-(void)populateWithDictionary:(NSDictionary *)dictionary{
    [self setValuesForKeysWithDictionary:dictionary];
}

-(void)updateWithObject:(NSObject *)object{
  //  [self setValuesForKeysWithDictionary:[object propertiesDict]];
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"tried to set value: %@ , for undefined key: %@",value ,key);
}
@end
