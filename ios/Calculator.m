//
//  Calculator.m
//  NativeModuleDemo
//
//  Created by Bhargav Lakkur Kusha Kumar on 12/27/24.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE (Calculator, NSObject)
RCT_EXTERN_METHOD(add
                  : (nonnull NSNumber *)a b
                  : (nonnull NSNumber *)b callback
                  : (RCTResponseSenderBlock)callback)
@end
