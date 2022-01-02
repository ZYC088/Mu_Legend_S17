//************************************************************************
//
// Authors @myheart
// <https://forum.ragezone.com/members/2000236254.html>
//
//
// FILE: dllmain.cpp
//
//

#include "stdafx.h"
#include "Util.h"

typedef void (WINAPI* GETSTARTUPINFOA)(LPSTARTUPINFOA);

GETSTARTUPINFOA HookGetStartupInfo;
DWORD State = 0;

char IpAddress[32] = "10.0.0.1";
WORD IpAddressPort = 44405;

char ClientVersion[8] = "1.19.74";
char ClientSerial[17] = "s2bW49qZdtRFE100";

int CheckIntegrity()
{
	return 1;
}

void EntryProc()
{
	/*static FILE* hConsole;
	AllocConsole();
	freopen_s(&hConsole,"CONOUT$","w",stdout);
	printf("Console OK\n");*/

	//SetByte(0x00FB089B,0xEB); // GameGuard
	//SetByte(0x00FB091A,0xEB); // GameGuard
	SetByte(0x01190944,0xC3); // GameGuard
	SetByte(0x00A6BC21,0xEB); // GameGuard
	SetByte(0x0118CC1D,0xEB); // GameGuard 
	SetByte(0x0118D4AC,0xEB); // GameGuard 
	SetByte(0x01190487,0xEB); // GameGuard 
	SetByte(0x011B8D7E,0xEB); // GameGuard 
	MemorySet(0x00A6BBD9,0x90,0x02); // GameGuard
	MemorySet(0x00A6BC3D,0x90,0x02); // GameGuard
	MemorySet(0x00A6BC91,0x90,0x02); // GameGuard
	SetByte(0x0118CAED,0xEB); // GameGuard

	SetByte(0x011C2805,0xEB); // ResourceGuard
	SetByte(0x011F8A11,0xEB); // ResourceGuard
	SetByte(0x015D62FD,0xEB); // ResourceGuard
	SetByte(0x015D6430,0xEB); // ResourceGuard
	SetByte(0x016049C1,0xEB); // ResourceGuard
	SetByte(0x0118D966,0xEB); // ResourceGuard

	SetCompleteHook(0xE9,0x0118C2AB,0x0118C3C0); // Mu.exe

	SetByte(0x01A1F424,ClientVersion[0]+1);
	SetByte(0x01A1F425,ClientVersion[2]+2);
	SetByte(0x01A1F426,ClientVersion[3]+3);
	SetByte(0x01A1F427,ClientVersion[5]+4);
	SetByte(0x01A1F428,ClientVersion[6]+5);

	MemoryCpy(0x01A1F425,ClientSerial,sizeof(ClientSerial));

	MemoryCpy(0x01A1EEE0,IpAddress,sizeof(IpAddress));

	SetWord(0x01A1FC78,IpAddressPort);

	MemorySet(0x00F39514,0x90,0x02); // Packet Twist
	MemorySet(0x00F39570,0x90,0x02); // Packet Twist

	SetByte(0x0160298F,0xEB); // TRAP
	SetByte(0x0160003F,0xEB); // TRAP
	SetByte(0x01600439,0xEB); // TRAP
	SetByte(0x015FBD41,0xEB); // TRAP
	SetByte(0x01603E63,0xEB); // TRAP
	SetByte(0x01229A82,0xEB); // TRAP
	SetByte(0x014F638C,0xEB); // TRAP
	SetByte(0x014F620F,0xEB); // TRAP
	SetByte(0x014F5901,0xEB); // TRAP
	SetByte(0x014F638C,0xEB); // TRAP
	SetByte(0x0151A5C8,0xEB); // TRAP
	SetByte(0x00E8220C,0xEB); // TRAP
	SetByte(0x00E84E8F,0xEB); // TRAP
	SetByte(0x0092E34E,0xEB); // TRAP
	SetByte(0x01292669,0xEB); // TRAP
	SetByte(0x00A7A908,0xEB); // TRAP
	SetByte(0x00C04AD9,0xEB); // TRAP
	SetByte(0x011E765A,0xEB); // TRAP

	SetByte(0x01727AB5+0x00,0xB8); // Floating Point
	SetByte(0x01727AB5+0x01,0x01); // Floating Point
	SetByte(0x01727AB5+0x02,0x00); // Floating Point
	SetByte(0x01727AB5+0x03,0x00); // Floating Point
	SetByte(0x01727AB5+0x04,0x00); // Floating Point
	SetByte(0x01727AB5+0x05,0x90); // Floating Point
	SetByte(0x01727AB5+0x06,0x90); // Floating Point
	SetByte(0x01727AB5+0x07,0x90); // Floating Point
	SetByte(0x01727AB5+0x08,0x90); // Floating Point
	SetByte(0x01727AB5+0x09,0x90); // Floating Point
	SetByte(0x01727AB5+0x0A,0x90); // Floating Point

	SetCompleteHook(0xE8,0x011C27C0,&CheckIntegrity);
	SetCompleteHook(0xE8,0x015D62CC,&CheckIntegrity);
	SetCompleteHook(0xE8,0x015D63FC,&CheckIntegrity);
	SetCompleteHook(0xE8,0x01604988,&CheckIntegrity);

	//SEND PACKET
	//((int(__thiscall*)(void*,BYTE*,DWORD))0x00E19065)((void*)0x06C17618,send,size);

	//	FIX THIS
	//	EXTRA PACKET ENCODE (11)
	//
	//	011C2FC5 LOGIN
	//	011C6C1C QUEST
	//	011DAC06 QUEST
	//	011BFB51 ITEM 
	//	011D3F66 ITEM 
	//	011D4182 ITEM 
	//	011B9F66 ITEM 
	//	011B4E7A ITEM 
	//	011B960C ITEM 
	//	011D486D MUUN
	//	011B9201 MUUN
}

void WINAPI MyGetStartupInfo(LPSTARTUPINFOA lpStartupInfoA)
{
	if((State++)==0)
	{
		EntryProc();
	}

	HookGetStartupInfo(lpStartupInfoA);
}

void InitEntryProc()
{
	HookGetStartupInfo = (GETSTARTUPINFOA)GetProcAddress(GetModuleHandle("Kernel32.dll"),"GetStartupInfoA");

	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	DetourAttach(&(PVOID&)HookGetStartupInfo,MyGetStartupInfo);
	DetourTransactionCommit();
}

BOOL APIENTRY DllMain(HMODULE hModule,DWORD  ul_reason_for_call,LPVOID lpReserved)
{
	switch(ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH:
		InitEntryProc();
		break;
	case DLL_THREAD_ATTACH:
		break;
	case DLL_THREAD_DETACH:
		break;
	case DLL_PROCESS_DETACH:
		break;
	}
	return TRUE;
}

extern "C" __declspec(dllexport) void Entry() {}
