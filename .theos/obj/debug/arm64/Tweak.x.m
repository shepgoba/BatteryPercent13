#line 1 "Tweak.x"

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

@class _UIBatteryView; 
static void (*_logos_orig$_ungrouped$_UIBatteryView$setShowsPercentage$)(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$_UIBatteryView$setShowsPercentage$(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST, SEL, BOOL); 

#line 1 "Tweak.x"

static void _logos_method$_ungrouped$_UIBatteryView$setShowsPercentage$(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL enabled) {
	_logos_orig$_ungrouped$_UIBatteryView$setShowsPercentage$(self, _cmd, YES);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIBatteryView = objc_getClass("_UIBatteryView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIBatteryView, @selector(setShowsPercentage:), (IMP)&_logos_method$_ungrouped$_UIBatteryView$setShowsPercentage$, (IMP*)&_logos_orig$_ungrouped$_UIBatteryView$setShowsPercentage$);}} }
#line 6 "Tweak.x"
