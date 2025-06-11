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
        hiddenSelections[] = {"camoGround"};
        hiddenSelectionsTextures[] = {"Banana\data\banana_yellow_co.paa"};
        class AnimEvents
        {
            class SoundEat
            {
                soundSet = "RandomEat_SoundSet";
                id = 501;
            };
        };
    };
};

class CfgSoundShaders
{
    class RandomEat_SoundShader
    {
        samples[] = {{"Banana\data\random_sound",1}};
        volume = 1.0;
    };
};

class CfgSoundSets
{
    class RandomEat_SoundSet
    {
        soundShaders[] = {"RandomEat_SoundShader"};
        volumeFactor = 1.0;
    };
};
