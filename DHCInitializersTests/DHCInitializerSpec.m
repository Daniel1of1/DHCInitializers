//
//  DHCInitializerSpec.m
//  DHCInitializers
//
//  Created by Daniel Haight on 13/05/2013.
//  Copyright 2013 confidence. All rights reserved.
//

#import "Kiwi.h"
#import "TestObject.h"
#import "OtherTestObject.h"
#import "NSObject+DHCInitializers.h"

SPEC_BEGIN(DHCInitializerSpec)

describe(@"initialiser", ^{
    
    NSString *correctString=@"a string to test";
    
    __block TestObject *correctObj=[[TestObject alloc] init];
    correctObj.aString=correctString;
    OtherTestObject *otherObj=[[OtherTestObject alloc] init];
    otherObj.aNumber=@3;
    correctObj.otherObject=otherObj;

    it(@"creates an instance of an object with a dictionary", ^{
        NSDictionary *dict=@{@"aString": correctString,
                             @"otherObject": otherObj};
        TestObject *testObj=[TestObject objectWithDictionary:dict];
        [[testObj.aString should] equal:correctObj.aString];
        [[testObj.otherObject.aNumber should] equal:correctObj.otherObject.aNumber];
    });
});

SPEC_END
