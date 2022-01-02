//************************************************************************
//
// Authors @myheart
// <https://forum.ragezone.com/members/2000236254.html>
//
//
// FILE: Offset.h
//
//

#pragma once

#define MAIN_PACKET_SERIAL	0x06C17489

#define pParsePacket		((BYTE*(__thiscall*)(void*))0x011FD26E)
#define pChatProtocolCore	((void(*)(int,int,BYTE*,int,BOOL))0x011F241E)
#define ProtocolCore ((BOOL(*)(DWORD,BYTE*,DWORD,DWORD)) 0x011F2495)

