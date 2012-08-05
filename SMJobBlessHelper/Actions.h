//
//  Actions.h
//  SMJobBless
//
//  Created by Ludovic Delaveau on 8/5/12.
//
//

#import <Foundation/Foundation.h>

@protocol Actions <NSObject>

- (void)doStuff;
- (void)doStuffWithReply:(void (^)(NSString *))reply;

@end
