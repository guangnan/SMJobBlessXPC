//
//  PrivilegedActions.m
//  SMJobBless
//
//  Created by Ludovic Delaveau on 8/5/12.
//
//

#import <syslog.h>
#import <unistd.h>
#import "PrivilegedAgent.h"

@implementation PrivilegedAgent

- (void)doStuff {
    syslog(LOG_INFO, "I am %d, running with uid %d", getpid(), getuid());
}

- (void)doStuffWithReply:(void (^)(NSString *))reply {
    NSString *someMessage = [NSString stringWithFormat:@"Hello to you too, application. I am %d, running with uid %d", getpid(), getuid()];
    reply(someMessage);
}

@end
