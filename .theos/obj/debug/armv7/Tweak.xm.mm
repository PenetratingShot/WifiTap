#line 1 "Tweak.xm"
@interface _UIStatusBarWifiSignalView : UIView
@end

@interface PSWiFiSettingsDetail : NSObject
+(bool) isEnabled;
+(void)setEnabled:(bool)arg1;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class PSWiFiSettingsDetail; @class _UIStatusBarWifiSignalView; 
static void (*_logos_orig$_ungrouped$_UIStatusBarWifiSignalView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarWifiSignalView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIStatusBarWifiSignalView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarWifiSignalView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIStatusBarWifiSignalView$tapRecognizer$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarWifiSignalView* _LOGOS_SELF_CONST, SEL, UITapGestureRecognizer *); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$PSWiFiSettingsDetail(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("PSWiFiSettingsDetail"); } return _klass; }
#line 9 "Tweak.xm"

static void _logos_method$_ungrouped$_UIStatusBarWifiSignalView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarWifiSignalView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
_logos_orig$_ungrouped$_UIStatusBarWifiSignalView$didMoveToWindow(self, _cmd);
UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapRecognizer:)];
[self addGestureRecognizer:tapGestureRecognizer];
}


static void _logos_method$_ungrouped$_UIStatusBarWifiSignalView$tapRecognizer$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarWifiSignalView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITapGestureRecognizer * tap) {
if([_logos_static_class_lookup$PSWiFiSettingsDetail() isEnabled]) {
[_logos_static_class_lookup$PSWiFiSettingsDetail() setEnabled:NO];
} else {
[_logos_static_class_lookup$PSWiFiSettingsDetail() setEnabled:YES];
}
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIStatusBarWifiSignalView = objc_getClass("_UIStatusBarWifiSignalView"); MSHookMessageEx(_logos_class$_ungrouped$_UIStatusBarWifiSignalView, @selector(didMoveToWindow), (IMP)&_logos_method$_ungrouped$_UIStatusBarWifiSignalView$didMoveToWindow, (IMP*)&_logos_orig$_ungrouped$_UIStatusBarWifiSignalView$didMoveToWindow);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITapGestureRecognizer *), strlen(@encode(UITapGestureRecognizer *))); i += strlen(@encode(UITapGestureRecognizer *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$_UIStatusBarWifiSignalView, @selector(tapRecognizer:), (IMP)&_logos_method$_ungrouped$_UIStatusBarWifiSignalView$tapRecognizer$, _typeEncoding); }} }
#line 25 "Tweak.xm"
