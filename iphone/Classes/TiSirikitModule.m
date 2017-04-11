/**
 * titanium-sirikit
 *
 * Created by Hans Knoechel
 * Copyright (c) 2017 Hans Knoechel. All rights reserved.
 */

#import "TiSirikitModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation TiSirikitModule

#pragma mark Internal

- (id)moduleGUID
{
	return @"d31d9dc9-17c1-451b-9d78-6c24d2a95767";
}

- (NSString *)moduleId
{
	return @"ti.sirikit";
}

#pragma mark Lifecycle

-(void)startup
{
	[super startup];
	NSLog(@"[DEBUG] %@ loaded",self);
}

#pragma Public APIs

- (void)requestSiriPermissions:(id)callback
{
    ENSURE_SINGLE_ARG(callback, KrollCallback);
    
    __weak TiSirikitModule *weakSelf = self;
    
    [INPreferences requestSiriAuthorization:^(INSiriAuthorizationStatus status) {
        [callback call:@[@{@"status": NUMINT(status)}] thisObject:weakSelf];
    }];
}

- (void)hasSiriPermissions:(id)unused
{
    return NUMBOOL([INPreferences siriAuthorizationStatus] == INSiriAuthorizationStatusAuthorized);
}

- (id)siriAuthorizationStatus
{
    return NUMINT([INPreferences siriAuthorizationStatus]);
}

- (id)siriLanguageCode
{
    return [INPreferences siriLanguageCode];
}

MAKE_SYSTEM_PROP(SIRI_AUTHORIZATION_STATUS_NOT_DETERMINED, INSiriAuthorizationStatusNotDetermined);
MAKE_SYSTEM_PROP(SIRI_AUTHORIZATION_STATUS_RESTRICTED, INSiriAuthorizationStatusRestricted);
MAKE_SYSTEM_PROP(SIRI_AUTHORIZATION_STATUS_DENIES, INSiriAuthorizationStatusDenied);
MAKE_SYSTEM_PROP(SIRI_AUTHORIZATION_STATUS_AUTHORIZED, INSiriAuthorizationStatusAuthorized);

@end
