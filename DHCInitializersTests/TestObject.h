//
//  TestObject.h
//  
//
//  Created by Daniel Haight on 13/05/2013.
//
//

#import <Foundation/Foundation.h>

@class OtherTestObject;

@interface TestObject : NSObject

@property (nonatomic , strong) NSString *aString;
@property (nonatomic, strong)  OtherTestObject *otherObject;

@end
