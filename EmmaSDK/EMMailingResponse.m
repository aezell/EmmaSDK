#import "EMMailingResponse.h"
#import "NSObject+ObjectOrNil.h"

@implementation EMMailingResponse

- (id)initWithDictionary:(NSDictionary *)dict {
    if ((self = [super init])) {
        _name = [[dict objectForKey:@"name"] stringOrNil];
        _sent = [[[dict objectForKey:@"sent"] numberOrNil] intValue];
        _delivered = [[[dict objectForKey:@"delivered"] numberOrNil] intValue];
        _bounced = [[[dict objectForKey:@"bounced"] numberOrNil] intValue];
        _opened = [[[dict objectForKey:@"opened"] numberOrNil] intValue];
        _clickedUnique = [[[dict objectForKey:@"clicked_unique"] numberOrNil] intValue];
        _clicked = [[[dict objectForKey:@"clicked"] numberOrNil] intValue];
        _forwarded = [[[dict objectForKey:@"forwarded"] numberOrNil] intValue];
        _optedOut = [[[dict objectForKey:@"opted_out"] numberOrNil] intValue];
        _signedUp = [[[dict objectForKey:@"signed_up"] numberOrNil] intValue];
        _shared = [[[dict objectForKey:@"shared"] numberOrNil] intValue];
        _shareClicked = [[[dict objectForKey:@"share_clicked"] numberOrNil] intValue];
        _webviewShared = [[[dict objectForKey:@"webview_shared"] numberOrNil] intValue];
        _webviewShareClicked = [[[dict objectForKey:@"webview_share_clicked"] numberOrNil] intValue];
    }
    return self;
}

@end
