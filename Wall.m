#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"
#import "React/RCTEventDispatcher.h"

@interface
RCT_EXTERN_MODULE(Wall, NSObject)
RCT_EXTERN_METHOD(supportedEvents)
RCT_EXTERN_METHOD(startSDK)
RCT_EXTERN_METHOD(getStatus: (RCTResponseSenderBlock)callback)
@end
