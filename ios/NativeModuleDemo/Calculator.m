#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE (Calculator, NSObject)
RCT_EXTERN_METHOD(add
                  : (nonnull NSNumber *)a b
                  : (nonnull NSNumber *)b callback
                  : (RCTResponseSenderBlock)callback)
@end