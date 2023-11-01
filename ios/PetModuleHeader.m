//
//  PetModuleHeader.m
//  DynamicIsland
//
//  Created by 任飞翔 on 31/10/2023.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Pet,NSObject)

RCT_EXTERN_METHOD(startActivity)
RCT_EXTERN_METHOD(endActivity)
RCT_EXTERN_METHOD(updateActivity: (NSString *) name)

@end
