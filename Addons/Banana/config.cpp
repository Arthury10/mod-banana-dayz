class CfgPatches
{
    class Banana_Mod
    {
        units[] = {"Banana"};
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {"DZ_Data"};
    };
};

class CfgVehicles
{
    class Rice; // existing DayZ rice item
    class Banana : Rice
    {
        scope = 2;
        displayName = "Banana";
        descriptionShort = "A placeholder banana using the rice package.";
        model = "\dz\gear\food\rice.p3d";
    };
};
