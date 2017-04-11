/**
 * titanium-sirikit
 *
 * Created by Hans Knoechel
 * Copyright (c) 2017 Hans Knoechel. All rights reserved.
 */

#import "TiModule.h"
#import <Intents/Intents.h>

API_AVAILABLE(ios(10.0))
@interface TiSirikitModule : TiModule {
    
}

- (void)requestSiriPermissions:(id)callback NS_AVAILABLE_IOS(10.0);

- (void)hasSiriPermissions:(id)unused NS_AVAILABLE_IOS(10.0);

- (id)siriAuthorizationStatus NS_AVAILABLE_IOS(10.0);

- (id)siriLanguageCode NS_AVAILABLE_IOS(10.0);

@end
