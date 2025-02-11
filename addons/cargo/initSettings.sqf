[
    QGVAR(enable),
    "CHECKBOX",
    [LSTRING(ModuleSettings_enable), LSTRING(ModuleSettings_enable_Description)],
    [ELSTRING(OptionsMenu,CategoryLogistics), LSTRING(openMenu)],
    true,
    true,
    {[QGVAR(enable), _this] call EFUNC(common,cbaSettings_settingChanged)}
] call CBA_fnc_addSetting;

[
    QGVAR(loadTimeCoefficient),
    "SLIDER",
    [LSTRING(loadTimeCoefficient), LSTRING(loadTimeCoefficient_description)],
    [ELSTRING(OptionsMenu,CategoryLogistics), LSTRING(openMenu)],
    [0, 10, 5, 1],
    true,
    {[QGVAR(loadTimeCoefficient), _this, true] call EFUNC(common,cbaSettings_settingChanged)}
] call CBA_fnc_addSetting;

[
    QGVAR(paradropTimeCoefficent),
    "SLIDER",
    [LSTRING(paradropTimeCoefficent), LSTRING(paradropTimeCoefficent_description)],
    [ELSTRING(OptionsMenu,CategoryLogistics), LSTRING(openMenu)],
    [0, 10, 2.5, 1],
    true,
    {[QGVAR(paradropTimeCoefficent), _this, true] call EFUNC(common,cbaSettings_settingChanged)}
] call CBA_fnc_addSetting;

[
    QGVAR(openAfterUnload),
    "LIST",
    [LSTRING(openAfterUnload), LSTRING(openAfterUnload_description)],
    [ELSTRING(OptionsMenu,CategoryLogistics), LSTRING(openMenu)],
    [[0, 1, 2, 3], [ELSTRING(common,never), LSTRING(unloadObject), LSTRING(paradropButton), ELSTRING(common,both)], 0],
    false,
    {[QGVAR(openAfterUnload), _this, true] call EFUNC(common,cbaSettings_settingChanged)}
] call CBA_fnc_addSetting;

[
    QGVAR(enableRename),
    "CHECKBOX",
    [LSTRING(ModuleSettings_enableRename), LSTRING(ModuleSettings_enableRename_Description)],
    [ELSTRING(OptionsMenu,CategoryLogistics), LSTRING(openMenu)],
    true,
    false,
    {[QGVAR(enableRename), _this, true] call EFUNC(common,cbaSettings_settingChanged)}
] call CBA_fnc_addSetting;

[
    QGVAR(carryAfterUnload),
    "CHECKBOX",
    [LSTRING(carryAfterUnload), LSTRING(carryAfterUnload_description)],
    [ELSTRING(OptionsMenu,CategoryLogistics), LSTRING(openMenu)],
    true,
    false,
    {[QGVAR(carryAfterUnload), _this] call EFUNC(common,cbaSettings_settingChanged)}
] call CBA_fnc_addSetting;
