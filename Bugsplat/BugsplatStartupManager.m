//
//  BugsplatStartupManager.m
//  Bugsplat
//
//  Created by Geoff Raeder on 6/13/21.
//

#import "HockeySDK.h"

#import "BugsplatStartupManager.h"
#import "BugsplatStartupManagerDelegate.h"
#import "BugsplatAttachment.h"

NSString *const kHockeyIdentifierPlaceholder = @"b0cf675cb9334a3e96eda0764f95e38e";  // Just to satisfy Hockey since this is required

@interface BugsplatStartupManager() <BITHockeyManagerDelegate>

@end

@implementation BugsplatStartupManager

+ (instancetype)sharedManager
{
    static BugsplatStartupManager *sharedInstance = nil;
    static dispatch_once_t pred;

    dispatch_once(&pred, ^{
        sharedInstance = [[BugsplatStartupManager alloc] init];
    });

    return sharedInstance;
}

- (instancetype)init
{
    if (self = [super init])
    {
        [[BITHockeyManager sharedHockeyManager] configureWithIdentifier:kHockeyIdentifierPlaceholder];
    }

    return self;
}

- (void)start
{
    NSLog(@"Initializing Bugsplat");
    NSString *serverURL = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"BugsplatServerURL"];

    NSAssert(serverURL != nil, @"No server url provided.  Please add this key/value to the your bundle's Info.plist");

    [[BITHockeyManager sharedHockeyManager] setServerURL:serverURL];
    [[BITHockeyManager sharedHockeyManager] startManager];
}

- (void)setDelegate:(id<BugsplatStartupManagerDelegate>)delegate
{
    if (_delegate != delegate)
    {
        _delegate = delegate;
    }

    [[BITHockeyManager sharedHockeyManager] setDelegate:self];
}

- (void)setUserID:(NSString *)userID
{
    _userID = userID;
    [[BITHockeyManager sharedHockeyManager] setUserID:_userID];
}

- (void)setUserName:(NSString *)userName
{
    _userName = userName;
    [[BITHockeyManager sharedHockeyManager] setUserName:_userName];
}

- (void)setUserEmail:(NSString *)userEmail
{
    _userEmail = userEmail;
    [[BITHockeyManager sharedHockeyManager] setUserEmail:_userEmail];
}

-(NSString *)applicationLogForCrashManager:(BITCrashManager *)crashManager
{
    if ([_delegate respondsToSelector:@selector(applicationLogForBugsplat:)])
    {
        return [_delegate applicationLogForBugsplat:self];
    }

    return nil;
}

-(BITHockeyAttachment *)attachmentForCrashManager:(BITCrashManager *)crashManager
{
    if ([_delegate respondsToSelector:@selector(attachmentForBugsplat:)])
    {
        BugsplatAttachment *attachment = [_delegate attachmentForBugsplat:self];

        return [[BITHockeyAttachment alloc] initWithFilename:attachment.filename
                                        hockeyAttachmentData:attachment.attachmentData
                                                 contentType:attachment.contentType];
    }

    return nil;
}

-(void)crashManagerWillShowSubmitCrashReportAlert:(BITCrashManager *)crashManager
{
    if ([_delegate respondsToSelector:@selector(bugsplatWillShowSubmitCrashReportAlert:)])
    {
        [_delegate bugsplatWillShowSubmitCrashReportAlert:self];
    }
}

-(void)crashManagerWillCancelSendingCrashReport:(BITCrashManager *)crashManager
{
    if ([_delegate respondsToSelector:@selector(bugsplatWillCancelSendingCrashReport:)])
    {
        [_delegate bugsplatWillCancelSendingCrashReport:self];
    }
}

-(void)crashManagerWillSendCrashReportsAlways:(BITCrashManager *)crashManager
{
    if ([_delegate respondsToSelector:@selector(bugsplatWillSendCrashReportsAlways:)])
    {
        [_delegate bugsplatWillSendCrashReportsAlways:self];
    }
}

- (void)crashManagerWillSendCrashReport:(BITCrashManager *)crashManager
{
    if ([_delegate respondsToSelector:@selector(bugsplatWillSendCrashReport:)])
    {
        [_delegate bugsplatWillSendCrashReport:self];
    }
}

- (void)crashManager:(BITCrashManager *)crashManager didFailWithError:(NSError *)error
{
    if ([_delegate respondsToSelector:@selector(bugsplat:didFailWithError:)])
    {
        [_delegate bugsplat:self didFailWithError:error];
    }
}

- (void)crashManagerDidFinishSendingCrashReport:(BITCrashManager *)crashManager
{
    if ([_delegate respondsToSelector:@selector(bugsplatDidFinishSendingCrashReport:)])
    {
        [_delegate bugsplatDidFinishSendingCrashReport:self];
    }
}

@end
