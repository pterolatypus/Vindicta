removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

_RandomHeadgear = selectRandom ["rhssaf_helmet_m97_veil_digital","rhssaf_helmet_m97_digital","rhssaf_helmet_m97_digital_black_ess","rhssaf_helmet_m97_digital_black_ess_bare","rhssaf_helmet_m97_olive_nocamo","rhssaf_helmet_m97_olive_nocamo_black_ess","rhssaf_helmet_m97_olive_nocamo_black_ess_bare"];
this addHeadgear _RandomHeadgear;
_RandomGoggles = selectRandom ["G_Bandanna_oli","G_Balaclava_oli","rhsusf_shemagh_od","rhsusf_shemagh2_od","","",""];
this addGoggles _RandomGoggles;
this forceAddUniform "rhssaf_uniform_m10_digital_summer";
this addVest "rhssaf_vest_md99_digital";
this addBackpack "rhs_sidor";

this addWeapon "rhs_weap_m84";
this addPrimaryWeaponItem "rhs_100Rnd_762x54mmR_green";

this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_rgd5";};
this addItemToVest "rhs_100Rnd_762x54mmR";
this addItemToBackpack "rhs_100Rnd_762x54mmR_green";
this addItemToBackpack "rhs_100Rnd_762x54mmR";
this linkItem "ItemWatch";
