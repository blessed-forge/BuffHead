BuffHead = BuffHead or {};
if (not BuffHead.Localization) then
	BuffHead.Localization = {};
	BuffHead.Localization.Language = {};
end

local function ParseCombatMessage(message)

	local localization = BuffHead.Localization.Language[SystemData.Settings.Language.ENGLISH];
	local victim, verb, player, weapon, location = message:match(localization["CombatMessageParseString"]);
	
	return victim, verb, player, weapon, location;

end

BuffHead.Localization.Language[SystemData.Settings.Language.ENGLISH] = 
{
	CombatMessageParseString = L"([%a]+) has been ([%a]+) by ([%a]+)'s ([%a%d%p  ]+) in ([^%.]+).",
	["Core.HasSlain"] = L" has been slain by ",
	["Core.HaveSlain"] = L"You have slain ",
	
	["Setup.AlwaysIgnore"] = L"Always Ignore",
	["Setup.AlwaysIgnore.Info"] = L"Effects matching these will never be displayed",
	["Setup.AlwaysIgnore.Manage"] = L"Manage",
	["Setup.AlwaysShow"] = L"Always Show",
	["Setup.AlwaysShow.Info"] = L"Effects matching these will always be displayed",
	["Setup.AlwaysShow.Manage"] = L"Manage",
	
	["Setup.Containers.Container"] = L"Container",
	["Setup.Containers.Container.AlwaysShow"] = L"Always Show",
	["Setup.Containers.Container.Anchor"] = L"Anchor",
	["Setup.Containers.Container.Buffs"] = L"Buffs",
	["Setup.Containers.Container.Debuffs"] = L"Debuffs",
	["Setup.Containers.Example"] = L"Example Layout",
	["Setup.Containers.Layout"] = L"Layout",
	["Setup.Containers.Placement.After"] = L"After",
	["Setup.Containers.Placement.Below"] = L"Below",
	["Setup.Containers.Placement.Fixed"] = L"Fixed",
	["Setup.Containers.Show.AlwaysShow"] = L"Show \"Always Show\"",
	["Setup.Containers.Show.Buffs"] = L"Show Buffs",
	["Setup.Containers.Show.Debuffs"] = L"Show Debuffs",
	["Setup.Containers.Size.Columns"] = L"Columns to display",
	["Setup.Containers.Size.Rows"] = L"Rows to display",
	["Setup.Containers.Title"] = L"Container Settings",
	
	["Setup.Display.IndicatorScale"] = L"Indicator Scale",
	["Setup.Display.IndicatorLayer"] = L"Layer to display indicators on",
	["Setup.Display.IndicatorLayer.Layer0"] = L"Background",
	["Setup.Display.IndicatorLayer.Layer1"] = L"Default",
	["Setup.Display.IndicatorLayer.Layer2"] = L"Foreground",
	["Setup.Display.Offset"] = L"Offset",
	["Setup.Display.Offset.Info"] = L"The number of pixels to offset the indicators above targets",
	["Setup.Display.Offset.X"] = L"X",
	["Setup.Display.Offset.Y"] = L"Y",
	["Setup.Display.Sorting"] = L"Effect Sorting",
	["Setup.Display.Sorting.Direction"] = L"Direction",
	["Setup.Display.Sorting.Direction.Ascending"] = L"Ascending",
	["Setup.Display.Sorting.Direction.Descending"] = L"Descending",
	["Setup.Display.Sorting.Enable"] = L"Enable effect sorting",
	["Setup.Display.Sorting.SortBy"] = L"Sort by",
	["Setup.Display.Sorting.SortBy.Ability"] = L"Ability",
	["Setup.Display.Sorting.SortBy.Duration"] = L"Duration",
	["Setup.Display.Title"] = L"Display Settings",
	
	["Setup.Filter.AbilityName"] = L"Ability Name or ID",
	["Setup.Filter.AbilityName.Add"] = L"Add",
	["Setup.Filter.AlwaysIgnore"] = L"Always Ignore",
	["Setup.Filter.AlwaysShow"] = L"Always Show",
	["Setup.Filter.IgnoreInheritance"] = L"Ignore inheritance",
	["Setup.Filter.Remove"] = L"Remove",
	
	["Setup.General.Compression"] = L"Indicator Compression",
	["Setup.General.Compression.All"] = L"All",
	["Setup.General.Compression.Enable"] = L"Enable compression",
	["Setup.General.Compression.Info"] = L"Matching effects will be condensed into a single indicator",
	["Setup.General.Compression.None"] = L"None",
	["Setup.General.Compression.OnlyMine"] = L"Only my effects",
	["Setup.General.Compression.OnlyOthers"] = L"Only other effects",
	["Setup.General.MaximumThreshold"] = L"Maximum Threshold",
	["Setup.General.MaximumThreshold.Info"] = L"Only effects with a duration less than this value will be shown",
	["Setup.General.MinimumThreshold"] = L"Minimum Threshold",
	["Setup.General.MinimumThreshold.Info"] = L"Effects with an initial duration less than this value will not be shown",
	["Setup.General.HandleInput"] = L"Handle Input",
	["Setup.General.HandleInput.ShowTooltips"] = L"Show tooltips",
	["Setup.General.HandleInput.HandleRemovable"] = L"Allow right-click to remove",
	["Setup.General.Title"] = L"General Settings",
	
	["Setup.Menu.Enhancements"] = L"Enhancements",
	["Setup.Menu.Containers"] = L"Containers",
	["Setup.Menu.PriorityEffects"] = L"Priority Effects",
	["Setup.Menu.AdvancedContainers"] = L"Advanced Containers",
	["Setup.Menu.Display"] = L"Display",
	["Setup.Menu.General"] = L"General",
	["Setup.Menu.Performance"] = L"Performance",
	["Setup.Menu.Title"] = L"BuffHead Options",
	["Setup.Menu.Trackers"] = L"Trackers",
	["Setup.Menu.Layout"] = L"Indicator Layout",
	["Setup.Menu.AdvancedCompression"] = L"Advanced Compression",
	
	["Setup.Padding.Container"] = L"Padding between containers",
	["Setup.Padding.Horizontal"] = L"Horizontal",
	["Setup.Padding.Indicator"] = L"Padding between indicators",
	["Setup.Padding.Vertical"] = L"Vertical",
	
	["Setup.Performance.Fading"] = L"Effect fading",
	["Setup.Performance.Fading.Enable"] = L"Enable effect fading",
	["Setup.Performance.GeneralUpdateDelay"] = L"General update delay",
	["Setup.Performance.PriorityUpdates"] = L"Priority updates",
	["Setup.Performance.PriorityUpdates.Delay"] = L"Priority update delay",
	["Setup.Performance.PriorityUpdates.Enable"] = L"Enable priority updates",
	["Setup.Performance.PriorityUpdates.Start"] = L"Start priority updates at",
	["Setup.Performance.Sync"] = L"Sync",
	["Setup.Performance.Sync.Enable"] = L"Enable effect auto syncing",
	["Setup.Performance.Sync.ResyncTarget"] = L"Resync target every",
	["Setup.Performance.Sync.ResyncTarget.Never"] = L"Never",
	["Setup.Performance.MaximumUpdates"] = L"Maximum updates per cycle",
	["Setup.Performance.MaximumUpdates.Unlimited"] = L"Unlimited",
	["Setup.Performance.EffectAnchoring"] = L"Update effect anchors",
	["Setup.Performance.EffectAnchoring.Needed"] = L"When needed",
	["Setup.Performance.EffectAnchoring.Updated"] = L"When effects are updated",
	["Setup.Performance.Title"] = L"Performance Settings",
	
	["Setup.Trackers.Enable"] = L"Enable tracker",
	["Setup.Trackers.Friendly.Buffs.All"] = L"All",
	["Setup.Trackers.Friendly.Buffs.CastByMe"] = L"Cast by me",
	["Setup.Trackers.Friendly.Buffs.None"] = L"None",
	["Setup.Trackers.Friendly.Debuffs.All"] = L"All",
	["Setup.Trackers.Friendly.Debuffs.CurableByMe"] = L"I can cure",
	["Setup.Trackers.Friendly.Debuffs.None"] = L"None",
	["Setup.Trackers.Hostile.Buffs.All"] = L"All",
	["Setup.Trackers.Hostile.Buffs.None"] = L"None",
	["Setup.Trackers.Hostile.Buffs.RemovableByMe"] = L"Removable by me",
	["Setup.Trackers.Hostile.Debuffs.All"] = L"All",
	["Setup.Trackers.Hostile.Debuffs.CastByMe"] = L"Cast by me",
	["Setup.Trackers.Hostile.Debuffs.None"] = L"None",
	["Setup.Trackers.PermanentEffects"] = L"Show permanent effects",
	["Setup.Trackers.ShowBuffs"] = L"Show buffs",
	["Setup.Trackers.ShowDebuffs"] = L"Show debuffs",
	["Setup.Trackers.Title"] = L"Tracker Settings",
	["Setup.Trackers.Tracker"] = L"Tracker",
	["Setup.Trackers.Tracker.Friendly"] = L"Friendly",
	["Setup.Trackers.Tracker.Group"] = L"Group",
	["Setup.Trackers.Tracker.Hostile"] = L"Hostile",
	["Setup.Trackers.Tracker.Self"] = L"Self",
	["Setup.Trackers.OnTargetChange"] = L"On target change",
	["Setup.Trackers.OnTargetChange.ClearAlwaysShow"] = L"Clear always show",
	["Setup.Trackers.OnTargetChange.ClearBuffs"] = L"Clear buffs",
	["Setup.Trackers.OnTargetChange.ClearDebuffs"] = L"Clear debuffs",
	
	["Setup.EffectCache.Title"] = L"Effect Cache",
	["Setup.EffectCache.Enable"] = L"Enable caching (for this session)",
	["Setup.EffectCache.SortBy.Id"] = L"ID",
	["Setup.EffectCache.SortBy.Id.Tooltip"] = L"Sort by Ability ID",
	["Setup.EffectCache.SortBy.Name"] = L"Name",
	["Setup.EffectCache.SortBy.Name.Tooltip"] = L"Sort by Ability Name",
	["Setup.EffectCache.Search"] = L"Search",
	["Setup.EffectCache.Refresh"] = L"Refresh",
	["Setup.EffectCache.Reset"] = L"Clear",
	["Setup.EffectCache.Context.AddToAlwaysShow"] = L"Add to Always Show",
	["Setup.EffectCache.Context.AddToAlwaysIgnore"] = L"Add to Always Ignore",
	["Setup.EffectCache.Context.ViewTable"] = L"View table data",
	
	["Setup.EffectCacheTable.Seen1"] = L"Seen %d time",
	["Setup.EffectCacheTable.Seen"] = L"Seen %d times",
	
	["Strings.Alpha"] = L"Alpha",
	["Strings.Font"] = L"Font",
	["Strings.Color"] = L"Color",
	["Strings.Color.Red"] = L"Red",
	["Strings.Color.Green"] = L"Green",
	["Strings.Color.Blue"] = L"Blue",
	["Strings.Scale"] = L"Scale",
	["Strings.Texture"] = L"Texture",
	["Strings.Padding"] = L"Padding",
	["Strings.Offset"] = L"Offset",
	["Strings.Offset.X"] = L"X",
	["Strings.Offset.Y"] = L"Y",
	["Strings.Size"] = L"Size",
	["Strings.Size.Width"] = L"Width",
	["Strings.Size.Height"] = L"Height",
	["Strings.Columns"] = L"Columns",
	["Strings.Rows"] = L"Rows",
	["Strings.Position"] = L"Position",
	["Strings.Position.Left"] = L"Left",
	["Strings.Position.Right"] = L"Right",
	["Strings.Position.Top"] = L"Top",
	["Strings.Position.Bottom"] = L"Bottom",
	["Strings.Example"] = L"Example",
	["Strings.Align"] = L"Align",
	["Strings.Align.Bottom"] = L"Bottom",
	["Strings.Align.BottomLeft"] = L"Bottom Left",
	["Strings.Align.BottomRight"] = L"Bottom Right",
	["Strings.Align.Center"] = L"Center",
	["Strings.Align.Left"] = L"Left",
	["Strings.Align.LeftCenter"] = L"Left Center",
	["Strings.Align.Right"] = L"Right",
	["Strings.Align.RightCenter"] = L"Right Center",
	["Strings.Layer"] = L"Layer",
	["Strings.Seconds"] = L"Seconds",
	["Strings.Minutes"] = L"Minutes",
	["Strings.Hours"] = L"Hours",
	
	["Setup.Layout.Title"] = L"Layout",
	["Setup.Layout.Layers.Tooltip"] = L"Set showing layers",
	["Setup.Layout.Apply"] = L"Apply Changes",
	["Setup.Layout.Manager"] = L"Manager",
	
	["Setup.Layout.Manager.Title"] = L"Layout Manager",
	["Setup.Layout.Manager.Import"] = L"Import",
	["Setup.Layout.Manager.Export"] = L"Export",
	["Setup.Layout.Manager.Export.Info"] = L"Select a layout to export",
	["Setup.Layout.Manager.Layouts"] = L"Layouts",
	["Setup.Layout.Manager.Layouts.Current"] = L"Current",
	["Setup.Layout.Manager.Layouts.Save"] = L"Save",
	["Setup.Layout.Manager.Layouts.Save.Info"] = L"Save this layout as",
	["Setup.Layout.Manager.Layouts.Delete"] = L"Delete",
	["Setup.Layout.Manager.Layouts.Delete.Info"] = L"Delete this layout",
	["Setup.Layout.Manager.Layouts.Activate"] = L"Activate",
	["Setup.Layout.Manager.Layouts.Activate.Info"] = L"Set this as my current layout",
	
	["Layout.Size"] = L"Size",
	["Layout.Icon"] = L"Icon",
	["Layout.StatusBar"] = L"StatusBar",
	["Layout.Duration"] = L"Duration",
	["Layout.StackCount"] = L"StackCount",
	["Layout.Name"] = L"Name",
	["Layout.Layers"] = L"Show layers",
	["Layout.Layers.Layer0"] = L"Size",
	["Layout.Layers.Layer1"] = L"Layer 1",
	["Layout.Layers.Layer2"] = L"Layer 2",
	["Layout.Layers.Layer3"] = L"Layer 3",
	["Layout.Layers.Layer4"] = L"Layer 4",
	
	["Layout.Context.Properties"] = L"Properties",
	
	["Layout.Properties.Title"] = L"Properties",
	["Layout.Properties.Property"] = L"Property",
	["Layout.Properties.CoreSize.AutoSize"] = L"Auto Size",
	["Layout.Properties.CoreSize.AutoSize.Info"] = L"Automatically set the dimensions",
	["Layout.Properties.Font"] = L"Font",
	["Layout.Properties.IconBorder"] = L"Border",
	["Layout.Properties.DurationFormat"] = L"Format",
	["Layout.Properties.DurationFormat.Format"] = L"Format",
	["Layout.Properties.StatusBar"] = L"Display",
	["Layout.Properties.StatusBar.Enable"] = L"Enable status bar",
	["Layout.Properties.StatusBar.Texture.Stretch"] = L"Stretch",
	["Layout.Properties.StatusBar.Background"] = L"Background",
	["Layout.Properties.StatusBar.Foreground"] = L"Foreground",
	["Layout.Properties.StatusBarOrientation"] = L"Orientation",
	["Layout.Properties.StatusBarOrientation.Horizontal"] = L"Horizontal",
	["Layout.Properties.StatusBarOrientation.Vertical"] = L"Vertical",
	["Layout.Properties.StatusBarOrientation.Reverse"] = L"Reverse direction",
	["Layout.Properties.ColorType"] = L"Color type",
	["Layout.Properties.ColorType.EffectColor"] = L"Effect color",
	["Layout.Properties.ColorType.EffectType"] = L"Buff or Debuff",
	["Layout.Properties.ColorType.Custom"] = L"Custom",
	
	["Setup.AdvancedCompression.Title"] = L"Advanced Compression",
	["Setup.AdvancedCompression.CompressedEffects"] = L"Compressed Effects",
	["Setup.AdvancedCompression.New"] = L"Add Compression",
	["Setup.AdvancedCompression.Context.Remove"] = L"Remove",
	
	["Setup.PriorityEffects.Title"] = L"Priority Effects",
	["Setup.PriorityEffects.Animation"] = L"Effect Animation",
	["Setup.PriorityEffects.Animation.None"] = L"None",
	["Setup.PriorityEffects.Animation.AnimatedBorder"] = L"Animated Border",
	["Setup.PriorityEffects.Animation.AnimatedBorderThick"] = L"Animated Border (Thick)",
	["Setup.PriorityEffects.SortFirst"] = L"Sort effects to the front",
	["Setup.PriorityEffects.Effects"] = L"Effects",
	["Setup.PriorityEffects.Effects"] = L"Effects",
	["Setup.PriorityEffects.New"] = L"Add Effect",
	["Setup.PriorityEffects.Context.Remove"] = L"Remove",
	
	["Setup.PriorityEffectsItem.Title"] = L"Priority Effect",
	["Setup.PriorityEffectsItem.AbilityId"] = L"Ability ID",
	["Setup.PriorityEffectsItem.TargetType"] = L"Select which targets to display on",
	["Setup.PriorityEffectsItem.Create"] = L"Create",
	["Setup.PriorityEffectsItem.Apply"] = L"Apply Changes",
	
	["Setup.AdvancedCompressionItem.Title"] = L"Compressed Effect",
	["Setup.AdvancedCompressionItem.New"] = L"Add Effect",
	["Setup.AdvancedCompressionItem.Name"] = L"Name (for reference only)",
	["Setup.AdvancedCompressionItem.Override"] = L"Override (leave blank to ignore)",
	["Setup.AdvancedCompressionItem.Override.Name"] = L"Name",
	["Setup.AdvancedCompressionItem.Override.Icon"] = L"Icon",
	["Setup.AdvancedCompressionItem.Effects"] = L"Effects",
	["Setup.AdvancedCompressionItem.Create"] = L"Create",
	["Setup.AdvancedCompressionItem.Apply"] = L"Apply Changes",
	["Setup.AdvancedCompressionItem.Context.Remove"] = L"Remove",
	
	["Setup.AdvancedCompressionItemEffect.Title"] = L"Effect",
	["Setup.AdvancedCompressionItemEffect.Ability"] = L"Ability ID",
	["Setup.AdvancedCompressionItemEffect.CastBy"] = L"Cast by",
	["Setup.AdvancedCompressionItemEffect.CastBy.Self"] = L"Self",
	["Setup.AdvancedCompressionItemEffect.CastBy.Others"] = L"Others",
	["Setup.AdvancedCompressionItemEffect.CastBy.Any"] = L"Any",
	["Setup.AdvancedCompressionItemEffect.Create"] = L"Create",
	["Setup.AdvancedCompressionItemEffect.Apply"] = L"Apply Changes",
	
	["Setup.AdvancedContainers.Title"] = L"Advanced Containers",
	["Setup.AdvancedContainers.CompressedEffects"] = L"Containers",
	["Setup.AdvancedContainers.BasicDescription"] = L"Buffs: %s, Debuffs: %s",
	["Setup.AdvancedContainers.New"] = L"Add Container",
	["Setup.AdvancedContainers.Context.Remove"] = L"Remove",
	
	["Setup.AdvancedContainersItem.Title"] = L"Container",
	["Setup.AdvancedContainersItem.Target"] = L"Target",
	["Setup.AdvancedContainersItem.Target.Info"] = L"Select the type of target for this container",
	["Setup.AdvancedContainersItem.Target.Self"] = L"Self",
	["Setup.AdvancedContainersItem.Target.Friendly"] = L"Friendly",
	["Setup.AdvancedContainersItem.Target.Hostile"] = L"Hostile",
	["Setup.AdvancedContainersItem.ContainerLayout"] = L"Container Layout",
	["Setup.AdvancedContainersItem.ContainerLayout.Info"] = L"Right click each container for more options",
	["Setup.AdvancedContainersItem.IndicatorLayout"] = L"Indicator Layout",
	["Setup.AdvancedContainersItem.IndicatorLayout.Info"] = L"Select a saved layout to use",
	["Setup.AdvancedContainersItem.Position"] = L"Screen Position",
	["Setup.AdvancedContainersItem.Position.Fixed"] = L"Fixed",
	["Setup.AdvancedContainersItem.Position.Attached"] = L"Attached",
	["Setup.AdvancedContainersItem.Context.ContainerProperties"] = L"General Properties",
	["Setup.AdvancedContainersItem.Create"] = L"Create",
	["Setup.AdvancedContainersItem.Apply"] = L"Apply Changes",
	
	["Setup.AdvancedContainersItem.Properties.Title"] = L"Properties",
	["Setup.AdvancedContainersItem.Properties.Container"] = L"General",
	["Setup.AdvancedContainersItem.Properties.Container.Enable"] = L"Show this container",
	["Setup.AdvancedContainersItem.Properties.Position"] = L"Position",
	["Setup.AdvancedContainersItem.Properties.Position.Placement"] = L"Select how to place the container",
	["Setup.AdvancedContainersItem.Properties.Position.Anchor"] = L"Select where to place it",
	["Setup.AdvancedContainersItem.Properties.Effects"] = L"Effects",
	["Setup.AdvancedContainersItem.Properties.Effects.Permanent"] = L"Show permanent effects",
	["Setup.AdvancedContainersItem.Properties.Effects.AlwaysShow"] = L"Show \"Always Show\" effects",
	["Setup.AdvancedContainersItem.Properties.Effects.Buffs"] = L"Show buffs",
	["Setup.AdvancedContainersItem.Properties.Effects.Debuffs"] = L"Show debuffs",
	["Setup.AdvancedContainersItem.Properties.General"] = L"General",
	["Setup.AdvancedContainersItem.Properties.Layer"] = L"Layer to display on",
	["Setup.AdvancedContainersItem.Properties.Layer.Layer0"] = L"Background",
	["Setup.AdvancedContainersItem.Properties.Layer.Layer1"] = L"Default",
	["Setup.AdvancedContainersItem.Properties.Layer.Layer2"] = L"Foreground",
	["Setup.AdvancedContainersItem.Properties.Padding.Containers"] = L"Padding between containers",
	["Setup.AdvancedContainersItem.Properties.Padding.Indicators"] = L"Padding between indicators",
	["Setup.AdvancedContainersItem.Properties.Growth"] = L"Growth",
	["Setup.AdvancedContainersItem.Properties.Growth.Horizontal"] = L"Horizontal",
	["Setup.AdvancedContainersItem.Properties.Growth.Horizontal.Left"] = L"Left",
	["Setup.AdvancedContainersItem.Properties.Growth.Horizontal.Right"] = L"Right",
	["Setup.AdvancedContainersItem.Properties.Growth.Vertical"] = L"Vertical",
	["Setup.AdvancedContainersItem.Properties.Growth.Vertical.Up"] = L"Up",
	["Setup.AdvancedContainersItem.Properties.Growth.Vertical.Down"] = L"Down",
};

BuffHead.Localization.Language[SystemData.Settings.Language.ENGLISH].CombatMessageParser = ParseCombatMessage;

