//
//  LSINetworkController.h
//  Astronomy - Objective-C and Swift
//
//  Created by Waseem Idelbi on 9/30/20.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LSILog.h"
#import "LSIErrors.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^ImageFetcherCompletionHandler)(UIImage *_Nullable artist, NSError *_Nullable error);

@interface LSINetworkController : NSObject

/// - Properties
@property (nonatomic, nonnull) NSString *baseURL;

/// - Methods
- (void)fetchSolTen:(ImageFetcherCompletionHandler)completionHandler;

@end

NS_ASSUME_NONNULL_END
