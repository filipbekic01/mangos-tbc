#include "AI/ScriptDevAI/include/sc_common.h"
#include "Entities/Object.h"
#include "Entities/ObjectGuid.h"

bool GossipHello_ef_npc(Player *player, Creature *creature)
{
    player->ADD_GOSSIP_ITEM_ID(GOSSIP_ICON_MONEY_BAG, "Add Gold", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    player->ADD_GOSSIP_ITEM_ID(GOSSIP_ICON_INTERACT_1, "Repair All Items", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    player->ADD_GOSSIP_ITEM_ID(GOSSIP_ICON_INTERACT_2, "Repair All Items", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetObjectGuid());

    return true;
}

bool GossipSelect_ef_npc(Player *player, Creature *creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        player->SetMoney(MAX_MONEY_AMOUNT);
        creature->MonsterWhisper("Here you go, $n! Enjoy you money.", player, false);
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        player->DurabilityRepairAll(false, 0, false);
        creature->MonsterWhisper("Repaired all items.", player, false);
    }

    player->CLOSE_GOSSIP_MENU();

    return true;
}

void AddSC_ef_npc()
{
    Script *script = new Script;
    script->Name = "ef_npc";
    script->pGossipHello = &GossipHello_ef_npc;
    script->pGossipSelect = &GossipSelect_ef_npc;
    script->RegisterSelf(false);
}