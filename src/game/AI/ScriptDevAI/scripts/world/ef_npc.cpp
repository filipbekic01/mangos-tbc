#include "AI/ScriptDevAI/include/sc_common.h"
#include "Entities/Object.h"
#include "Entities/ObjectGuid.h"

bool GossipHello_ef_npc(Player *player, Creature *creature)
{
    player->ADD_GOSSIP_ITEM_ID(GOSSIP_ICON_CHAT, "first item in list", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetObjectGuid());
    
    return true;
}

void AddSC_ef_npc()
{
    Script *script = new Script;
    script->Name = "ef_npc";
    script->pGossipHello = &GossipHello_ef_npc;
    script->RegisterSelf();
}