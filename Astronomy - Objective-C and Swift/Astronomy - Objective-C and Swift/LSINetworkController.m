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

- (void)fetchSolTen:(ImageFetcherCompletionHandler)completionHandler {
    NSURL *url = [[NSURL alloc] initWithString: self.baseURL];
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
        if (error) {
            LSILog(@"ERROR: Could not complete photo data task, reason: %@", error);
            dispatch_async(dispatch_get_main_queue(), ^{
                completionHandler(nil, error);
            });
            return;
        }
        if (!data) {
            LSILog(@"ERROR: Data could not be retreived, reason: %@",error);
            dispatch_async(dispatch_get_main_queue(), ^{
                completionHandler(nil, error);
            });
            return;
        }
        
        NSError *jsonError;
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        if (jsonError) {
            NSLog(@"ERROR: Could not convert JSON into dectionary! %@", jsonError);
            dispatch_async(dispatch_get_main_queue(), ^{
                completionHandler(nil, error);
            });
            return;
        }
        
        UIImage *image = dictionary[@"img_src"];
        
        }]resume];
}

@end
