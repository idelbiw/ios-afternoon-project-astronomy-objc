//
//  LSINetworkController.m
//  Astronomy - Objective-C and Swift
//
//  Created by Waseem Idelbi on 9/30/20.
//

#import "LSINetworkController.h"

@implementation LSINetworkController

- (instancetype)init
{
    if (self = [super init]) {
        _baseURL = @"https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=107OBMENnXWNvlJ1aacutLCYdyaWNXGPT0encQ1J";
    }
    return self;
}

@end
