@interface _UIStatusBarWifiSignalView : UIView
@end

@interface PSWiFiSettingsDetail : NSObject
+(bool) isEnabled;
+(void)setEnabled:(bool)arg1;
@end

%hook _UIStatusBarWifiSignalView
-(void) didMoveToWindow {
%orig;
UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapRecognizer:)];
[self addGestureRecognizer:tapGestureRecognizer];
}

%new
-(void) tapRecognizer:(UITapGestureRecognizer *)tap {
if([%c(PSWiFiSettingsDetail) isEnabled]) {
[%c(PSWiFiSettingsDetail) setEnabled:NO];
} else {
[%c(PSWiFiSettingsDetail) setEnabled:YES];
}
}
%end
