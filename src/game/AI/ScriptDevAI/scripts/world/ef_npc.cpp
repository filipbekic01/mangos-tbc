#include "AI/ScriptDevAI/include/sc_common.h"
#include "Entities/Object.h"
#include "Entities/ObjectGuid.h"

bool GossipHello_ef_npc(Player *player, Creature *creature)
{
    player->ADD_GOSSIP_ITEM_ID(GOSSIP_ICON_MONEY_BAG, "Give me more money.", GOSSIP_SENDER_MAIN, 1);
    player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetObjectGuid());

    return true;
}

bool GossipSelect_ef_npc(Player *player, Creature *creature, uint32 sender, uint32 action)
{
    switch (action)
    {
    case 1:
        player->SetMoney(MAX_MONEY_AMOUNT);
        creature->MonsterSay("You got the money!");
        break;
    default:
        break;
    }

    return true;
}

void AddSC_ef_npc()
{
    Script *script = new Script;
    script->Name = "ef_npc";
    script->pGossipHello = &GossipHello_ef_npc;
    script->pGossipSelect = &GossipSelect_ef_npc;
    script->RegisterSelf();
}