%hook _UIBatteryView
-(void)setShowsPercentage:(BOOL)enabled {
	%orig(YES);
}
%end