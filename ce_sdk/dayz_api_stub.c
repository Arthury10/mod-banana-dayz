class PlayerBase
{
    void Message(string msg);
    EntityAI GetInventory();
};

class EntityAI
{
    void Delete();
};

class ItemBase : EntityAI
{
    void SetQuantity(float value);
};
