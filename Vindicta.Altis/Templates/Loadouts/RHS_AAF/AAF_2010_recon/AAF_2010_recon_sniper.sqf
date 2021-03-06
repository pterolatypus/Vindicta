removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

_RandomVest = selectRandom ["V_Chestrig_rgr","rhsgref_chestrig","V_TacVest_oli","V_I_G_resistanceLeader_F"];
this addVest _RandomVest;
_RandomGoggles = selectRandom ["FGN_AAF_Shemag_tan","FGN_AAF_Shemag_green","G_Bandanna_oli","","",""];
this addGoggles _RandomGoggles;
_RandomHeadgear = selectRandom ["FGN_AAF_Boonie_Lizard","H_Watchcap_khk","H_Shemag_olive_hs","H_Cap_headphones","H_ShemagOpen_tan"];
this addHeadgear _RandomHeadgear;
this forceAddUniform "FGN_AAF_M93_Lizard";
this addBackpack "B_LegStrapBag_olive_F";

this addWeapon "rhs_weap_l1a1";
this addPrimaryWeaponItem "rhsgref_acc_falMuzzle_l1a1";
this addPrimaryWeaponItem "rhsgref_acc_l1a1_l2a2";
this addPrimaryWeaponItem "rhs_mag_20Rnd_762x51_m62_fnfal";
this addWeapon "rhs_weap_pb_6p9";
this addHandgunItem "rhs_acc_6p9_suppressor";
this addHandgunItem "rhs_mag_9x18_8_57N181S";
this addWeapon "rhssaf_zrak_rd7j";

this addItemToUniform "FirstAidKit";
for "_i" from 1 to 3 do {this addItemToUniform "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_grenade_mki_mag";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_grenade_mkiiia1_mag";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_20Rnd_762x51_m80a1_fnfal";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_20Rnd_762x51_m62_fnfal";};
this addItemToBackpack "rhsgref_acc_l1a1_anpvs2";
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_20Rnd_762x51_m80a1_fnfal";};
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_20Rnd_762x51_m62_fnfal";};
this linkItem "ItemWatch";
this linkItem "ItemRadio";