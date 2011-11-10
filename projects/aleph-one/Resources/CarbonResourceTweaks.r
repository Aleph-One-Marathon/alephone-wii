/*
	Copyright (C) 1991-2001 and beyond by Bungie Studios, Inc.
	and the "Aleph One" developers.
 
	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	This license is contained in the file "COPYING",
	which is included with this source code; it is available online at
	http://www.gnu.org/licenses/gpl.html
	
Feb 27, 2002 (Br'fin (Jeremy Parsons))
	
	Carbon specific resource changes. This must be added as a resource
	before marathon2.resources in order to supercede them.
	Initial verson tweaks Network dialogs.
*/

#include <Carbon/Carbon.r>

resource 'DLOG' (10000, "AppleTalk Game Gather") {
	{42, 14, 298, 537},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	10000,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (10001, "AppleTalk Game Join") {
	{40, 39, 314, 584},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	10001,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (10002, "Appletalk Distribute Map") {
	{52, 130, 130, 433},
	movableDBoxProc,
	visible,
	noGoAway,
	0x0,
	10002,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (3000, "Net Game Setup") {
	{26, 24, 413, 597},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	3000,
	"",
	centerParentWindowScreen
};

resource 'DLOG' (2100, "OpenGL Texture Options") {
	{100, 100, 287, 400},
	movableDBoxProc,
	invisible,
	noGoAway,
	0x0,
	2100,
	"OpenGL Texture Rendering Preferences",
	centerParentWindowScreen
};

resource 'DITL' (3000, "Net Game Setup") {
	{	/* array DITLarray: 37 elements */
		/* [1] */
		{355, 486, 375, 554},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{355, 407, 375, 475},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{69, 586, 89, 786},
		Control {
			enabled,
			135
		},
		/* [4] */
		{170, 25, 190, 357},
		Control {
			enabled,
			138
		},
		/* [5] */
		{193, 281, 213, 566},
		Control {
			enabled,
			133
		},
		/* [6] */
		{288, 21, 306, 188},
		CheckBox {
			enabled,
			"Disable Motion Sensor"
		},
		/* [7] */
		{306, 21, 324, 225},
		CheckBox {
			enabled,
			"Penalize Dying (10 seconds)"
		},
		/* [8] */
		{270, 21, 288, 203},
		CheckBox {
			enabled,
			"Dead Players Drop Items"
		},
		/* [9] */
		{97, 588, 115, 746},
		CheckBox {
			enabled,
			"Allow Realtime Audio"
		},
		/* [10] */
		{216, 21, 234, 81},
		CheckBox {
			enabled,
			"Aliens"
		},
		/* [11] */
		{252, 21, 270, 123},
		CheckBox {
			enabled,
			"Allow Teams"
		},
		/* [12] */
		{278, 322, 298, 422},
		RadioButton {
			enabled,
			"Untimed"
		},
		/* [13] */
		{298, 322, 318, 434},
		RadioButton {
			enabled,
			"Time Limit:"
		},
		/* [14] */
		{318, 322, 338, 434},
		RadioButton {
			enabled,
			"Kill Limit:"
		},
		/* [15] */
		{298, 438, 314, 474},
		EditText {
			enabled,
			"10"
		},
		/* [16] */
		{322, 438, 338, 474},
		EditText {
			enabled,
			"20"
		},
		/* [17] */
		{235, 21, 251, 194},
		CheckBox {
			enabled,
			"Live Carnage Reporting"
		},
		/* [18] */
		{322, 482, 338, 542},
		StaticText {
			disabled,
			"kills"
		},
		/* [19] */
		{266, 318, 346, 558},
		UserItem {
			disabled
		},
		/* [20] */
		{258, 326, 274, 386},
		StaticText {
			disabled,
			"Duration"
		},
		/* [21] */
		{72, 69, 88, 239},
		EditText {
			enabled,
			""
		},
		/* [22] */
		{121, 20, 141, 305},
		Control {
			enabled,
			136
		},
		/* [23] */
		{72, 21, 88, 63},
		StaticText {
			disabled,
			"Name:"
		},
		/* [24] */
		{324, 21, 342, 236},
		CheckBox {
			enabled,
			"Penalize Suicide (15 seconds)"
		},
		/* [25] */
		{193, 17, 213, 277},
		Control {
			enabled,
			141
		},
		/* [26] */
		{97, 20, 117, 305},
		Control {
			enabled,
			142
		},
		/* [27] */
		{114, 605, 130, 754},
		StaticText {
			disabled,
			"(requires microphone)"
		},
		/* [28] */
		{216, 85, 234, 190},
		CheckBox {
			enabled,
			"Use Script"
		},
		/* [29] */
		{149, 18, 165, 109},
		StaticText {
			disabled,
			"Game Options"
		},
		/* [30] */
		{59, 11, 143, 256},
		UserItem {
			disabled
		},
		/* [31] */
		{49, 19, 65, 99},
		StaticText {
			disabled,
			"Appearance"
		},
		/* [32] */
		{56, 578, 140, 801},
		UserItem {
			disabled
		},
		/* [33] */
		{48, 584, 64, 697},
		StaticText {
			disabled,
			"Network Options"
		},
		/* [34] */
		{419, 11, 469, 425},
		StaticText {
			disabled,
			"Refer to page 17 of your manual for a fu"
			"ll description of the network menu.  Cho"
			"osing an inappropriate network type may "
			"result in an unresponsive or jumpy game."
		},
		/* [35] */
		{298, 482, 314, 550},
		StaticText {
			disabled,
			"minutes"
		},
                /* [36] */
		{0, 0, 1, 1},
		StaticText {
			disabled,
			""
		},
                /* [37] */
		{216, 191, 234, 565},
		StaticText {
			disabled,
			""
		},
                /* [38] */
		{155, 11, 346, 566},
		UserItem {
			disabled
		}
	}
};

resource 'DITL' (10000, "AppleTalk Gather Game") {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{228, 453, 248, 511},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{228, 371, 248, 439},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{70, 264, 207, 502},
		UserItem {
			disabled
		},
		/* [4] */
		{228, 184, 248, 242},
		Button {
			enabled,
			"Add"
		},
		/* [5] */
		{68, 13, 218, 241},
		Control {
			enabled,
			450
		},
		/* [6] */
		{57, 256, 216, 511},
		UserItem {
			disabled
		},
		/* [7] */
		{50, 263, 66, 372},
		StaticText {
			disabled,
			"Players In Game"
		},
		/* [8] */
		{44, 9, 64, 211},
		Control {
			enabled,
			137
		},
		/* [9] */
		{49, 11, 65, 144},
		StaticText {
			disabled,
			"Players On Network"
		},
		/* [10] */
		{10, 13, 47, 440},
		Picture {
			disabled,
			8003
		}
	}
};

resource 'DITL' (10002, "AppleTalk Distribute Map") {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{54, 13, 65, 293},
		UserItem {
			disabled
		},
		/* [2] */
		{7, 10, 45, 293},
		StaticText {
			disabled,
			"Now transferring map to remote player."
		}
	}
};

resource 'DITL' (10001, "AppleTalk Game Join") {
	{	/* array DITLarray: 17 elements */
		/* [1] */
		{242, 467, 262, 525},
		Button {
			enabled,
			"Join"
		},
		/* [2] */
		{242, 387, 262, 455},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{68, 19, 205, 257},
		UserItem {
			disabled
		},
		/* [4] */
		{73, 339, 89, 509},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{120, 290, 140, 575},
		Control {
			enabled,
			136
		},
		/* [6] */
		{96, 290, 116, 575},
		Control {
			enabled,
			142
		},
		/* [7] */
		{154, 280, 221, 526},
		StaticText {
			disabled,
			"Bla bla bla.  Bla bla bla bla, bla bla. "
			" Bla bla bla� bla bla.  Blah, bla bla.  "
			"Bla bla, bla bla.  Bla bla bla."
		},
		/* [8] */
		{73, 291, 89, 333},
		StaticText {
			disabled,
			"Name:"
		},
		/* [9] */
		{61, 266, 213, 270},
		Control {
			disabled,
			402
		},
		/* [10] */
		{47, 18, 63, 128},
		StaticText {
			disabled,
			"Players In Game"
		},
		/* [11] */
		{48, 290, 64, 370},
		StaticText {
			disabled,
			"Appearance"
		},
		/* [12] */
		{228, 148, 233, 314},
		Control {
			enabled,
			400
		},
		/* [13] */
		{318, 8, 338, 258},
		Control {
			enabled,
			147
		},
		/* [14] */
		{221, 20, 239, 152},
		CheckBox {
			enabled,
			"Join By Address"
		},
		/* [15] */
		{246, 20, 262, 113},
		StaticText {
			disabled,
			"Remote Host:"
		},
		/* [16] */
		{246, 117, 262, 309},
		EditText {
			enabled,
			""
		},
		/* [17] */
		{10, 13, 47, 413},
		Picture {
			disabled,
			8004
		}
	}
};

resource 'DITL' (5000, "Net Damage Stats") {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{368, 454, 388, 512},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{48, 24, 69, 250},
		Control {
			enabled,
			1006
		},
		/* [3] */
		{57, 12, 352, 512},
		UserItem {
			disabled
		},
		/* [4] */
		{361, 14, 377, 443},
		StaticText {
			disabled,
			"Total Kills"
		},
		/* [5] */
		{379, 14, 395, 443},
		StaticText {
			disabled,
			"Total Deaths"
		}
	}
};

resource 'MENU' (131, "Game Types") {
	131,
	textMenuProc,
	allEnabled,
	enabled,
	"Game Types",
	{	/* array: 8 elements */
		/* [1] */
		"Every Man For Himself", noIcon, noKey, noMark, plain,
		/* [2] */
		"Co-operative Play", noIcon, noKey, noMark, plain,
		/* [3] */
		"Capture the Flag", noIcon, noKey, noMark, plain,
		/* [4] */
		"King of the Hill", noIcon, noKey, noMark, plain,
		/* [5] */
		"Kill the Man With the Ball", noIcon, noKey, noMark, plain,
		/* [6] */
		"Defense", noIcon, noKey, noMark, plain,
		/* [7] */
		"Rugby", noIcon, noKey, noMark, plain,
		/* [8] */
		"Tag", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (1000, "Team Names") {
	1000,
	textMenuProc,
	allEnabled,
	enabled,
	"Team Colors",
	{	/* array: 8 elements */
		/* [1] */
		"Slate", noIcon, noKey, noMark, plain,
		/* [2] */
		"Red", noIcon, noKey, noMark, plain,
		/* [3] */
		"Violet", noIcon, noKey, noMark, plain,
		/* [4] */
		"Yellow", noIcon, noKey, noMark, plain,
		/* [5] */
		"White", noIcon, noKey, noMark, plain,
		/* [6] */
		"Orange", noIcon, noKey, noMark, plain,
		/* [7] */
		"Blue", noIcon, noKey, noMark, plain,
		/* [8] */
		"Green", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (1001, "Entry Points") {
	1001,
	textMenuProc,
	allEnabled,
	enabled,
	"Gather- Map",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (1002, "Zone Popup") {
	1002,
	textMenuProc,
	allEnabled,
	enabled,
	"Gather- Zones",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (1003, "Network Speeds") {
	1003,
	textMenuProc,
	allEnabled,
	enabled,
	"Net Speed",
	{	/* array: 4 elements */
		/* [1] */
		"AppleTalk Remote Access", noIcon, noKey, noMark, plain,
		/* [2] */
		"LocalTalk", noIcon, noKey, noMark, plain,
		/* [3] */
		"TokenTalk", noIcon, noKey, noMark, plain,
		/* [4] */
		"Ethernet", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (1006, "Carnage View Selector") {
	1006,
	textMenuProc,
	allEnabled,
	enabled,
	"Netgame- Stats",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (1007, "Transport Layer") {
	1007,
	textMenuProc,
	allEnabled,
	enabled,
	"Title",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (2004, "Difficulties") {
	2004,
	textMenuProc,
	allEnabled,
	enabled,
	"Player- Difficulties",
	{	/* array: 5 elements */
		/* [1] */
		"Kindergarten", noIcon, noKey, noMark, plain,
		/* [2] */
		"Easy", noIcon, noKey, noMark, plain,
		/* [3] */
		"Normal", noIcon, noKey, noMark, plain,
		/* [4] */
		"Major Damage", noIcon, noKey, noMark, plain,
		/* [5] */
		"Total Carnage", noIcon, noKey, noMark, plain
	}
};

resource 'CNTL' (133, "Difficulty Level") {
	{0, 0, 20, 285},
	0,
	visible,
	131,
	2004,
	1008,
	0,
	"Difficulty Level:"
};

resource 'CNTL' (135, "Gather- Network Speeds") {
	{0, 0, 20, 200},
	0,
	visible,
	72,
	1003,
	1008,
	0,
	"Network:"
};

resource 'CNTL' (136, "Join- Team") {
	{0, 0, 20, 285},
	0,
	visible,
	131,
	1000,
	1008,
	0,
	"Team:"
};

resource 'CNTL' (137, "Gather- Zones") {
	{217, 9, 237, 211},
	0,
	visible,
	72,
	1002,
	1008,
	0,
	"Zone:"
};

resource 'CNTL' (138, "Gather- Map") {
	{150, 18, 170, 350},
	0,
	visible,
	40,
	1001,
	1008,
	0,
	"Map:"
};

resource 'CNTL' (141, "Netgame- Game Type") {
	{0, 0, 20, 260},
	0,
	visible,
	49,
	131,
	1008,
	0,
	"Game:"
};

resource 'CNTL' (142, "Join- Color") {
	{0, 0, 20, 285},
	0,
	visible,
	131,
	1000,
	1008,
	0,
	"Color:"
};

resource 'CNTL' (147, "Join- Network Game Type") {
	{0, 0, 20, 250},
	0,
	visible,
	120,
	1007,
	1008,
	0,
	"Transport Layer:"
};

resource 'CNTL' (1006, "Netgame- Stats") {
	{0, 0, 21, 226},
	0,
	visible,
	70,
	1006,
	1009,
	0,
	"Graph of:"
};

resource 'CNTL' (400, "Join - Seperator") {
	{228, 139, 233, 305},
	0,
	visible,
	0,
	0,
	144,
	0,
	""
};

resource 'CNTL' (402, "Join - VSeperator") {
	{166, 307, 318, 311},
	0,
	visible,
	0,
	0,
	144,
	0,
	""
};

resource 'CNTL' (450, "Gather - Player List") {
	{66, 13, 216, 241},
	450,
	visible,
	0,
	0,
	353,
	0,
	"CNTL"
};

resource 'ldes' (450, purgeable) {
	versionZero {
		0,
		1,
		0,
		0,
		hasVertScroll,
		noHorizScroll,
		0,
		noGrowSpace
	}
};

resource 'dlgx' (3000) {
	versionZero {
		13
	}
};

resource 'dlgx' (10000) {
	versionZero {
		13
	}
};

resource 'dlgx' (10001) {
	versionZero {
		15
	}
};

resource 'dlgx' (10002) {
	versionZero {
		13
	}
};

resource 'dlgx' (5000) {
	versionZero {
		13
	}
};

data 'PICT' (8004, "join dialog header", purgeable) {
	$"55E8 0000 0000 0023 0170 0011 02FF 0C00"            /* U�.....#.p...�.. */
	$"FFFE 0000 0048 0000 0048 0000 0000 0000"            /* ��...H...H...... */
	$"0023 0170 0000 0000 0001 000A 0000 0000"            /* .#.p.......�.... */
	$"0023 0170 009A 0000 00FF 85C0 0000 0000"            /* .#.p.�...���.... */
	$"0023 0170 0000 0004 0000 0000 0048 0000"            /* .#.p.........H.. */
	$"0048 0000 0010 0020 0003 0008 0000 0000"            /* .H..... ........ */
	$"0000 0000 0000 0000 0000 0000 0023 0170"            /* .............#.p */
	$"0000 0000 0023 0170 0040 01C6 E5FF 0EDB"            /* .....#.p.@.���.� */
	$"B9A8 978A 8784 817F 7C7B 90A9 BEDD F0FF"            /* �������.|{������ */
	$"0CD1 C7C2 B8B2 AAA4 9AA2 AEBD CCDF ECFF"            /* .��¸����������� */
	$"0CDE C7C3 B8B8 AAAA 9E9B ACB9 C9D8 ECFF"            /* .��ø����������� */
	$"C2FF 0EDC B7A8 998B 8885 8280 7B7C 8EA5"            /* ��.ܷ�������{|�� */
	$"B8D7 F7FF 00DB FED4 00CF FEC5 03BD B5C9"            /* ����.���.���.��� */
	$"DEE5 FFEF FF04 DFD4 C7BD BFFE C900 D1FE"            /* �����.��ǽ���.�� */
	$"D600 DCF8 FF0E D5B4 A497 8B88 8582 7D7B"            /* �.���.մ������}{ */
	$"7F91 A8BA DBF9 FF19 DFBA A99A 8B88 8582"            /* .������.ߺ������ */
	$"807C 7A8A 98A2 988D 8A85 8280 7C79 8A9A"            /* �|z���������|y�� */
	$"B5D7 DAFF F5FF 0EDB BAA9 9A8D 8A86 8481"            /* ������.ۺ������� */
	$"7F7D 92AA BFDD F0FF 0CD1 C8C2 B9B3 ACA6"            /* .}������.��¹��� */
	$"9CA3 B0BE CDDF ECFF 0CDE C8C4 B9B9 ABAC"            /* ��������.��Ĺ��� */
	$"A09E ADBA C9D8 DCFF D2FF 0EDC B8A9 9B8D"            /* ����������.ܸ��� */
	$"8B88 8582 7D7F 90A8 B9D7 F7FF 00DB FED5"            /* ����}.������.��� */
	$"00CF FEC5 03BD B6C9 DED5 FFFF FF04 DFD5"            /* .���.��������.�� */
	$"C8BE C0FE CA00 D1FE D600 DCF8 FF0E D6B6"            /* Ⱦ���.���.���.ֶ */
	$"A699 8D8B 8884 817D 8194 A9BB DBF9 FF19"            /* �������}�������. */
	$"DFBB AB9C 8E8B 8885 827F 7C8C 9AA4 9A90"            /* ߻�������.|����� */
	$"8C88 8582 7F7B 8C9C B6D7 CEFF 03DC C0B2"            /* ����.{������.��� */
	$"A50A 9997 9592 908E 8D9F B3C4 DEF0 FF0C"            /* �������������. */
	$"D4CB C8C0 BAB4 AFA8 ADB8 C3D1 E0EC FF0C"            /* ���������������. */
	$"DFCB C9C0 C0B4 B4AA A8B6 C1CD DBCC FFE2"            /* ���������������� */
	$"FF0E DDBF B2A5 9A98 9694 918E 8E9C B0C0"            /* �.ݿ������������ */
	$"D8F7 FF00 DCFE D700 D3FE CA03 C3BD CDDF"            /* ���.���.���.ý�� */
	$"D3FF 04E0 D7CC C3C5 FECD 00D4 FED8 01DD"            /* ��.�������.���.� */
	$"FFF9 FF0E D8BD AFA4 9A98 9692 8F8E 90A0"            /* ���.ؽ���������� */
	$"B2C1 DCF9 FF19 DFC2 B3A8 9A98 9694 918E"            /* �����.�³������� */
	$"8D99 A5AD A59C 9996 9490 8E8C 99A6 BDD8"            /* ���������������� */
	$"EAFF 03C0 F6FF 41DB 8775 7375 7677 7778"            /* ��.���Aۇusuvwwx */
	$"7879 4DA0 FFE1 CAA9 8D87 8687 8888 8684"            /* xyM���ʩ�������� */
	$"8381 7662 4E47 4A81 C3FF DB84 7373 7576"            /* ��vbNGJ���ۄssuv */
	$"7777 7878 723C CAFF 9B78 7575 7271 6F6E"            /* wwxxr<���xuurqon */
	$"6861 5D59 5364 84A5 CAF0 FF11 C57D 7573"            /* ha]YSd�����.�}us */
	$"7372 706F 6D63 5D59 5558 7596 B8DD FCFF"            /* srpomc]YUXu����� */
	$"01A9 7AFE 73FF 7503 7677 7778 FE78 FE79"            /* .�z�s�u.vwwx�x�y */
	$"0077 FD73 FF75 0076 FE77 FC78 FE79 056C"            /* .w�s�u.v�w�x�y.l */
	$"7173 7576 77FE 7807 763F 7275 7376 7677"            /* qsuvw�x.v?rusvvw */
	$"FE78 1379 4F68 7373 7575 7777 7878 7647"            /* �x.yOhssuuwwxxvG */
	$"A0FF FFD2 B28F 86FE 870B 8887 8583 8073"            /* ���Ҳ����.�����s */
	$"6450 4846 73BF FEFF 02C8 7F67 FE68 1767"            /* dPHFs���.�.g�h.g */
	$"6666 6564 6363 615E 5952 6173 A3DD FFFF"            /* ffedcca^YRas���� */
	$"A97A 7373 7577 77FE 7807 6743 8273 7375"            /* �zssuww�x.gC�ssu */
	$"7677 FE78 0066 004F F3FF 06DF C09B 7F7C"            /* vw�x.f.O��.���.| */
	$"7871 FE70 FD6F FE6E 186D 663C B4FF E2CE"            /* xq�p�o�n.mf<���� */
	$"A98A 8586 8787 8887 8582 8072 614F 4847"            /* �����������raOHG */
	$"87CE FDFF 21D6 B792 8786 8787 8A87 8685"            /* ����!ַ��������� */
	$"827C 7876 7C83 868A 8785 8381 7A68 584A"            /* �|xv|�������zhXJ */
	$"4673 B5E1 FF9E 78FE 73FF 7502 7677 77FD"            /* Fs����x�s�u.vww� */
	$"78FE 7901 5E85 F6FF 04DB 8A78 7778 0079"            /* x�y.^���.ۊxwx.y */
	$"FE7A FF7B 084F A1FF E1CB AB8F 8A88 FE8B"            /* �z�{.O���˫����� */
	$"118A 8785 8379 6552 4C4F 84C3 FFDB 8677"            /* .����yeRLO���ۆw */
	$"7778 78FE 7A15 7B76 3ECB FF9C 7B77 7776"            /* wxx�z.{v>���{wwv */
	$"7572 716C 6461 5C58 6786 A8CB F0FF 11C7"            /* urqlda\Xg�����.� */
	$"8177 7776 7673 7270 6661 5C59 5C78 98B9"            /* �wwvvsrpfa\Y\x�� */
	$"DDFC FF08 AB7D 7676 7777 7879 79FE 7AFD"            /* ���.�}vvwwxyy�z� */
	$"7B03 7C7A 7776 FE77 0378 7979 7AFE 7AFC"            /* {.|zwv�w.xyyz�z� */
	$"7B05 7C6F 7577 7879 FE7A 077B 7843 7678"            /* {.|ouwxy�z.{xCvx */
	$"7778 78FE 7AFF 7B21 526B 7777 7878 797A"            /* wxx�z�{!Rkwwxxyz */
	$"7A7B 7849 A1FF FFD2 B391 888A 8A8B 8C8A"            /* z{xI���ҳ������� */
	$"8786 8377 6654 4D4A 77C0 FEFF 02C9 816B"            /* ���wfTMJw���.Ɂk */
	$"FE6C 276B 6969 6867 6666 6462 5C57 6576"            /* �l'kiihgffdb\Wev */
	$"A4DD FFFF AB7C 7677 7879 7A7A 7B7B 6945"            /* �����|vwxyzz{{iE */
	$"8577 7778 797A 7A7B 7B69 51F3 FF00 DF05"            /* �wwxyzz{{iQ��.�. */
	$"C09E 8280 7B75 FE73 FD72 FE71 0A70 693F"            /* ����{u�s�r�q�pi? */
	$"B5FF E2CF AB8C 878A FE8B 0A8A 8785 8276"            /* ���ϫ��������v */
	$"6453 4D4C 8ACF FDFF 22D7 B895 8A88 8B8B"            /* dSML����"׸����� */
	$"8C8A 8887 8580 7A79 8086 8A8C 8A87 8684"            /* ������zy�������� */
	$"7D6C 5B4F 4A77 B6E1 FF9F 7A76 FE77 0178"            /* }l[OJw����zv�w.x */
	$"79FD 7AFC 7B01 6286 F6FF 14DC 9787 8788"            /* y�z�{.b���.ܗ��� */
	$"888A 8A8B 8B8C 5DA6 FFE1 CEB3 9C97 9698"            /* ������]���γ���� */
	$"FF98 0D97 9594 9188 7968 6264 91C8 FFDC"            /* ��.�����yhbd���� */
	$"94FE 8719 888A 8A8B 8B85 4ACE FFA8 8B87"            /* ���.������J����� */
	$"8786 8583 827D 7875 716D 7A95 B0CE F0FF"            /* �����}xuqmz����� */
	$"11CB 8F87 8786 8684 8381 7975 716E 7087"            /* .ˏ�������yuqnp� */
	$"A3C0 DEFC FF09 B48D 8686 8787 8888 8A8A"            /* �����ƴ��������� */
	$"FD8B FE8C 028A 8786 FE87 FF88 FE8A FC8B"            /* ����.����������� */
	$"FE8C 0681 8587 8788 8A8B FF8B 0788 4F85"            /* ��.���������.�O� */
	$"8887 8888 8AFE 8B02 8C5F 79FE 870C 888A"            /* �������.�_y��.�� */
	$"8A8B 8B88 57A5 FFFF D4BA 9EFD 970B 9997"            /* ����W���Ժ���.�� */
	$"9694 9187 7A6B 645F 86C5 FEFF 01CC 8FFC"            /* ����zkd_����.̏� */
	$"7DFF 7C14 7B7A 7979 7776 716C 7885 ADDE"            /* }�|.{zyywvqlx��� */
	$"FFFF B48C 8687 888A 8AFE 8B07 7953 9287"            /* �����������.yS�� */
	$"8788 888A FE8B 0179 5DF3 FF06 E0C5 A890"            /* ������.y]��.�Ũ� */
	$"8E8B 85FE 84FA 830A 827C 4CBB FFE2 D2B3"            /* �������|L���ҳ */
	$"9996 97FE 980A 9796 9290 8578 6963 6196"            /* ���������xica� */
	$"D2FD FF22 D8BF A197 9697 9899 9896 9694"            /* ���"ؿ���������� */
	$"8E8B 8A8F 9497 9997 9694 918C 7D70 655F"            /* ������������}pe_ */
	$"86BD E1FF AA8B 86FE 87FF 88FF 8AFD 8BFE"            /* ���������������� */
	$"8C01 708C 0278 F6FF 02CF 8E95 FA9C 0867"            /* �.p�.x��.ώ���.g */
	$"0095 DDAB 9B9A 9A9F F7A2 089E 875D 3935"            /* .�ݫ������.��]95 */
	$"6FD6 8B96 FA9C 0542 00C8 FF9E 8EFA A20A"            /* o֋���.B.������� */
	$"A098 8F82 6E57 4742 4F94 DBF3 FF01 C58B"            /* ����nWGBO����.ŋ */
	$"FAA2 0AA1 9A91 8878 634C 4446 8AD3 FEFF"            /* ��¡���xcLDF���� */
	$"01A8 8BF8 9CFB 9C00 48EF 9C01 228F FA9C"            /* .������.H�."��� */
	$"0353 0051 95FA 9C03 7700 4D97 FA9C 0866"            /* .S.Q���.w.M���.f */
	$"0096 E2B7 9C9A 9B9F F7A2 0AA0 8F67 3F36"            /* .�ⷜ����� �g?6 */
	$"80FF FFC5 8B97 F99C FD9B 098F 826F 5143"            /* ���ŋ�����Ə�oQC */
	$"519A FFA8 8BF9 9C03 1D00 8F9B FA9C 0025"            /* Q������...����.% */
	$"002E F4FF 06C4 9C92 9195 999B F59C 0843"            /* ..��.Ĝ�������.C */
	$"00AD E0B0 9C9B 9B9F F7A2 0C9F 8C63 3B38"            /* .�జ�����.��c;8 */
	$"95FF FFC0 9C9B 9A9E EBA2 0792 693F 3654"            /* ���������.�i?6T */
	$"CC9F 8DF2 9C01 0070 F6FF 04D1 9097 9F9F"            /* ̟��..p��.ѐ��� */
	$"FC9F 0869 0096 DEAD 9E9C 9CA1 F7A4 08A0"            /* ��.i.�ޭ������.� */
	$"8B61 3D39 71D7 8D98 FA9F 0544 00C9 FFA0"            /* �a=9q׍���.D.��� */
	$"90FA A40A A29A 9184 725B 4C46 5296 DBF3"            /* ���¢���r[LFR��� */
	$"FF01 C58D FAA4 0AA3 9C95 8B7B 6650 484A"            /* �.ō��£���{fPHJ */
	$"8CD3 FEFF 01A9 8DF2 9F00 4AF8 9FF8 9F01"            /* ����.���.J����. */
	$"2592 FA9F 0355 0053 97FA 9F03 7900 4F99"            /* %���.U.S���.y.O� */
	$"FA9F 0868 0097 E2B8 9F9C 9EA1 F7A4 0AA2"            /* ��.h.�⸟�����¢ */
	$"916B 433A 82FF FFC7 8D99 F99F FD9E 0992"            /* �kC:���Ǎ�����ƒ */
	$"8572 5547 549B FFAA 8DF9 9F03 1F01 919E"            /* �rUGT������...�� */
	$"FA9F 0127 30F4 FF01 C59F 0495 9497 9B9E"            /* ��.'0��.ş.����� */
	$"F59F 0845 00AE E0B3 9F9E 9EA1 F7A4 0CA1"            /* ��.E.�೟�����.� */
	$"8E66 3F3C 96FF FFC1 9F9E 9CA0 EBA4 0795"            /* �f?<���������.� */
	$"6D43 3A58 CDA0 8FF2 9F01 0071 F6FF 02D3"            /* mC:X͠��..q��.� */
	$"9CA2 FAA9 0A73 079B DEB5 A9A8 A6AB ADAD"            /* �����s.�޵������ */
	$"F9AD 08AA 9873 514D 80D8 9AA3 FAA9 0550"            /* ��.��sQM�ؚ���.P */
	$"07CC FFAA 9CFA AD0A ACA5 9F94 836F 625B"            /* .������¬����ob[ */
	$"65A0 DCF3 FF01 CA9A F9AD 09A8 A198 8B7A"            /* e����.ʚ��ƨ���z */
	$"665E 5E97 D5FE FF01 B29A F2A9 0059 EFA9"            /* f^^����.���.Y� */
	$"0132 9EFC A9FF A903 6307 61A2 FAA9 0386"            /* .2�����.c.a���.� */
	$"075B A3FA A908 7207 99E2 BEA9 A8A8 ABF7"            /* .[���.r.�⾩���� */
	$"AD0B AC9E 7C58 4E8E FFFF CB9A A4AA F7A9"            /* �.��|XN���˚���� */
	$"0AA8 9F94 8469 5C67 A5FF B39A F9A9 022C"            /* ¨���i\g������., */
	$"0A9E F9A9 0131 3AF4 FF06 CAA9 A1A0 A3A6"            /* ��.1:��.ʩ���� */
	$"A8F6 A909 A951 07B5 E0B9 A9A8 A8AB F7AD"            /* ���ƩQ.�๩����� */
	$"0CAB 9B78 5350 9FFF FFC5 A9A8 A8AA EBAD"            /* .��xSP���ũ���� */
	$"07A1 7F58 4E68 D1AA 9CF2 A901 0776 01F7"            /* .�.XNhѪ��..v.� */
	$"F6FF 02CF 8E96 FA9F 0567 0076 85A0 A0F1"            /* ��.ώ���.g.v���� */
	$"9F05 8E2E 1947 8B98 FA9F 0543 00C8 FF9E"            /* �.�..G����.C.��� */
	$"8EF4 9F05 9678 4932 3E97 F4FF 01C5 8BF4"            /* ���.�xI2>���.ŋ� */
	$"9F09 9B88 5734 3069 CEFF A88B F89F FB9F"            /* �ƛ�W40i�������� */
	$"0043 EF9F 011F 85FA 9F03 5500 2996 FA9F"            /* .C�..���.U.)��� */
	$"0379 002C 98FA 9F05 6700 8379 9FA2 F19F"            /* .y.,���.g.�y��� */
	$"0798 3817 57E0 C58B 98F1 9F05 813C 286B"            /* .�8.W�ŋ��.�<(k */
	$"A48B F99F 021F 0070 F99F 0025 0017 F6FF"            /* ����...p��.%..�� */
	$"04E1 B69C 9E9E F19F 0543 008F 7CA0 A0F1"            /* .ᶜ���.C.�|��� */
	$"9F06 8424 2076 B49F A2E6 9F05 9842 1F36"            /* �.�$ v����.�B.6 */
	$"8C8E F29F 0100 70F6 FF04 D190 98A1 A1FC"            /* ���..p��.ѐ���� */
	$"A105 6B00 7787 A2A3 F1A1 0591 311C 498D"            /* �.k.w����.�1.I� */
	$"9AFA A105 4500 C9FF A090 F4A1 0599 7B4D"            /* ���.E.������.�{M */
	$"3542 99F4 FF01 C58D F4A1 099F 8C5A 3833"            /* 5B���.ō��Ɵ�Z83 */
	$"6CCF FFA9 8DF2 A100 45F8 A1F8 A101 2188"            /* l�����.E����.!� */
	$"FAA1 0358 002B 98FA A103 7B00 309B FAA1"            /* ��.X.+���.{.0��� */
	$"056B 0085 7BA2 A4F1 A107 9B3B 1B58 E0C5"            /* .k.�{���.�;.X�� */
	$"8D9A F1A1 0584 3F2B 6DA6 8DF9 A102 2100"            /* ���.�?+m����.!. */
	$"72F9 A101 271B F6FF 03E1 B8A0 A1F0 A105"            /* r��.'.��.Ḡ��. */
	$"4500 907F A2A2 F1A1 0688 2724 78B5 A1A4"            /* E.�.���.�'$x��� */
	$"E6A1 059B 4522 3A8E 90F2 A101 0071 F6FF"            /* �.�E":���..q�� */
	$"02D3 9CA3 FAAB 0573 0780 92AB ACFC ABF6"            /* .Ӝ���.s.������� */
	$"AB05 9B40 2955 9AA5 FAAB 0551 07CC FFAA"            /* �.�@)U����.Q.��� */
	$"9CF4 AB05 A38A 6149 51A1 F4FF 01CA 9AF4"            /* ���.��aIQ���.ʚ� */
	$"AB09 A898 6D4A 4577 D2FF B29A F2AB 0051"            /* �ƨ�mJEw�����.Q */
	$"EFAB 012E 96FC ABFF AB03 6407 38A3 FAAB"            /* �..�����.d.8��� */
	$"0387 073B A5FA AB05 7307 8A86 ABAD F1AB"            /* .�.;���.s.����� */
	$"07A5 4928 63E0 CA9A A5F1 AB05 9150 3C7A"            /* .�I(c�ʚ��.�P<z */
	$"AF9A F9AB 022E 0780 F9AB 0130 27F6 FF04"            /* ����...���.0'��. */
	$"E1BE A9AA AAF2 AB06 AB51 079A 8BAB ACF1"            /* ᾩ���.�Q.����� */
	$"AB06 9538 3383 BDAB ADE6 AB05 A553 3248"            /* �.�83�����.�S2H */
	$"9A9C F2AB 0107 7602 70F6 FF02 CF8E 97FA"            /* ���..v.p��.ώ�� */
	$"9B04 6600 1B69 9FFA 9B03 9665 5D82 FA9B"            /* �.f..i���.�e]��� */
	$"0490 0500 7296 FA9B 0542 00C8 FF8F 8EF1"            /* .�..r���.B.����� */
	$"9B04 8445 225A D1F6 FF01 C48B F19B 068A"            /* �.�E"Z���.ċ�.� */
	$"5925 329C A88B F99B 0070 FB67 002C FD67"            /* Y%2�����.p�g.,�g */
	$"006F F99B FC67 0113 85FA 9B03 5C00 1A96"            /* .o���g..���.\..� */
	$"FA9B 0377 0020 98FA 9B05 6600 1945 9C9E"            /* ��.w. ���.f..E�� */
	$"FA9B 0271 5980 FA9B 0686 0500 ADC5 8B96"            /* ��.qY���.�..�ŋ� */
	$"FA9B 018B 85F9 9B04 8C16 054A 8BF9 9B03"            /* ��.����.�..J���. */
	$"1F00 639C FA9B 0024 0012 F6FF 02AE 9AA1"            /* ..c���.$..��.��� */
	$"F89B 0188 8FFA 9B03 4200 2954 F99B 0399"            /* ��.����.B.)T��.� */
	$"6D61 8AFA 9B05 6E03 0183 999E FA9B 0296"            /* ma���.n..�����.� */
	$"8190 F99B 0292 8190 FA9B 0498 1F01 478E"            /* ����.�����.�..G� */
	$"F99B FA67 0100 70F6 FF04 D190 999F 9FFC"            /* ���g..p��.ѐ���� */
	$"9F04 6800 1D6C A0FA 9F03 9868 6184 FA9F"            /* �.h..l���.�ha��� */
	$"0492 0702 7698 FA9F 0545 00C9 FF91 90F1"            /* .�..v���.E.����� */
	$"9F04 8648 265C D1F6 FF01 C58D F19F 068C"            /* �.�H&\���.ō�.� */
	$"5C28 359F A98D F99F 0073 FB69 002F FD69"            /* \(5�����.s�i./�i */
	$"0072 FD9F FD9F FC69 0115 87FA 9F03 5F00"            /* .r�����i..���._. */
	$"1C98 FA9F 037A 0022 9AFA 9F05 6800 1C48"            /* .���.z."���.h..H */
	$"9FA0 FA9F 0275 5C82 FA9F 068A 0701 AEC5"            /* ����.u\���.�..�� */
	$"8D98 FA9F 018D 88F9 9F04 8E19 074D 8DF9"            /* ����.����.�..M�� */
	$"9F02 2100 65F9 9F01 2615 F6FF 03AF 9EA2"            /* �.!.e��.&.��.��� */
	$"9FF9 9F01 8C91 FA9F 0445 002C 589E FA9F"            /* ���.����.E.,X��� */
	$"039B 6F63 8CFA 9F05 7006 0385 9BA0 FA9F"            /* .�oc���.p..����� */
	$"0298 8494 F99F 0296 8492 FA9F 049B 2103"            /* .�����.�����.�!. */
	$"4990 F99F FA69 0100 71F6 FF02 D39C A4FA"            /* I����i..q��.Ӝ�� */
	$"A904 7207 2877 AAFB A904 A9A3 726C 8FFA"            /* �.r.(w���.��rl�� */
	$"A904 9E11 0C83 A3FA A905 5107 CCFF 9E9C"            /* �.�..����.Q.���� */
	$"F1A9 0492 5835 69D3 F6FF 01CA 9AF1 A906"            /* �.�X5i���.ʚ�. */
	$"986B 3944 A5B2 9AF9 A900 80FB 7600 3AFD"            /* �k9D�����.��v.:� */
	$"7600 80F9 A9FC 7601 2196 FCA9 FFA9 036B"            /* v.����v.!�����.k */
	$"0729 A3FA A903 8607 2CA4 FAA9 0472 0728"            /* .)���.�.,���.r.( */
	$"54AA F9A9 0280 678D FAA9 0696 110B B5CA"            /* T���.�g���.�..�� */
	$"9AA3 FAA9 0197 95F9 A904 9924 125B 9AF9"            /* ����.����.�$.[�� */
	$"A902 2E07 6FF9 A901 3022 F6FF 02B7 A8AC"            /* �...o��.0"��.��� */
	$"F8A9 0197 9BFB A905 A951 073E 64A8 FAA9"            /* ��.����.�Q.>d��� */
	$"03A6 7B6E 97FA A905 7D10 0D92 A5AA FAA9"            /* .�{n���.}..����� */
	$"02A3 8F9F F9A9 02A0 8F9E FAA9 04A5 2F0C"            /* .�����.�����.�/. */
	$"579E F9A9 FA76 0107 7602 8BF6 FF02 CF8E"            /* W����v..v.���.ώ */
	$"96FA 9804 6300 0D63 97FA 9803 7500 005C"            /* ���.c..c���.u..\ */
	$"F998 FF00 0155 94FA 9805 4000 C8FF 6C8E"            /* ���..U���.@.��l� */
	$"F998 015B 81FA 9804 954D 1D21 C9F7 FF01"            /* ��.[���.�M.!���. */
	$"C48B F998 0164 73F9 9804 7728 175A 8BF9"            /* ċ��.ds��.w(.Z�� */
	$"9800 1600 27F8 5F01 113F F998 0600 115F"            /* �...'�_..?��..._ */
	$"5F32 008E FA98 0363 001A 94FA 9803 7A00"            /* _2.���.c..���.z. */
	$"2095 FA98 0463 0012 3E99 F998 FF00 0050"            /*  ���.c..>����..P */
	$"FA98 068C 0000 ADC4 8B94 FA98 0353 0013"            /* ��.�..�ċ���.S.. */
	$"94FA 9803 2F00 1C8C F998 021F 0070 F998"            /* ���./..���...p�� */
	$"0022 000A F6FF 02A5 9697 F998 0229 0079"            /* .".���.�����.).y */
	$"FA98 0440 0029 4D95 FA98 0387 0000 79FA"            /* ��.@.)M���.�..y� */
	$"9804 7500 0055 94F9 9802 7500 68F9 9802"            /* �.u..U���.u.h��. */
	$"6300 71F9 9803 1F00 1F8E F998 0100 32FB"            /* c.q��....���..2� */
	$"5F00 A2F6 FF04 CF90 989A 9AFC 9A04 6500"            /* _.���.ϐ�����.e. */
	$"1065 99FA 9A03 7700 005F F99A FF00 0159"            /* .e���.w.._���..Y */
	$"96FA 9A05 4300 C9FF 6F90 F99A 015E 83FA"            /* ���.C.��o���.^�� */
	$"9A04 9750 1F25 C9F7 FF01 C58D F99A 0166"            /* �.�P.%���.ō��.f */
	$"76F9 9A04 7A2B 1A5C 8DF9 9A01 1A29 F862"            /* v��.z+.\���..)�b */
	$"0113 42FD 9AFD 9A06 0013 6262 3401 90FA"            /* ..B����...bb4.�� */
	$"9A03 6500 1C96 FA9A 037D 0022 97FA 9A04"            /* �.e..���.}."���. */
	$"6500 1542 9BF9 9AFF 0000 52FA 9A06 8E00"            /* e..B����..R��.�. */
	$"00AE C58D 96FA 9A03 5500 1596 FA9A 0331"            /* .�ō���.U..���.1 */
	$"001E 8EF9 9A02 2100 72F9 9A01 250D F6FF"            /* ..���.!.r��.%.�� */
	$"03A8 9899 9AFA 9A02 2C00 7CFA 9A04 4300"            /* .������.,.|��.C. */
	$"2C4F 97FA 9A03 8A00 007C FA9A 0477 0000"            /* ,O���.�..|��.w.. */
	$"5896 F99A 0277 006B F99A 0265 0073 F99A"            /* X���.w.k��.e.s�� */
	$"0321 0021 90F9 9A01 0034 FB62 00A3 F6FF"            /* .!.!���..4�b.��� */
	$"02D3 9CA3 FAA4 036F 071C 6FFA A404 A484"            /* .Ӝ���.o..o��.�� */
	$"0707 6BF9 A4FF 0701 66A1 FAA4 054F 07CC"            /* ..k���..f���.O.� */
	$"FF7D 9CF9 A401 6C8F FAA4 04A2 5E2E 31CC"            /* �}���.l���.�^.1� */
	$"F7FF 01CA 9AF9 A401 7382 F9A4 0487 3B28"            /* ��.ʚ��.s���.�;( */
	$"6B9A F9A4 0125 34F8 6C01 1D4D F9A4 0607"            /* k���.%4�l..M��.. */
	$"1D6C 6C3F 0A9C FCA4 FFA4 036F 0729 A2FA"            /* .ll?����.o.)�� */
	$"A403 8A07 2CA2 FAA4 046F 0722 4EA6 F9A4"            /* �.�.,���.o."N��� */
	$"FF07 005E FAA4 069A 0707 B5CA 9AA1 FAA4"            /* �..^��.�..�ʚ��� */
	$"0363 0721 A1FA A403 3B07 2A9B F9A4 022E"            /* .c.!���.;.*���.. */
	$"0780 F9A4 012F 19F6 FF01 B0A3 F8A4 0239"            /* .���./.��.����.9 */
	$"078A FBA4 05A4 4F07 3E5D A2FA A403 9707"            /* .���.�O.>]���.�. */
	$"078A FAA4 0484 0707 64A1 F9A4 0284 0777"            /* .���.�..d���.�.w */
	$"F9A4 026F 0781 F9A4 032E 072E 9EF9 A401"            /* ��.o.���....���. */
	$"073F FB6C 00A8 0272 F6FF 01CF 8EF9 9504"            /* .?�l.�.r��.ώ��. */
	$"6100 0D63 96FA 9503 7200 008C F995 FF00"            /* a..c���.r..����. */
	$"0144 91FA 9505 3F00 C8FF 6B8E F995 010C"            /* .D���.?.��k���.. */
	$"3CF9 9503 8500 00AD F7FF 01C4 8BF9 9502"            /* <��.�..���.ċ��. */
	$"1F13 8CF9 9503 3F00 258B F995 0016 005F"            /* ..���.?.%���..._ */
	$"F8FF 012C 76F9 9505 002E FFFF 7A2C F995"            /* ��.,v��...��z,�� */
	$"0261 001A F995 0385 0020 92FA 9504 6100"            /* .a..��.�. ���.a. */
	$"123E 99F9 95FF 0000 75FA 9506 8A00 00AD"            /* .>����..u��.�..� */
	$"BD8B 91FA 9502 5200 42F9 9503 2E00 0087"            /* �����.R.B��....� */
	$"F995 021F 0075 F995 0021 0000 F6FF 01A5"            /* ��...u��.!..��.� */
	$"96F8 9502 1401 8FFA 9504 3F00 384D 94FA"            /* ���...���.?.8M�� */
	$"9503 8500 0D91 FA95 0472 0000 3194 F995"            /* �.�..���.r..1��� */
	$"0272 0077 F995 025C 0090 F995 031F 0000"            /* .r.w��.\.���.... */
	$"8EF9 9501 007A EFFF 01CF 90FE 97FC 9704"            /* ���..z��.ϐ����. */
	$"6300 1065 98FA 9703 7500 008F F997 FF00"            /* c..e���.u..����. */
	$"0146 94FA 9705 4200 C9FF 6E90 F997 010F"            /* .F���.B.��n���.. */
	$"3EF9 9703 8700 00AE F7FF 01C5 8DF9 9702"            /* >��.�..���.ō��. */
	$"2115 8EF9 9703 4200 278D F997 011A 62F8"            /* !.���.B.'���..b� */
	$"FF01 2F78 FD97 FD97 0500 30FF FF7B 30F9"            /* �./x����..0��{0� */
	$"9702 6300 1CF9 9703 8700 2295 FA97 0463"            /* �.c..��.�."���.c */
	$"0015 429B F997 FF00 0077 FA97 068C 0000"            /* ..B����..w��.�.. */
	$"AEBE 8D94 FA97 0254 0044 F997 0330 0002"            /* ������.T.D��.0.. */
	$"8AF9 9702 2100 77F9 9701 2400 F6FF 03A8"            /* ���.!.w��.$.��.� */
	$"9897 97FA 9702 1703 91FA 9704 4200 3B4F"            /* �����...���.B.;O */
	$"96FA 9703 8700 1094 FA97 0475 0000 3396"            /* ���.�..���.u..3� */
	$"F997 0275 0079 F997 025E 0092 F997 0321"            /* ��.u.y��.^.���.! */
	$"0002 90F9 9701 007C EFFF 01D3 9CF9 A204"            /* ..���..|��.Ӝ��. */
	$"6E07 1C6F A3FB A204 A282 0707 9BF9 A2FF"            /* n..o���.��..���� */
	$"0701 519F FAA2 054E 07CC FF7B 9CF9 A201"            /* ..Q���.N.��{���. */
	$"1B4C F9A2 0395 0707 B5F7 FF01 CA9A F9A2"            /* .L��.�..���.ʚ�� */
	$"022E 229A F9A2 034E 0733 9AF9 A201 256C"            /* .."���.N.3���.%l */
	$"F8FF 0139 85F9 A205 073A FFFF 833B FBA2"            /* ��.9���..:���;�� */
	$"FFA2 026E 0729 F9A2 0395 072C A0FA A204"            /* ��.n.)��.�.,���. */
	$"6E07 224E A6F9 A2FF 0700 83FA A206 9907"            /* n."N����..���.�. */
	$"07B5 C39A 9FFA A202 6207 4EF9 A203 3A07"            /* .�Ú���.b.N��.:. */
	$"0C98 F9A2 022E 0784 F9A2 012E 07F6 FF01"            /* .���...���...��. */
	$"B0A3 F8A2 0222 0D9E FBA2 05A2 4E07 4A5D"            /* ����.".���.�N.J] */
	$"A1FA A203 9507 1BA0 FAA2 0482 0707 3EA1"            /* ���.�..���.�..>� */
	$"F9A2 0282 0786 F9A2 0269 079F F9A2 032E"            /* ��.�.���.i.���.. */
	$"070C 9EF9 A201 0783 FAFF 0280 F6FF 02C4"            /* ..���..���.���.� */
	$"8D94 FA91 045E 000D 6395 FA91 0370 0000"            /* ����.^..c���.p.. */
	$"95F9 91FF 0001 448F FA91 053E 00C8 FF6B"            /* ����..D���.>.��k */
	$"8EF9 9102 0C2C 8DFA 9103 8300 00AD F7FF"            /* ���..,���.�..��� */
	$"01C4 8CF9 9102 1F08 7FF9 9103 3E00 058C"            /* .Č��....��.>..� */
	$"F991 0016 005F F8FF 014C 8EF9 9106 002E"            /* ��..._��.L���... */
	$"FFFF 7A64 94FA 9103 5E00 1A94 FA91 0383"            /* ��zd���.^..���.� */
	$"0020 90FA 9104 5E00 123E 99F9 91FF 0000"            /* . ���.^..>����.. */
	$"7AFA 9106 8600 00AD 9B8B 8FFA 9102 5100"            /* z��.�..������.Q. */
	$"4DF9 9103 2C00 007A F991 021F 007F F991"            /* M��.,..z��....�� */
	$"0021 0000 F6FF 02A5 9692 F991 0209 0A8E"            /* .!..��.�����.� */
	$"FA91 043E 0044 4D92 FA91 0383 0013 90FA"            /* ��.>.DM���.�..�� */
	$"9104 7000 002C 94F9 9102 7000 75F9 9102"            /* �.p..,���.p.u��. */
	$"5100 8FF9 9103 1F00 008E F991 0100 7AEF"            /* Q.���....���..z� */
	$"FF04 C58F 9794 94FC 9404 6200 1065 97FA"            /* �.ŏ�����.b..e�� */
	$"9403 7200 0097 F994 FF00 0146 91FA 9405"            /* �.r..����..F���. */
	$"4000 C9FF 6E90 F994 020F 3090 FA94 0385"            /* @.��n���..0���.� */
	$"0000 AEF7 FF01 C48E F994 0221 0A82 F994"            /* ..���.Ď��.!�� */
	$"0340 0008 8EF9 9401 1A62 F8FF 014E 90FD"            /* .@..���..b��.N�� */
	$"94FD 9406 0030 FFFF 7B67 96FA 9403 6200"            /* ���..0��{g���.b. */
	$"1C97 FA94 0385 0022 92FA 9404 6200 1542"            /* .���.�."���.b..B */
	$"9BF9 94FF 0000 7CFA 9406 8A00 00AE 9C8D"            /* ����..|��.�..��� */
	$"91FA 9402 5300 4FF9 9403 3000 007C F994"            /* ���.S.O��.0..|�� */
	$"0221 0081 F994 0124 00F6 FF03 A698 9594"            /* .!.���.$.��.���� */
	$"FA94 020B 0C91 FA94 0440 0047 4F96 FA94"            /* ��...���.@.GO��� */
	$"0385 0015 92FA 9404 7200 002F 96F9 9402"            /* .�..���.r../���. */
	$"7200 78F9 9402 5300 91F9 9403 2100 0090"            /* r.x��.S.���.!..� */
	$"F994 0100 7CEF FF02 CA9C A2FA A004 6C07"            /* ��..|��.ʜ���.l. */
	$"1C6F A2FB A004 A081 0707 A2F9 A0FF 0701"            /* .o���.��..����.. */
	$"519E FAA0 054E 07CC FF7B 9CF9 A002 1B3E"            /* Q���.N.��{���..> */
	$"9CFA A003 9407 07B5 F7FF 01CA 9BF9 A002"            /* ���.�..���.ʛ��. */
	$"2E15 90F9 A003 4E07 129B F9A0 0125 6CF8"            /* ..���.N..���.%l� */
	$"FF01 5B9E F9A0 0607 3AFF FF83 75A1 FCA0"            /* �.[���..:���u��� */
	$"FFA0 036C 0729 A2FA A003 9407 2C9F FAA0"            /* ��.l.)���.�.,��� */
	$"046C 0722 4EA6 F9A0 FF07 008A FAA0 0697"            /* .l."N����..���.� */
	$"0707 B5A1 9A9E FAA0 0261 0759 F9A0 0339"            /* ..������.a.Y��.9 */
	$"0707 8CF9 A002 2E07 8EF9 A001 2C07 F6FF"            /* ..���...���.,.�� */
	$"02AF A3A1 F9A0 0216 179C FBA0 05A0 4E07"            /* .�����...���.�N. */
	$"545D A1FA A003 9407 219F FAA0 0481 0707"            /* T]���.�.!���.�.. */
	$"39A1 F9A0 0281 0785 F9A0 0261 079E F9A0"            /* 9���.�.���.a.��� */
	$"032E 0707 9EF9 A001 0783 FAFF 027B F6FF"            /* ....���..���.{�� */
	$"02C4 8D92 FA8E 045C 000D 6394 FA8E 036E"            /* .č���.\..c���.n */
	$"0000 95F9 8EFF 0001 448D FA8E 043D 00C8"            /* ..����..D���.=.� */
	$"FF6B F88E 020C 2E8B FA8E 0381 0000 ADF7"            /* �k��...���.�..�� */
	$"FF01 C48C F98E 021F 087F F98E 033D 0000"            /* �.Č��....��.=.. */
	$"7AF9 8E00 1600 5FF8 FF00 8AF8 8E06 002E"            /* z��..._��.���... */
	$"FFFF 9590 92FA 8E03 5C00 1A92 FA8E 0281"            /* �������.\..���.� */
	$"0026 F98E 045C 0012 3E99 F98E FF00 007A"            /* .&��.\..>����..z */
	$"FA8E 0684 0000 AD96 8B8D FA8E 0250 0045"            /* ��.�..������.P.E */
	$"F98E 032B 0000 7AF9 8E02 1F00 86F9 8E00"            /* ��.+..z��...���. */
	$"2001 00D4 F7FF 02A4 9690 F98E 0209 198C"            /*  ..���.�����.�.� */
	$"FA8E 043D 0044 4D91 FA8E 0381 0013 8FFA"            /* ��.=.DM���.�..�� */
	$"8E04 6E00 002C 94F9 8E02 5C00 73F9 8E02"            /* �.n..,���.\.s��. */
	$"5000 7FF9 8E02 1F00 00F8 8E01 007A EFFF"            /* P..��....��..z�� */
	$"04C4 8F96 9191 FC91 045F 0010 6596 FA91"            /* .ď�����._..e��� */
	$"0371 0000 97F9 91FF 0001 468F FA91 053F"            /* .q..����..F���.? */
	$"00C9 FF6E 90F9 9102 0F30 8EFA 9103 8400"            /* .��n���..0���.�. */
	$"00AE F7FF 01C4 8EF9 9102 210A 82F9 9103"            /* .���.Ď��.!��. */
	$"3F00 007C F991 011A 62F8 FF01 8C90 FD91"            /* ?..|��..b��.���� */
	$"FD91 0600 30FF FF96 9295 FA91 035F 001C"            /* ��..0�������._.. */
	$"96FA 9103 8400 2990 FA91 045F 0015 429B"            /* ���.�.)���._..B� */
	$"F991 FF00 007C FA91 0687 0000 AE97 8D8F"            /* ���..|��.�..���� */
	$"FA91 0252 0047 F991 032F 0000 7CF9 9102"            /* ��.R.G��./..|��. */
	$"2100 8AF9 9102 2200 D4F7 FF03 A698 9491"            /* !.���.".���.���� */
	$"FA91 020B 1C8F FA91 043F 0047 4F95 FA91"            /* ��...���.?.GO��� */
	$"0284 0015 F991 0471 0000 2F96 F991 025F"            /* .�..��.q../���._ */
	$"0076 F991 0252 0081 F991 0321 0000 90F9"            /* .v��.R.���.!..�� */
	$"9101 007C EFFF 02CA 9CA1 FA9C 046B 071C"            /* �..|��.ʜ���.k.. */
	$"6FA1 FB9C 049C 7F07 07A2 F99C FF07 0151"            /* o���.�...����..Q */
	$"9BFA 9C04 4D07 CCFF 7BF8 9C02 1B3E 9AFA"            /* ���.M.��{��..>�� */
	$"9C03 9107 07B5 F7FF 01CA 9BF9 9C02 2E15"            /* �.�..���.ʛ��... */
	$"8FF9 9C03 4D07 078C F99C 0125 6CF8 FF00"            /* ���.M..���.%l��. */
	$"99F8 9C06 073A FFFF 9F9F A1FC 9CFF 9C03"            /* ���..:���������. */
	$"6B07 29A1 FA9C 0291 0733 F99C 046B 0722"            /* k.)���.�.3��.k." */
	$"4EA6 F99C FF07 008A FA9C 0695 0707 B599"            /* N����..���.�..�� */
	$"9A9B FA9C 025F 0752 F99C 0339 0707 8CF9"            /* ����._.R��.9..�� */
	$"9C02 2E07 97F9 9C02 2C07 D6F7 FF02 AFA3"            /* �...���.,.���.�� */
	$"9FF9 9C02 1629 9BFB 9C05 9C4D 0754 5DA0"            /* ���..)���.�M.T]� */
	$"FA9C 0391 0721 9EFA 9C04 7F07 0739 A1F9"            /* ��.�.!���....9�� */
	$"9C02 6B07 84F9 9C02 5F07 8FF9 9C03 2E07"            /* �.k.���._.���... */
	$"079E F99C 0107 83FA FF02 7AF6 FF02 C48D"            /* .���..���.z��.č */
	$"8EFA 8B04 5B00 0D63 92FA 8B03 6C00 0095"            /* ���.[..c���.l..� */
	$"F98B FF00 0044 F98B 053C 00C8 FF6B 8EF9"            /* ���..D��.<.��k�� */
	$"8B02 0C2E 8AFA 8B03 7F00 00B8 F7FF 01C3"            /* �...���....���.� */
	$"8CF9 8B02 1F08 7DF9 8B03 3C00 007A F98B"            /* ���...}��.<..z�� */
	$"0016 005F F8FF 019E 8EF9 8B06 002E FFFF"            /* ..._��.����...�� */
	$"9F90 91FA 8B03 6100 1A92 FA8B 037F 002B"            /* �����.a..���...+ */
	$"8CFA 8B04 5B00 083E 99F9 8BFF 0000 7AFA"            /* ���.[..>����..z� */
	$"8B04 8200 00AD 96F8 8B02 4F00 44F9 8B03"            /* �.�..����.O.D��. */
	$"2B00 007A F98B 021F 0091 F98B 001F 0100"            /* +..z��...���.... */
	$"C8F7 FF02 A496 8EF9 8B02 000A 0FFA 0C04"            /* ���.�����..�.�.. */
	$"0200 444D 91FA 8B03 7F00 138E FA8B 046C"            /* ..DM���....���.l */
	$"0000 2C94 F98B 025B 0072 F98B 024F 007B"            /* ..,���.[.r��.O.{ */
	$"F98B 031F 0000 8EF9 8B01 007A EFFF 04C4"            /* ��....���..z��.� */
	$"8F90 8E8E FC8E 045D 0010 6595 FA8E 036F"            /* ������.]..e���.o */
	$"0000 97F9 8EFF 0001 468D FA8E 053E 00C9"            /* ..����..F���.>.� */
	$"FF6E 90F9 8E02 0F31 8CFA 8E03 8200 00B9"            /* �n���..1���.�..� */
	$"F7FF 00C4 F88E 0221 0A81 F98E 033E 0000"            /* ��.���.!��.>.. */
	$"7CF9 8E01 1A62 F8FF 01A0 90FD 8EFD 8E06"            /* |��..b��.������. */
	$"0030 FFFF A192 94FA 8E03 6300 1C95 FA8E"            /* .0�������.c..��� */
	$"0282 002F F98E 045D 000A 429B F98E FF00"            /* .�./��.].�B����. */
	$"007C FA8E 0685 0000 AE97 8D8D FA8E 0251"            /* .|��.�..������.Q */
	$"0046 F98E 032E 0000 7CF9 8E02 2100 94F9"            /* .F��....|��.!.�� */
	$"8E02 2100 C9F7 FF03 A698 918E FA8E 0200"            /* �.!.���.������.. */
	$"0C12 FA0F 0406 0047 4F94 FA8E 0382 0015"            /* ..�....GO���.�.. */
	$"90FA 8E04 6F00 002F 96F9 8E02 5D00 75F9"            /* ���.o../���.].u� */
	$"8E02 5100 7FF9 8E03 2100 0090 F98E 0100"            /* �.Q..��.!..���.. */
	$"7CEF FF02 CA9C 9CFA 9A04 6807 1C6F A0FB"            /* |��.ʜ���.h..o�� */
	$"9A04 9A7C 0707 A2F9 9AFF 0700 51F9 9A05"            /* �.�|..����..Q��. */
	$"4C07 CCFF 7B9C F99A 021B 3E99 FA9A 0390"            /* L.��{���..>���.� */
	$"0707 BFF7 FF01 C99B F99A 022E 158F F99A"            /* ..���.ɛ��...��� */
	$"034C 0707 8CF9 9A01 256C F8FF 01AA 9CF9"            /* .L..���.%l��.��� */
	$"9A06 073A FFFF AB9F A0FC 9AFF 9A03 6F07"            /* �..:���������.o. */
	$"29A0 FA9A 0290 073A F99A 0468 0715 4EA6"            /* )���.�.:��.h..N� */
	$"F99A FF07 008A FA9A 0492 0707 B599 F89A"            /* ���..���.�..���� */
	$"025E 0750 F99A 0338 0707 8CF9 9A02 2E07"            /* .^.P��.8..���... */
	$"9FF9 9A02 2B07 CCF7 FF02 AFA3 9CF9 9A02"            /* ���.+.���.�����. */
	$"0817 1EFB 1B05 1B10 0754 5D9F FA9A 0390"            /* ...�.....T]���.� */
	$"0721 9CFA 9A04 7C07 0739 A1F9 9A02 6807"            /* .!���.|..9���.h. */
	$"82F9 9A02 5E07 8DF9 9A03 2E07 079E F99A"            /* ���.^.���....��� */
	$"0107 83FA FF02 76F6 FF02 C48C 8AFA 8804"            /* ..���.v��.Č���. */
	$"5900 0063 91FA 8803 6900 0095 F988 FF00"            /* Y..c���.i..����. */
	$"0044 F988 053B 00C8 FF6B 8EF9 8802 0C2E"            /* .D��.;.��k���... */
	$"87FA 8803 7C00 00C8 F7FF 01C3 8BF9 8802"            /* ���.|..���.Ë��. */
	$"1F08 7FF9 8803 3B00 007A F988 0016 005F"            /* ...��.;..z��..._ */
	$"F8FF 019E 8EF9 8806 002E FFFF A090 90FA"            /* ��.����...������ */
	$"8803 6900 1A91 FA88 037C 002B 8CFA 8804"            /* �.i..���.|.+���. */
	$"5900 003E 99F9 88FF 0000 7AFA 8805 8000"            /* Y..>����..z��.�. */
	$"00AD 968B F988 024E 0044 F988 032A 0000"            /* .�����.N.D��.*.. */
	$"7AF9 8802 1F08 90F9 8800 1F01 00C8 F7FF"            /* z��...���....��� */
	$"02A3 958D F988 0100 0FF7 C802 734D 90FA"            /* .�����...��.sM�� */
	$"8803 7C00 138D FA88 0469 0000 2C94 F988"            /* �.|..���.i..,��� */
	$"0259 0073 F988 024E 007A F988 031F 0000"            /* .Y.s��.N.z��.... */
	$"8EF9 8801 007A EFFF 04C4 8E8C 8B8B FC8B"            /* ���..z��.Ď����� */
	$"045B 0000 6594 FA8B 036D 0000 97F9 8BFF"            /* .[..e���.m..���� */
	$"0000 46F9 8B05 3D00 C9FF 6E90 F98B 020F"            /* ..F��.=.��n���.. */
	$"318A FA8B 0380 0000 C9F7 FF01 C48D F98B"            /* 1���.�..���.č�� */
	$"0221 0A82 F98B 033D 0000 7CF9 8B01 1A62"            /* .!��.=..|��..b */
	$"F8FF 019F 90FD 8BFD 8B06 0030 FFFF A192"            /* ��.������..0���� */
	$"92FA 8B03 6D00 1D94 FA8B 0380 002F 8EFA"            /* ���.m..���.�./�� */
	$"8B04 5B00 0042 9BF9 8BFF 0000 7CFA 8B05"            /* �.[..B����..|��. */
	$"8300 00AE 978D F98B 0250 0046 F98B 032C"            /* �..�����.P.F��., */
	$"0000 7CF9 8B02 210B 92F9 8B02 2100 C9F7"            /* ..|��.!.���.!.�� */
	$"FF03 A597 8F8B FA8B 0100 12F7 C902 754F"            /* �.������...��.uO */
	$"92FA 8B03 8000 158F FA8B 046D 0000 2F96"            /* ���.�..���.m../� */
	$"F98B 025B 0077 F98B 0250 007D F98B 0321"            /* ��.[.w��.P.}��.! */
	$"0000 90F9 8B01 007C EFFF 02CA 9B99 FA97"            /* ..���..|��.ʛ��� */
	$"0466 0709 6FA0 FB97 0497 7B07 07A2 F997"            /* .f.�o���.�{..��� */
	$"FF07 0151 98FA 9705 4A07 CCFF 7B9C F997"            /* �..Q���.J.��{��� */
	$"011B 3EF9 9703 8E07 07CC F7FF 01C9 9AF9"            /* ..>��.�..���.ɚ� */
	$"9702 2E15 90F9 9703 4A07 078C F997 0125"            /* �...���.J..���.% */
	$"6CF8 FF01 AA9C F997 0607 3AFF FFAB 9F9F"            /* l��.����..:����� */
	$"FC97 FF97 037B 0729 9FFA 9703 8E07 3A9A"            /* ����.{.)���.�.:� */
	$"FA97 0466 0707 4EA6 F997 FF07 008A FA97"            /* ��.f..N����..��� */
	$"0690 0707 B599 9A98 FA97 025E 0751 F997"            /* .�..������.^.Q�� */
	$"0336 0707 8CF9 9702 2E16 9EF9 9702 2B07"            /* .6..���...���.+. */
	$"CCF7 FF02 AEA2 9BF9 9701 071F FACC FECC"            /* ���.�����...���� */
	$"027D 5D9E FA97 038E 0721 9BFA 9704 7B07"            /* .}]���.�.!���.{. */
	$"0739 A1F9 9702 6607 84F9 9702 5E07 8DF9"            /* .9���.f.���.^.�� */
	$"9703 2E07 079E F997 0107 83FA FF02 79F6"            /* �....���..���.y� */
	$"FF02 C38C 87FA 8504 5700 0063 90FA 8503"            /* �.Ì���.W..c���. */
	$"6700 0095 F985 FF00 0144 86FA 8505 3A00"            /* g..����..D���.:. */
	$"C8FF 6B8E F985 020C 2F84 FA85 037A 0000"            /* ��k���../���.z.. */
	$"C8F7 FF01 C38B F985 021F 0083 F985 033A"            /* ���.Ë��...���.: */
	$"0000 7AF9 8500 1600 5FF8 FF01 9C8E F985"            /* ..z��..._��.���� */
	$"0600 2EFF FF9F 908F FA85 0367 002A 8BF9"            /* ...�������.g.*�� */
	$"8502 002B 8AFA 8504 5700 003E 99F9 85FF"            /* �..+���.W..>���� */
	$"0000 7AFA 8506 7D00 00AD 968B 86FA 8502"            /* ..z��.}..������. */
	$"4D00 46F9 8503 2900 007A F985 0220 4F87"            /* M.F��.)..z��. O� */
	$"F985 001E 0100 B3F7 FF02 A295 8BFA 8502"            /* ��....���.�����. */
	$"8100 12F7 FF02 7A50 8FFA 8503 7A00 138C"            /* �..��.zP���.z..� */
	$"FA85 0467 0000 2C94 F985 0257 0075 F985"            /* ��.g..,���.W.u�� */
	$"024D 0078 F985 031F 0000 8EF9 8501 007A"            /* .M.x��....���..z */
	$"EFFF 04C4 8E8B 8787 FC87 0459 0000 6592"            /* ��.Ď�����.Y..e� */
	$"FA87 036B 0000 97F9 87FF 0001 468A FA87"            /* ��.k..����..F��� */
	$"053D 00C9 FF6D 90F9 8701 0F31 F987 037D"            /* .=.��m���..1��.} */
	$"0000 C9F7 FF01 C48D F987 0221 0386 F987"            /* ..���.č��.!.��� */
	$"033D 0000 7CF9 8701 1A62 F8FF 019F 90FD"            /* .=..|��..b��.��� */
	$"87FD 8706 0030 FFFF A192 92FA 8703 6B00"            /* ���..0�������.k. */
	$"2C8D F987 0200 2F8D FA87 0459 0000 429B"            /* ,���../���.Y..B� */
	$"F987 FF00 007C FA87 0681 0000 AE97 8D8A"            /* ���..|��.�..���� */
	$"FA87 0250 0048 F987 032B 0000 7CF9 8702"            /* ��.P.H��.+..|��. */
	$"2452 8BF9 8702 2000 B4F7 FF03 A497 8D87"            /* $R���. .���.���� */
	$"FB87 0283 0015 F7FF 027B 5291 FA87 037D"            /* ��.�..��.{R���.} */
	$"0015 8EFA 8704 6B00 002F 96F9 8702 5900"            /* ..���.k../���.Y. */
	$"78F9 8702 5000 7BF9 8703 2100 0090 F987"            /* x��.P.{��.!..��� */
	$"0100 7CEF FF02 C99B 97FA 9504 6507 076F"            /* ..|��.ɛ���.e..o */
	$"9FFB 9504 9579 0707 A2F9 95FF 0701 5196"            /* ���.�y..����..Q� */
	$"FA95 0549 07CC FF7B 9CF9 9501 1B3F F995"            /* ��.I.��{���..?�� */
	$"038C 0707 CCF7 FF01 C99A F995 022E 0D94"            /* .�..���.ɚ��...� */
	$"F995 0349 0707 8CF9 9501 256C F8FF 01A9"            /* ��.I..���.%l��.� */
	$"9CF9 9506 073A FFFF AB9F 9EFC 95FF 9503"            /* ���..:���������. */
	$"7907 3699 F995 0207 3A99 FA95 0465 0707"            /* y.6���..:���.e.. */
	$"4EA6 F995 FF07 008A FA95 068F 0707 B599"            /* N����..���.�..�� */
	$"9A96 FA95 025D 0752 F995 0335 0707 8CF9"            /* ����.].R��.5..�� */
	$"9502 305F 97F9 9502 2A07 B9F7 FF02 ADA2"            /* �.0_���.*.���.�� */
	$"99FA 9502 9107 22FA FFFE FF02 8361 9CFA"            /* ���.�."����.�a�� */
	$"9503 8C07 219A FA95 0479 0707 39A1 F995"            /* �.�.!���.y..9��� */
	$"0265 0785 F995 025D 078B F995 032E 0707"            /* .e.���.].���.... */
	$"9EF9 9501 0783 FAFF 0278 F6FF 02BD 8C85"            /* ���..���.x��.��� */
	$"FA82 0454 0000 638F FA82 0365 0000 95F9"            /* ��.T..c���.e..�� */
	$"82FF 0001 4484 FA82 0539 00C8 FF6B 8EF9"            /* ��..D���.9.��k�� */
	$"8202 0C2E 80FA 8203 7800 00C8 F7FF 01C3"            /* �...���.x..���.� */
	$"8BF9 8202 1F00 84F9 8203 3900 007A F982"            /* ���...���.9..z�� */
	$"0016 005F F8FF 019C 8EF9 8206 002E FFFF"            /* ..._��.����...�� */
	$"9F90 8EFA 8203 6500 2C85 F982 0200 2B87"            /* �����.e.,���..+� */
	$"FA82 0454 0000 3E99 F982 FF00 007A FA82"            /* ��.T..>����..z�� */
	$"067B 0000 AD96 8B84 FA82 024C 004C F982"            /* .{..������.L.L�� */
	$"0328 0000 7AF9 8200 75F8 8201 8315 0100"            /* .(..z��.u��.�... */
	$"ADF7 FF02 A195 88FA 8202 7800 27F7 FF02"            /* ���.�����.x.'��. */
	$"9185 8EFA 8203 7800 138B FA82 0465 0000"            /* �����.x..���.e.. */
	$"2C94 F982 0254 0073 F982 0239 0076 F982"            /* ,���.T.s��.9.v�� */
	$"031F 0000 8EF9 8201 007A EFFF 04BE 8E88"            /* ....���..z��.��� */
	$"8585 FC85 0458 0000 6591 FA85 0368 0000"            /* ����.X..e���.h.. */
	$"97F9 85FF 0001 4687 FA85 053C 00C9 FF6D"            /* ����..F���.<.��m */
	$"90F9 8502 0F31 83FA 8503 7B00 00C9 F7FF"            /* ���..1���.{..��� */
	$"01C3 8DF9 8502 2100 86F9 8503 3C00 007C"            /* .Í��.!.���.<..| */
	$"F985 011A 62F8 FF01 9F90 FD85 FD85 0600"            /* ��..b��.������.. */
	$"30FF FFA0 9291 FA85 0368 002F 88F9 8502"            /* 0�������.h./���. */
	$"002F 8BFA 8504 5800 0042 9BF9 85FF 0000"            /* ./���.X..B����.. */
	$"7CFA 8506 7F00 00AE 978D 87FA 8502 4F00"            /* |��....������.O. */
	$"4EF9 8503 2A00 007C F985 0077 F885 0386"            /* N��.*..|��.w��.� */
	$"1700 AEF7 FF03 A397 8B85 FB85 027B 0029"            /* ..���.������.{.) */
	$"F7FF 0292 8790 FA85 037B 0015 8DFA 8504"            /* ��.�����.{..���. */
	$"6800 002F 96F9 8502 5800 77F9 8502 3C00"            /* h../���.X.w��.<. */
	$"79F9 8503 2100 0090 F985 0100 7CEF FF02"            /* y��.!..���..|��. */
	$"C29B 95FA 9104 6307 076F 9EFB 9104 9177"            /* ���.c..o���.�w */
	$"0707 A2F9 91FF 0701 5195 FA91 0549 07CC"            /* ..����..Q���.I.� */
	$"FF7B 9CF9 9102 1B3E 90FA 9103 8B07 07CC"            /* �{���..>���.�..� */
	$"F7FF 01C9 9AF9 9102 2E07 95F9 9103 4907"            /* ��.ɚ��...���.I. */
	$"078C F991 0125 6CF8 FF01 A99C F991 0607"            /* .���.%l��.����.. */
	$"3AFF FFAA 9F9C FC91 FF91 0377 0739 95F9"            /* :���������.w.9�� */
	$"9102 073A 97FA 9104 6307 074E A6F9 91FF"            /* �..:���.c..N���� */
	$"0700 8AFA 9106 8D07 07B5 999A 95FA 9102"            /* ..���.�..������. */
	$"5C07 57F9 9103 3407 078C F991 0084 F891"            /* \.W��.4..���.��� */
	$"0394 2107 B5F7 FF02 ACA2 97FA 9102 8B07"            /* .�!.���.�����.�. */
	$"34FA FFFE FF02 9795 9CFA 9103 8B07 2199"            /* 4����.�����.�.!� */
	$"FA91 0477 0707 39A1 F991 0263 0784 F991"            /* ��.w..9���.c.��� */
	$"0249 0788 F991 032E 0707 9EF9 9101 0783"            /* .I.���....���..� */
	$"FAFF 0274 F6FF 02B8 8D83 FA7F 0452 0000"            /* ��.t��.����..R.. */
	$"638E FA7F 0363 0000 95F9 7FFF 0001 4482"            /* c��..c..��.�..D� */
	$"FA7F 0538 00C8 FF6B 8EF9 7F02 0C26 7DFA"            /* �..8.��k��...&}� */
	$"7F03 7600 00C8 F7FF 01C2 8BF9 7F02 1F00"            /* ..v..���.�.... */
	$"85F9 7F03 3800 007A F97F 0016 005F F8FF"            /* ��..8..z�...._�� */
	$"019C 8EF9 7F06 002E FFFF 9E8F 8EFA 7F03"            /* .���....������.. */
	$"6300 2C83 F97F 0200 2B85 FA7F 0452 0000"            /* c.,��...+��..R.. */
	$"3E99 F97F FF00 007A FA7F 0679 0000 AD96"            /* >��.�..z�..y..�� */
	$"8B82 FA7F 034A 0049 84FA 7F03 2700 007A"            /* ���..J.I��..'..z */
	$"F17F 0373 3F0D 0A01 6ED6 F7FF 029C 9586"            /* �..s?.�.n���.��� */
	$"FA7F 026D 002E F7FF 02BF 8F8D FA7F 0376"            /* �..m..��.����..v */
	$"0013 8AFA 7F04 6300 002C 94F9 7F02 4E00"            /* ..��..c..,��..N. */
	$"73F9 7F02 3800 75F9 7F03 1F00 008E F97F"            /* s�..8.u�.....��. */
	$"0100 7AEF FF04 B98F 8682 82FC 8204 5500"            /* ..z��.�������.U. */
	$"0065 91FA 8203 6600 0097 F982 FF00 0146"            /* .e���.f..����..F */
	$"85FA 8205 3B00 C9FF 6D90 F982 020F 2881"            /* ���.;.��m���..(� */
	$"FA82 0379 0000 C9F7 FF01 C38D F982 0221"            /* ��.y..���.Í��.! */
	$"0087 F982 033B 0000 7CF9 8201 1A62 F8FF"            /* .���.;..|��..b�� */
	$"019F 90FD 82FD 8206 0030 FFFF A091 90FA"            /* .������..0������ */
	$"8203 6600 2F86 F982 0200 2F88 FA82 0455"            /* �.f./���../���.U */
	$"0000 429B F982 FF00 007C FA82 067C 0000"            /* ..B����..|��.|.. */
	$"AE97 8D85 FA82 034E 004C 87FA 8203 2900"            /* ������.N.L���.). */
	$"007C F182 0577 4311 0C6F D6F7 FF03 9F97"            /* .|�.wC..o���.�� */
	$"8882 FB82 0270 0030 F7FF 02C1 918F FA82"            /* ����.p.0��.����� */
	$"0379 0015 8CFA 8204 6600 002F 96F9 8202"            /* .y..���.f../���. */
	$"5100 76F9 8202 3B00 78F9 8203 2100 0090"            /* Q.v��.;.x��.!..� */
	$"F982 0100 7CEF FF02 C09B 94FA 8F04 6207"            /* ��..|��.�����.b. */
	$"076F 9CFB 8F04 8F76 0707 A2F9 8FFF 0701"            /* .o���.�v..����.. */
	$"5192 FA8F 0548 07CC FF7B 9CF9 8F01 1B34"            /* Q���.H.��{���..4 */
	$"F98F 0388 0707 CCF7 FF01 C89A F98F 022E"            /* ��.�..���.Ț��.. */
	$"0796 F98F 0348 0707 8CF9 8F01 256C F8FF"            /* .���.H..���.%l�� */
	$"01A9 9CF9 8F06 073A FFFF AA9E 9CFC 8FFF"            /* .����..:�������� */
	$"8F03 7607 3994 F98F 0207 3A96 FA8F 0462"            /* �.v.9���..:���.b */
	$"0707 4EA6 F98F FF07 008A FA8F 068B 0707"            /* ..N����..���.�.. */
	$"B599 9A92 FA8F 035B 0755 94FA 8F03 3407"            /* ������.[.U���.4. */
	$"078C F18F 0584 4F1B 1577 D8F7 FF02 A9A2"            /* .��.�O..w���.�� */
	$"96FA 8F02 7F07 3AFA FFFE FF02 C59E 9BFA"            /* ���...:����.Ş�� */
	$"8F03 8807 2198 FA8F 0476 0707 39A1 F98F"            /* �.�.!���.v..9��� */
	$"025E 0783 F98F 0248 0787 F98F 032E 0707"            /* .^.���.H.���.... */
	$"9EF9 8F01 0783 FAFF 0293 F6FF 02B8 8D82"            /* ���..���.���.��� */
	$"FA7A 0450 0000 638D FA7A 0361 0000 95F9"            /* �z.P..c��z.a..�� */
	$"7AFF 0001 4480 FA7A 0536 00C8 FF69 8EF9"            /* z�..D��z.6.��i�� */
	$"7A02 0C26 7BFA 7A03 7300 00D1 F7FF 01C2"            /* z..&{�z.s..���.� */
	$"8AF9 7A02 1F00 85F9 7A02 3600 00F8 7A00"            /* ��z...��z.6..�z. */
	$"160B 1F50 647C 8585 7B7A FFFF 9B8E F97A"            /* ...Pd|��{z�����z */
	$"0600 2EFF FF84 8E8C FA7A 0367 002C 81F9"            /* ...������z.g.,�� */
	$"7A02 002B 83FA 7A04 5000 003E 99F9 7AFF"            /* z..+��z.P..>��z� */
	$"00F9 7A06 7600 00AD 968A 80FA 7A03 4900"            /* .�z.v..�����z.I. */
	$"4685 FA7A 0226 0000 F27A 0576 3F00 003B"            /* F��z.&..�z.v?..; */
	$"C9F5 FF02 9295 83FA 7A02 6100 2EF7 FF02"            /* ���.����z.a..��. */
	$"C38E 8CFA 7A03 7300 1287 FA7A 0461 0000"            /* Î��z.s..��z.a.. */
	$"2C94 F97A 0249 0072 F97A 0236 0073 F97A"            /* ,��z.I.r�z.6.s�z */
	$"031F 0000 8EF9 7A08 0027 5469 7D85 8576"            /* ....��z..'Ti}��v */
	$"92F6 FF04 B98F 847D 7DFC 7D04 5200 0065"            /* ���.���}}�}.R..e */
	$"8FFA 7D03 6400 0097 F97D FF00 0146 82FA"            /* ��}.d..��}�..F�� */
	$"7D05 3900 C9FF 6D90 F97D 020F 287F FA7D"            /* }.9.��m��}..(.�} */
	$"0377 0000 D2F7 FF01 C38C F97D 0221 0087"            /* .w..���.Ì�}.!.� */
	$"F97D 0339 0000 7CF9 7D0C 1A21 5267 7F87"            /* �}.9..|�}..!Rg.� */
	$"877D 7BFF FF9E 90FD 7DFD 7D06 0030 FFFF"            /* �}{�����}�}..0�� */
	$"8690 8EFA 7D03 6900 2F83 F97D 0200 2F85"            /* ����}.i./��}../� */
	$"FA7D 0452 0000 429B F97D FF00 007C FA7D"            /* �}.R..B��}�..|�} */
	$"0679 0000 AE97 8C82 FA7D 034C 0048 88FA"            /* .y..�����}.L.H�� */
	$"7D03 2800 007C F37D 0579 4301 003D C9F5"            /* }.(..|�}.yC..=�� */
	$"FF03 9597 867D FB7D 0264 0030 F7FF 02C3"            /* �.���}�}.d.0��.� */
	$"908E FA7D 0377 0015 8AFA 7D04 6400 002F"            /* ���}.w..��}.d../ */
	$"96F9 7D02 4C00 75F9 7D02 3900 76F9 7D03"            /* ��}.L.u�}.9.v�}. */
	$"2100 0090 F97D 0800 2A57 6C80 8787 7892"            /* !..��}..*Wl���x� */
	$"F6FF 02BF 9B92 FA8C 045E 0707 6F9B FB8C"            /* ��.�����.^..o��� */
	$"048C 7307 07A2 F98C FF07 0151 90FA 8C05"            /* .�s..����..Q���. */
	$"4707 CCFF 7A9C F98C 021B 348D FA8C 0386"            /* G.��z���..4���.� */
	$"0707 D4F7 FF01 C89A F98C 022E 0796 F98C"            /* ..���.Ț��...��� */
	$"0247 0707 F88C 0C25 2F61 778E 9596 8B85"            /* .G..��.%/aw����� */
	$"FFFF A99C F98C 0607 3AFF FF90 9C9A FC8C"            /* ������..:������� */
	$"FF8C 037A 0739 91F9 8C02 073A 92FA 8C04"            /* ��.z.9���..:���. */
	$"5E07 074E A6F9 8CFF 0700 8AFA 8C06 8807"            /* ^..N����..���.�. */
	$"07B5 9999 90FA 8C03 5A07 5295 FA8C 0232"            /* .������.Z.R���.2 */
	$"0707 F28C 0588 4F0B 0747 CBF5 FF02 A0A2"            /* ..�.�O..G���.�� */
	$"94FA 8C02 7307 3AFA FFFE FF02 C99C 9AFA"            /* ���.s.:����.ɜ�� */
	$"8C03 8607 2097 FA8C 0473 0707 39A1 F98C"            /* �.�. ���.s..9��� */
	$"025A 0782 F98C 0247 0786 F98C 032E 0707"            /* .Z.���.G.���.... */
	$"9EF9 8C08 0738 657C 8F95 9685 9802 82F6"            /* ���..8e|�����.�� */
	$"FF02 B88C 81FA 7804 4E00 0063 8CFA 7803"            /* �.����x.N..c��x. */
	$"5E00 0095 F978 FF00 0144 7DFA 7805 3500"            /* ^..��x�..D}�x.5. */
	$"C8FF 698E F978 020C 267A FA78 0271 0000"            /* ��i��x..&z�x.q.. */
	$"F6FF 01C2 8AF9 7802 1F00 82F9 7803 3500"            /* ��.�x...��x.5. */
	$"007A F978 0073 FB7A 050F 47FF FF9B 8EF9"            /* .z�x.s�z..G����� */
	$"7806 002E FFFF 848D 8BFA 7803 7100 2C7F"            /* x...������x.q.,. */
	$"F978 0200 2B84 FA78 044E 0000 3E99 F978"            /* �x..+��x.N..>��x */
	$"FF00 007A FA78 0673 0000 AD96 887D FA78"            /* �..z�x.s..���}�x */
	$"0348 0046 83FA 7803 2500 007A F478 0657"            /* .H.F��x.%..z�x.W */
	$"0B00 1CA0 FFFF F5FF 0291 9582 FA78 0257"            /* ...�����.����x.W */
	$"002E F7FF 02C2 8D8B FA78 0371 0012 85FA"            /* ..��.��x.q..�� */
	$"7804 5E00 0C2C 94F9 7802 4800 6DF9 7802"            /* x.^..,��x.H.m�x. */
	$"3500 72F9 7803 1F00 008E F978 0071 FB7A"            /* 5.r�x....��x.q�z */
	$"0100 70F6 FF04 B98E 847B 7BFC 7B04 5100"            /* ..p��.���{{�{.Q. */
	$"0065 8EFA 7B03 6200 0097 F97B FF00 0146"            /* .e��{.b..��{�..F */
	$"81FA 7B05 3900 C9FF 6C90 F97B 020F 297D"            /* ��{.9.��l��{..)} */
	$"FA7B 0275 0000 F6FF 01C3 8CF9 7B02 2100"            /* �{.u..��.Ì�{.!. */
	$"85F9 7B03 3900 007C F97B 0077 FB7D 0511"            /* ��{.9..|�{.w�}.. */
	$"49FF FF9C 90FD 7BFD 7B06 0030 FFFF 858F"            /* I�����{�{..0���� */
	$"8EFA 7B03 7500 2F82 F97B 0200 2F86 FA7B"            /* ��{.u./��{../��{ */
	$"0451 0000 429B F97B FF00 007C FA7B 0677"            /* .Q..B��{�..|�{.w */
	$"0000 AE97 8B81 FA7B 034C 0048 85FA 7B03"            /* ..�����{.L.H��{. */
	$"2700 007C F47B 045A 0D00 1EA0 F3FF 0394"            /* '..|�{.Z...���.� */
	$"9784 7BFB 7B02 5A00 30F7 FF02 C38F 8DFA"            /* ��{�{.Z.0��.Ï�� */
	$"7B03 7500 1488 FA7B 0462 0010 2F96 F97B"            /* {.u..��{.b../��{ */
	$"024C 0070 F97B 0239 0076 F97B 0321 0000"            /* .L.p�{.9.v�{.!.. */
	$"90F9 7B00 75FB 7D01 0071 F6FF 02BF 9B91"            /* ��{.u�}..q��.��� */
	$"FA88 045D 0707 6F9A FB88 0488 7107 07A2"            /* ��.]..o���.�q..� */
	$"F988 FF07 0151 8EFA 8805 4607 CCFF 7A9C"            /* ���..Q���.F.��z� */
	$"F988 021B 348B FA88 0284 0707 F6FF 01C8"            /* ��..4���.�..��.� */
	$"99F9 8802 2E07 92F9 8803 4607 078C F988"            /* ���...���.F..��� */
	$"0086 FB8C 051E 53FF FFA8 9CF9 8806 073A"            /* .���..S������..: */
	$"FFFF 8F9B 9AFC 88FF 8803 8407 398F F988"            /* ���������.�.9��� */
	$"0207 3A94 FA88 045D 0707 4EA6 F988 FF07"            /* ..:���.]..N����. */
	$"008A FA88 0686 0707 B599 998E FA88 0359"            /* .���.�..������.Y */
	$"0753 92FA 8803 3207 078C F488 0467 1707"            /* .S���.2..��.g.. */
	$"28A5 F3FF 029F A291 FA88 0268 073A FAFF"            /* (���.�����.h.:�� */
	$"FEFF 02C8 9C99 FA88 0384 0720 96FA 8804"            /* ��.Ȝ���.�. ���. */
	$"7107 1C39 A1F9 8802 5907 7CF9 8802 4607"            /* q..9���.Y.|��.F. */
	$"85F9 8803 2E07 079E F988 0084 FB8C 0109"            /* ���....���.���.� */
	$"7602 7FF6 FF02 B78C 7FFA 7504 4C00 0062"            /* v..��.��.�u.L..b */
	$"8BFA 7503 5C00 0095 F975 FF00 0144 7BFA"            /* ��u.\..��u�..D{� */
	$"7505 3400 C8FF 698E F975 020C 2781 FA75"            /* u.4.��i��u..'��u */
	$"026F 0000 F6FF 01C1 8AF9 7502 1F00 83F9"            /* .o..��.���u...�� */
	$"7503 3400 007A F875 FB75 050C 47FF FF9A"            /* u.4..z�u�u..G��� */
	$"8EF9 7506 002E FFFF 888C 8AFA 7503 6F00"            /* ��u...������u.o. */
	$"2C7F F975 020C 2B82 FA75 044C 0000 3E99"            /* ,.�u..+��u.L..>� */
	$"F975 FF00 007A FA75 0671 0000 AD96 887B"            /* �u�..z�u.q..���{ */
	$"FA75 035C 4F7F 79FA 7503 2400 007A F575"            /* �u.\O.y�u.$..z�u */
	$"0446 0008 6DDD FEFF F5FF 028F 9580 FA75"            /* .F..m�����.����u */
	$"084C 0016 7D8F A4AB ACAC FEAD 03A3 AB8D"            /* .L..}�������.��� */
	$"8AFA 7503 6F00 0884 FA75 045C 0014 2C94"            /* ��u.o..��u.\..,� */
	$"F975 0247 0063 F975 0234 007A F975 031F"            /* �u.G.c�u.4.z�u.. */
	$"0000 8EF2 7501 0070 F6FF 04B8 8E82 7878"            /* ..��u..p��.���xx */
	$"FC78 044F 0000 648D FA78 035F 0000 97F9"            /* �x.O..d��x._..�� */
	$"78FF 0001 467F FA78 0538 00C9 FF6C 90F9"            /* x�..F.�x.8.��l�� */
	$"7802 0F29 83FA 7802 7200 00F6 FF01 C28C"            /* x..)��x.r..��. */
	$"F978 0221 0085 F978 0338 0000 7CF2 7805"            /* �x.!.��x.8..|�x. */
	$"0F49 FFFF 9C90 FD78 FD78 0600 30FF FF8B"            /* .I�����x�x..0��� */
	$"8E8D FA78 0372 002F 81F9 7802 0F2F 84FA"            /* ���x.r./��x../�� */
	$"7804 4F00 0040 9BF9 78FF 0000 7CFA 7806"            /* x.O..@��x�..|�x. */
	$"7500 00AE 978B 7FFA 7803 5E52 827B FA78"            /* u..���.�x.^R�{�x */
	$"0326 0000 7CF5 7804 4900 0A6F DDF2 FF03"            /* .&..|�x.I.�o���. */
	$"9197 8278 FB78 054F 0019 8091 A6FE ADFE"            /* ���x�x.O..������ */
	$"AE03 A4AD 8F8C FA78 0372 000B 86FA 7804"            /* �.�����x.r..��x. */
	$"5F00 172F 96F9 7802 4A00 66F9 7802 3800"            /* _../��x.J.f�x.8. */
	$"7DF9 7803 2100 0090 F278 0100 71F6 FF02"            /* }�x.!..��x..q��. */
	$"BF9B 8FFA 8604 5B07 076F 99FB 8604 866F"            /* �����.[..o���.�o */
	$"0707 A2F9 86FF 0701 518D FA86 0545 07CC"            /* ..����..Q���.E.� */
	$"FF7A 9CF9 8602 1B35 91FA 8602 8307 07F6"            /* �z���..5���.�..� */
	$"FF01 C899 F986 022E 0794 F986 0345 0707"            /* �.ș��...���.E.. */
	$"8CF2 8605 1B53 FFFF A69C F986 0607 3AFF"            /* ��..S������..:� */
	$"FF96 9A99 FC86 FF86 0383 0739 8EF9 8602"            /* ��������.�.9���. */
	$"1B3A 91FA 8604 5B07 074E A6F9 86FF 0700"            /* .:���.[..N����.. */
	$"8AFA 8606 8407 07B5 9998 8DFA 8603 6D61"            /* ���.�..������.ma */
	$"8F8A FA86 0331 0707 8CF5 8604 5707 1579"            /* ����.1..���.W..y */
	$"DEF2 FF02 9EA2 8FFA 8605 5B07 2487 9CAF"            /* ���.�����.[.$��� */
	$"FEB5 00B6 FFB6 03AC B59B 98FA 8603 8307"            /* ��.���.������.�. */
	$"1594 FA86 046F 0725 39A1 F986 0258 0771"            /* .���.o.%9���.X.q */
	$"F986 0245 078D F986 032E 0707 9EF2 8601"            /* ��.E.���....��. */
	$"0776 0265 F6FF 02AE 8B7C FA71 0449 0000"            /* .v.e��.��|�q.I.. */
	$"628A FA71 035A 0000 95F9 71FF 0001 4479"            /* b��q.Z..��q�..Dy */
	$"FA71 0533 00C8 FF68 8EF9 7102 0C27 84FA"            /* �q.3.��h��q..'�� */
	$"7102 6D00 00F6 FF01 C188 F971 021F 0083"            /* q.m..��.���q...� */
	$"F971 0333 0000 79F8 71FB 7105 0C47 FFFF"            /* �q.3..y�q�q..G�� */
	$"998E F971 0600 2EFF FF90 8A88 FA71 036D"            /* ���q...������q.m */
	$"002C 7CF9 7102 0C2B 80FA 7104 4900 003E"            /* .,|�q..+��q.I..> */
	$"99F9 71FF 0000 7AFA 7106 6F00 00AD 9688"            /* ��q�..z�q.o..��� */
	$"79F0 7104 6401 0002 7AF5 7107 6F44 0D03"            /* y�q.d...z�q.oD.. */
	$"6CDD FFFF F5FF 028D 947D FA71 0349 465F"            /* l�����.��}�q.IF_ */
	$"72FA 7304 5401 828C 88FA 7103 7040 5C7B"            /* r�s.T.����q.p@\{ */
	$"FA71 045A 002E 2094 F971 0246 0063 F971"            /* �q.Z.. ��q.F.c�q */
	$"0222 007F F971 031F 0000 8EF2 7101 0070"            /* ."..�q....��q..p */
	$"F6FF 04AF 8D80 7575 FC75 044D 0000 648C"            /* ��.���uu�u.M..d� */
	$"FA75 035D 0000 97F9 75FF 0001 467C FA75"            /* �u.]..��u�..F|�u */
	$"0536 00C9 FF6C 90F9 7502 0F29 86FA 7502"            /* .6.��l��u..)��u. */
	$"7000 00F6 FF01 C28B F975 0221 0086 F975"            /* p..��.�u.!.��u */
	$"0336 0000 7CF2 7505 0F49 FFFF 9B90 FD75"            /* .6..|�u..I�����u */
	$"FD75 0600 30FF FF92 8C8C FA75 0370 002F"            /* �u..0������u.p./ */
	$"80F9 7502 0F2F 82FA 7504 4D00 0040 9BF9"            /* ��u../��u.M..@�� */
	$"75FF 0000 7CFA 7506 7200 00AE 978B 7CF0"            /* u�..|�u.r..���|� */
	$"7504 6703 0006 7CF5 7505 7247 1106 6DDD"            /* u.g...|�u.rG..m� */
	$"F3FF 038F 9680 75FB 7503 4D48 6476 FA77"            /* ��.���u�u.MHdv�w */
	$"0458 0585 8E8B FA75 0373 435F 7DFA 7504"            /* .X.����u.sC_}�u. */
	$"5D00 3022 96F9 7502 4900 65F9 7502 2500"            /* ].0"��u.I.e�u.%. */
	$"82F9 7503 2100 0090 F275 0100 71F6 FF02"            /* ��u.!..��u..q��. */
	$"B79A 8EFA 8404 5A07 076F 99FB 8404 846E"            /* �����.Z..o���.�n */
	$"0707 A2F9 84FF 0701 518B FA84 0544 07CC"            /* ..����..Q���.D.� */
	$"FF7A 9CF9 8402 1B35 94FA 8402 8107 07F6"            /* �z���..5���.�..� */
	$"FF01 C799 F984 022E 0794 F984 0344 0707"            /* �.Ǚ��...���.D.. */
	$"8CF2 8405 1B53 FFFF A59C F984 0607 3AFF"            /* ��..S������..:� */
	$"FF9F 9998 FC84 FF84 0381 0739 8EF9 8402"            /* ��������.�.9���. */
	$"1B3A 90FA 8404 5A07 074E A6F9 84FF 0700"            /* .:���.Z..N����.. */
	$"8AFA 8406 8207 07B5 9998 8BF0 8404 770D"            /* ���.�..������.w. */
	$"0710 8CF5 8405 8357 1D10 75DE F3FF 029C"            /* ..���.�W..u���.� */
	$"A28E FA84 025A 5773 FD86 FE87 0587 670F"            /* ����.ZWs����.�g. */
	$"929B 97F9 8402 526F 8CFA 8404 6E07 3A2F"            /* �����.Ro���.n.:/ */
	$"A1F9 8402 5807 71F9 8402 3007 90F9 8403"            /* ���.X.q��.0.���. */
	$"2E07 079E F284 0107 7602 50F6 FF02 AB8B"            /* ...��..v.P��.�� */
	$"7AFA 6E04 4700 0062 88FA 6E03 5800 0095"            /* z�n.G..b��n.X..� */
	$"F96E FF00 0144 77FA 6E05 3200 C8FF 688E"            /* �n�..Dw�n.2.��h� */
	$"F96E 020C 2783 FA6E 026B 0000 F6FF 01C1"            /* �n..'��n.k..��.� */
	$"88F9 6E02 1F00 79F9 6E03 3200 0079 F96E"            /* ��n...y�n.2..y�n */
	$"0016 FA00 0447 FFFF 958E F96E 0600 2EFF"            /* ..�..G�����n...� */
	$"FF8F 8887 FA6E 036B 002C 7AF9 6E02 0C2B"            /* �����n.k.,z�n..+ */
	$"7DFA 6E04 4700 003D 99F9 6EFF 0000 7AFA"            /* }�n.G..=��n�..z� */
	$"6E06 6C00 00AD 9687 77F0 6E04 4800 002E"            /* n.l..���w�n.H... */
	$"79F3 6E05 613A 1B28 A1FF F5FF 028B 947B"            /* y�n.a:.(����.��{ */
	$"FA6E 0147 6BF8 6E04 4500 7A84 87EF 6E04"            /* �n.Gk�n.E.z���n. */
	$"5800 2E1A 94F9 6E02 3600 62F9 6E02 2100"            /* X...��n.6.b�n.!. */
	$"73F9 6E03 1F00 008E F96E F900 0070 F6FF"            /* s�n....��n�..p�� */
	$"04AD 8D7D 7171 FC71 044A 0000 648B FA71"            /* .��}qq�q.J..d��q */
	$"035B 0000 97F9 71FF 0001 467A FA71 0535"            /* .[..��q�..Fz�q.5 */
	$"00C9 FF6B 90F9 7102 0F29 85FA 7102 6E00"            /* .��k��q..)��q.n. */
	$"00F6 FF01 C28B F971 0221 007C F971 0335"            /* .��.�q.!.|�q.5 */
	$"0000 7CF9 7100 1AFA 0004 49FF FF97 90FD"            /* ..|�q..�..I����� */
	$"71FD 7106 0030 FFFF 918B 8BFA 7103 6E00"            /* q�q..0������q.n. */
	$"2F7D F971 020F 2F80 FA71 044A 0000 409B"            /* /}�q../��q.J..@� */
	$"F971 FF00 007C FA71 066F 0000 AE97 8A7A"            /* �q�..|�q.o..���z */
	$"F071 044C 0002 307C F371 0464 3D1D 2AA2"            /* �q.L..0|�q.d=.*� */
	$"F4FF 038E 967D 71FB 7101 4A6E F871 0448"            /* ��.��}q�q.Jn�q.H */
	$"007C 868A EF71 045B 0030 1D96 F971 023A"            /* .|���q.[.0.��q.: */
	$"0064 F971 0224 0077 F971 0321 0000 90F9"            /* .d�q.$.w�q.!..�� */
	$"71F9 0000 71F6 FF02 B59A 8CFA 8104 5807"            /* q�..q��.�����.X. */
	$"076E 98FB 8104 816C 0707 A2F9 81FF 0701"            /* .n���.�l..����.. */
	$"518A FA81 0544 07CC FF79 9CF9 8102 1B35"            /* Q���.D.��y���..5 */
	$"94FA 8102 8007 07F6 FF01 C798 F981 022E"            /* ���.�..��.ǘ��.. */
	$"078C F981 0344 0707 8CF9 8100 25FA 0704"            /* .���.D..���.%�.. */
	$"53FF FFA3 9CF9 8106 073A FFFF 9E99 97FC"            /* S������..:������ */
	$"81FF 8103 8007 398C F981 021B 3A8E FA81"            /* ���.�.9���..:��� */
	$"0458 0707 4DA6 F981 FF07 008A FA81 0680"            /* .X..M����..���.� */
	$"0707 B599 978A F081 0459 070C 388C F381"            /* ..������.Y..8�� */
	$"0475 4F2C 36A6 F4FF 029A A18C FA81 0158"            /* .uO,6���.�����.X */
	$"7FF9 8105 8157 078B 9597 EF81 046C 073A"            /* .��.�W.����.l.: */
	$"29A1 F981 0248 0770 F981 022F 0784 F981"            /* )���.H.p��./.��� */
	$"032E 0707 9CF9 81F9 0700 7602 59F6 FF02"            /* ....����..v.Y��. */
	$"AB8B 79FA 6B04 4500 0061 87FA 6B03 5700"            /* ��y�k.E..a��k.W. */
	$"0095 F96B FF00 0144 76FA 6B05 3100 C8FF"            /* .��k�..Dv�k.1.�� */
	$"688E F96B 020C 2583 FA6B 0269 0000 F6FF"            /* h��k..%��k.i..�� */
	$"01C1 88F9 6B02 1F00 76F9 6B03 3100 0079"            /* .���k...v�k.1..y */
	$"F96B 0016 005F F8FF 0188 8EF9 6B06 002E"            /* �k..._��.���k... */
	$"FFFF 7687 86FA 6B03 6900 2C79 F96B 020C"            /* ��v���k.i.,y�k.. */
	$"387B FA6B 0445 0000 3D99 F96B FF00 007A"            /* 8{�k.E..=��k�..z */
	$"FA6B 0669 0000 AD96 8676 FA6B 0262 596C"            /* �k.i..���v�k.bYl */
	$"FA6B 046C 1300 0081 F16B 0359 3027 7100"            /* �k.l...��k.Y0'q. */
	$"DEF6 FF02 8A92 79FA 6B01 5468 F86B 0444"            /* ���.��y�k.Th�k.D */
	$"0077 5E86 EF6B 0457 002E 1A94 F96B 0231"            /* .w^��k.W...��k.1 */
	$"0061 F96B 0220 006F F96B 031F 0000 8EF9"            /* .a�k. .o�k....�� */
	$"6B01 007A EFFF 04AC 8D7C 6F6F FC6F 0448"            /* k..z��.��|oo�o.H */
	$"0000 638B FA6F 035A 0000 97F9 6FFF 0001"            /* ..c��o.Z..��o�.. */
	$"4679 FA6F 0534 00C9 FF6B 90F9 6F02 0F27"            /* Fy�o.4.��k��o..' */
	$"85FA 6F02 6D00 00F6 FF01 C28B F96F 0221"            /* ��o.m..��.�o.! */
	$"0078 F96F 0334 0000 7CF9 6F01 1A62 F8FF"            /* .x�o.4..|�o..b�� */
	$"018B 90FD 6FFD 6F06 0030 FFFF 788A 8AFA"            /* .���o�o..0��x��� */
	$"6F03 6D00 2F7C F96F 020F 3A7F FA6F 0448"            /* o.m./|�o..:.�o.H */
	$"0000 3F9B F96F FF00 007C FA6F 066E 0000"            /* ..?��o�..|�o.n.. */
	$"AE97 8879 FA6F 0165 5CF9 6F04 7015 0000"            /* ���y�o.e\�o.p... */
	$"83F1 6F04 5C33 2A73 DEF6 FF03 8C95 7C6F"            /* ��o.\3*s���.��|o */
	$"FB6F 0158 6CF8 6F04 4700 7961 88EF 6F04"            /* �o.Xl�o.G.ya��o. */
	$"5A00 301D 96F9 6F02 3400 64F9 6F02 2200"            /* Z.0.��o.4.d�o.". */
	$"71F9 6F03 2100 0090 F96F 0100 7CEF FF02"            /* q�o.!..��o..|��. */
	$"B59A 8BFA 7F04 5507 076E 97FB 7F04 7F6B"            /* ����..U..n��...k */
	$"0707 A2F9 7FFF 0701 5187 FA7F 0543 07CC"            /* ..��.�..Q��..C.� */
	$"FF79 9CF9 7F02 1B32 92FA 7F02 7D07 07F6"            /* �y��...2��..}..� */
	$"FF01 C798 F97F 022E 0788 F97F 0343 0707"            /* �.ǘ�....��..C.. */
	$"8CF9 7F01 256C F8FF 0198 9EF9 7F06 073A"            /* ��..%l��.���...: */
	$"FFFF 8898 96FC 7FFF 7F03 7D07 398A F97F"            /* ������.�..}.9��. */
	$"021B 478C FA7F 0455 0707 4CA6 F97F FF07"            /* ..G��..U..L��.�. */
	$"008A F97F FF07 03B5 9997 87FA 7F02 766D"            /* .��.�..�����..vm */
	$"80FA 7F04 8020 0707 91F1 7F04 6D46 3B80"            /* ��..� ..��..mF;� */
	$"DFF6 FF02 99A0 8BFA 7F01 677C F97F 057F"            /* ���.����..g|�... */
	$"5507 876D 96EF 7F04 6B07 3A29 A1F9 7F02"            /* U.�m��..k.:)��.. */
	$"4307 70F9 7F01 2E07 F87F 032E 0707 9CF9"            /* C.p�....�.....�� */
	$"7F01 0783 FAFF 026E F6FF 02AA 8B79 FA68"            /* ...���.n��.��y�h */
	$"0444 0000 6186 FA68 0354 0000 95F9 68FF"            /* .D..a��h.T..��h� */
	$"0001 4373 FA68 0530 00C8 FF68 8EF9 6802"            /* ..Cs�h.0.��h��h. */
	$"0C1D 82FA 6802 6700 0FF6 FF01 C088 F968"            /* ..��h.g..��.���h */
	$"021F 0072 F968 0330 0000 79F9 6800 1600"            /* ...r�h.0..y�h... */
	$"5FF8 FF01 878E F968 0600 2EFF FF71 8685"            /* _��.���h...��q�� */
	$"F968 0200 2C77 F968 020C 386E FA68 0444"            /* �h..,w�h..8n�h.D */
	$"0000 3C99 F968 FF00 007A F968 FF00 03AD"            /* ..<��h�..z�h�..� */
	$"9686 73FA 6802 4300 44F9 6803 1F00 028A"            /* ��s�h.C.D�h....� */
	$"F068 0265 4D31 013A C9F7 FF02 8791 77FA"            /* �h.eM1.:���.��w� */
	$"6803 542F 315D FA68 0443 0077 4785 FA68"            /* h.T/1]�h.C.wG��h */
	$"036B 3131 50FA 6804 5400 2E1A 94F9 6802"            /* .k11P�h.T...��h. */
	$"3000 5FF9 6802 1F00 6FF9 6803 1F00 008E"            /* 0._�h...o�h....� */
	$"F968 0100 7AEF FF04 AC8D 7C6C 6CFC 6C04"            /* �h..z��.��|ll�l. */
	$"4600 0063 88FA 6C03 5800 0097 F96C FF00"            /* F..c��l.X..��l�. */
	$"0145 77FA 6C05 3300 C9FF 6B90 F96C 020F"            /* .Ew�l.3.��k��l.. */
	$"1F85 FA6C 026B 0012 F6FF 01C1 8BF9 6C02"            /* .��l.k..��.���l. */
	$"2100 75F9 6C03 3300 007C F96C 011A 62F8"            /* !.u�l.3..|�l..b� */
	$"FF01 8A90 FD6C FD6C 0600 30FF FF75 8888"            /* �.���l�l..0��u�� */
	$"F96C 0200 2F7A F96C 020F 3A71 FA6C 0446"            /* �l../z�l..:q�l.F */
	$"0000 3F9B F96C FF00 007C F96C FF00 03AE"            /* ..?��l�..|�l�..� */
	$"9788 77FA 6C02 4600 46F9 6C03 2100 058C"            /* ��w�l.F.F�l.!..� */
	$"F06C 0469 5034 3DC9 F7FF 038A 947A 6CFB"            /* �l.iP4=���.��zl� */
	$"6C03 5832 3461 FA6C 0446 0079 4987 FA6C"            /* l.X24a�l.F.yI��l */
	$"036E 3434 53FA 6C04 5800 301C 96F9 6C02"            /* .n44S�l.X.0.��l. */
	$"3300 62F9 6C02 2100 71F9 6C03 2100 0090"            /* 3.b�l.!.q�l.!..� */
	$"F96C 0100 7CEF FF02 B49A 8BFA 7B04 5407"            /* �l..|��.����{.T. */
	$"076D 96FB 7B04 7B68 0707 A2F9 7BFF 0701"            /* .m��{.{h..��{�.. */
	$"5085 FA7B 0542 07CC FF79 9CF9 7B02 1B2A"            /* P��{.B.��y��{..* */
	$"92F9 7B01 071F F6FF 01C7 98F9 7B02 2E07"            /* ��{...��.ǘ�{... */
	$"86F9 7B03 4207 078C F97B 0125 6CF8 FF01"            /* ��{.B..��{.%l��. */
	$"979C F97B 0607 3AFF FF85 9695 FC7B FE7B"            /* ���{..:������{�{ */
	$"0207 3988 F97B 021B 4781 FA7B 0454 0707"            /* ..9��{..G��{.T.. */
	$"4CA6 F97B FF07 008A FA7B 067C 0707 B599"            /* L��{�..��{.|..�� */
	$"9685 FA7B 0254 0753 F97B 032E 0710 99F0"            /* ���{.T.S�{....�� */
	$"7B04 7A62 474C CCF7 FF02 979F 88FA 7B03"            /* {.zbGL���.����{. */
	$"683F 4272 FB7B 057B 5407 8758 95FA 7B03"            /* h?Br�{.{T.�X��{. */
	$"7D42 4264 FA7B 0468 073A 29A1 F97B 0242"            /* }BBd�{.h.:)��{.B */
	$"076E F97B 022E 077F F97B 032E 0707 9CF9"            /* .n�{....�{....�� */
	$"7B01 0783 FAFF 0271 F6FF 02AA 8A77 FA65"            /* {..���.q��.��w�e */
	$"0442 0000 5F85 FA65 0352 0000 94F9 65FF"            /* .B.._��e.R..��e� */
	$"0001 4371 FA65 052F 00C8 FF67 8DF9 6502"            /* ..Cq�e./.��g��e. */
	$"0C1D 7FF9 6501 0012 F6FF 01C0 87F9 6502"            /* ...�e...��.���e. */
	$"1F00 73F9 6503 2F00 0079 F965 0016 005F"            /* ..s�e./..y�e..._ */
	$"F8FF 0186 8EF9 6506 002E FFFF 7186 84F9"            /* ��.���e...��q��� */
	$"6502 0033 76F9 6501 1B38 F965 0442 0000"            /* e..3v�e..8�e.B.. */
	$"3C98 F965 FF00 007A F965 FF00 03AD 9686"            /* <��e�..z�e�..��� */
	$"71FA 6502 4200 6CF9 6503 1E00 0187 F965"            /* q�e.B.l�e....��e */
	$"0149 5DF8 6500 1B01 00AD F7FF 0285 9075"            /* .I]�e....���.��u */
	$"FA65 035E 0006 6FFA 6504 4200 773C 84F9"            /* �e.^..o�e.B.w<�� */
	$"65FF 0000 61FA 6504 5200 2E2E 94F9 6502"            /* e�..a�e.R...��e. */
	$"2F00 5DF9 6502 1E00 6EF9 6503 1F00 008E"            /* /.]�e...n�e....� */
	$"F965 0100 7AEF FF04 AC8C 7A68 68FC 6804"            /* �e..z��.��zhh�h. */
	$"4400 0062 87FA 6803 5500 0096 F968 FF00"            /* D..b��h.U..��h�. */
	$"0145 75FA 6805 3200 C9FF 6B8F F968 020F"            /* .Eu�h.2.��k��h.. */
	$"1F81 F968 0100 15F6 FF01 C18A F968 0221"            /* .��h...��.���h.! */
	$"0076 F968 0332 0000 7BF9 6801 1A62 F8FF"            /* .v�h.2..{�h..b�� */
	$"0188 90FD 68FD 6806 0030 FFFF 7588 86F9"            /* .���h�h..0��u��� */
	$"6802 0035 79F9 6801 1D3A F968 0444 0000"            /* h..5y�h..:�h.D.. */
	$"3E9A F968 FF00 007C F968 FF00 03AE 9788"            /* >��h�..|�h�..��� */
	$"75FA 6802 4500 6EF9 6803 2000 038A F968"            /* u�h.E.n�h. ..��h */
	$"014D 61F8 6802 1D00 AEF7 FF03 8792 7868"            /* .Ma�h...���.��xh */
	$"FB68 0362 0009 71FA 6804 4500 793E 86F9"            /* �h.b.�q�h.E.y>�� */
	$"68FF 0000 63FA 6804 5500 3031 96F9 6802"            /* h�..c�h.U.01��h. */
	$"3200 5FF9 6802 2000 70F9 6803 2100 0090"            /* 2._�h. .p�h.!..� */
	$"F968 0100 7CEF FF02 B499 88FA 7904 5207"            /* �h..|��.����y.R. */
	$"076D 95FB 7904 7966 0707 A2F9 79FF 0701"            /* .m��y.yf..��y�.. */
	$"5084 FA79 0540 07CC FF78 9BF9 7902 1B2A"            /* P��y.@.��x��y..* */
	$"8FFA 7902 7A07 22F6 FF01 C798 F979 022E"            /* ��y.z."��.ǘ�y.. */
	$"0786 F979 0340 0707 8CF9 7901 256C F8FF"            /* .��y.@..��y.%l�� */
	$"0197 9CF9 7906 073A FFFF 8597 94FC 79FE"            /* .���y..:������y� */
	$"7902 0740 87F9 7901 2947 F979 0452 0707"            /* y..@��y.)G�y.R.. */
	$"4CA5 F979 FF07 008A FA79 067A 0707 B599"            /* L��y�..��y.z..�� */
	$"9684 FA79 0253 077C F979 032C 070D 97F9"            /* ���y.S.|�y.,..�� */
	$"7901 5A70 F879 0228 07B5 F7FF 0296 9F86"            /* y.Zp�y.(.���.��� */
	$"FA79 0373 0714 82FB 7905 7953 0787 4A94"            /* �y.s..��y.yS.�J� */
	$"FA79 037A 0707 72FA 7904 6607 3A42 A1F9"            /* �y.z..r�y.f.:B�� */
	$"7902 4007 6DF9 7902 2C07 7DF9 7903 2E07"            /* y.@.m�y.,.}�y... */
	$"079C F979 0107 83FA FF02 980D D1A3 998F"            /* .��y..���.�.ѣ�� */
	$"9091 9192 9294 9266 8A75 FA62 043F 0000"            /* �������f�u�b.?.. */
	$"5E84 FA62 0350 0000 94F9 62FF 0001 436F"            /* ^��b.P..��b�..Co */
	$"FA62 052F 00C8 FF67 8DF9 6202 0C1E 7FFA"            /* �b./.��g��b....� */
	$"6202 6300 12F6 FF01 C087 F962 021F 0073"            /* b.c..��.���b...s */
	$"F962 032F 0000 78F9 6200 1600 5FF8 FF01"            /* �b./..x�b..._��. */
	$"948E F962 0600 2EFF FF70 8583 F962 0200"            /* ���b...��p���b.. */
	$"3B75 F962 011F 38F9 6204 3F00 003B 98F9"            /* ;u�b..8�b.?..;�� */
	$"62FF 0000 7AFA 6206 6300 00AD 9685 6FFA"            /* b�..z�b.c..���o� */
	$"6202 4200 6EF9 6203 1D00 0079 F962 021F"            /* b.B.n�b....y�b.. */
	$"0670 F962 0015 0100 B4F7 FF02 848F 72FA"            /* .p�b....���.��r� */
	$"6203 6300 296E FA62 0442 0077 3B83 FA62"            /* b.c.)n�b.B.w;��b */
	$"0363 0006 7DFA 6204 5000 3F31 92F9 6202"            /* .c..}�b.P.?1��b. */
	$"2F00 5CF9 6202 1F00 6CF9 6203 1F00 008D"            /* /.\�b...l�b....� */
	$"F962 0100 7AFA FF0F D2A5 9B91 9294 9495"            /* �b..z��.ҥ������ */
	$"9596 9568 8C78 6565 FC65 0443 0000 6186"            /* ���h�xee�e.C..a� */
	$"FA65 0353 0000 96F9 65FF 0001 4572 FA65"            /* �e.S..��e�..Er�e */
	$"0531 00C9 FF6B 8FF9 6502 0F20 81FA 6502"            /* .1.��k��e.. ��e. */
	$"6600 15F6 FF01 C18A F965 0221 0077 F965"            /* f..��.���e.!.w�e */
	$"0331 0000 7BF9 6501 1A62 F8FF 0196 90FD"            /* .1..{�e..b��.��� */
	$"65FD 6506 0030 FFFF 7387 86F9 6502 003E"            /* e�e..0��s���e..> */
	$"78F9 6501 213A F965 0443 0000 3E9A F965"            /* x�e.!:�e.C..>��e */
	$"FF00 007C FA65 0666 0000 AE97 8772 FA65"            /* �..|�e.f..���r�e */
	$"0244 0071 F965 0320 0000 7BF9 6502 2108"            /* .D.q�e. ..{�e.!. */
	$"73F9 6502 1700 B5F7 FF03 8691 7665 FB65"            /* s�e...���.��ve�e */
	$"0366 002B 71FA 6504 4400 793E 86FA 6503"            /* .f.+q�e.D.y>��e. */
	$"6600 0880 FA65 0453 0042 3495 F965 0231"            /* f..��e.S.B4��e.1 */
	$"005F F965 0221 006E F965 0321 0000 8FF9"            /* ._�e.!.n�e.!..�� */
	$"6501 007C FAFF 06D4 AEA6 9E9F A0A0 FDA1"            /* e..|��.Ԯ������� */
	$"0277 9987 FA77 0451 0707 6C94 FB77 0477"            /* .w���w.Q..l��w.w */
	$"6507 07A2 F977 FF07 0150 82FA 7705 4007"            /* e..��w�..P��w.@. */
	$"CCFF 789C F977 021B 2A8F FA77 0278 0722"            /* ��x��w..*��w.x." */
	$"F6FF 01C7 98F9 7702 2E07 87F9 7703 4007"            /* ��.ǘ�w...��w.@. */
	$"078B F977 0125 6CF8 FF01 A29C F977 0607"            /* .��w.%l��.���w.. */
	$"3AFF FF84 9694 FC77 FE77 0207 4A87 F977"            /* :������w�w..J��w */
	$"012E 47F9 7704 5107 074A A4F9 77FF 0700"            /* ..G�w.Q..J��w�.. */
	$"8AFA 7706 7807 07B5 9996 82FA 7702 5307"            /* ��w.x..�����w.S. */
	$"80F9 7703 2B07 078C F977 022E 1383 F977"            /* ��w.+..��w...��w */
	$"0222 07BA F7FF 0295 9E85 FA77 0378 0736"            /* .".���.����w.x.6 */
	$"82FB 7705 7753 0787 4A94 FA77 0378 0713"            /* ��w.wS.�J��w.x.. */
	$"8EFA 7704 6507 4845 A1F9 7702 4007 6DF9"            /* ��w.e.HE��w.@.m� */
	$"7702 2E07 7CF9 7703 2E07 079C F977 0107"            /* w...|�w....��w.. */
	$"83FA FF02 8C03 BE90 786E FB6F 0345 007C"            /* ���.�.��xn�o.E.| */
	$"72FA 5D04 3C00 005C 83FA 5D03 4D00 0092"            /* r�].<..\��].M..� */
	$"F95D FF00 0143 6CFA 5D05 2C00 C8FF 678D"            /* �]�..Cl�].,.��g� */
	$"F95D 020C 1E7C FA5D 025F 0012 F6FF 01C0"            /* �]...|�]._..��.� */
	$"86F9 5D02 1F00 75F9 5D03 2C00 0078 F95D"            /* ��]...u�].,..x�] */
	$"0016 005F F8FF 0195 8DF9 5D06 002E FFFF"            /* ..._��.���]...�� */
	$"6F83 82F9 5D02 003B 72F9 5D01 1F38 F95D"            /* o���]..;r�]..8�] */
	$"043C 0000 3A97 F95D FF00 0079 FA5D 065F"            /* .<..:��]�..y�]._ */
	$"0000 AD96 846C FA5D 023F 0078 F95D 031C"            /* ..���l�].?.x�].. */
	$"0000 78F9 5D02 1F0A 7CF9 5D00 1401 00C8"            /* ..x�]..�|�]....� */
	$"F7FF 0281 8D70 F95D 0200 296B FA5D 043F"            /* ��.��p�]..)k�].? */
	$"0088 3B82 FA5D 035F 0007 7BFA 5D04 4D00"            /* .�;��]._..{�].M. */
	$"4830 92F9 5D02 1F00 5BF9 5D02 1F00 6CF9"            /* H0��]...[�]...l� */
	$"5D03 1F00 0C8D F95D 0100 7AFA FF02 BF92"            /* ]....��]..z��.�� */
	$"7BFA 7205 4800 7F76 6262 FC62 043F 0000"            /* {�r.H..vbb�b.?.. */
	$"5E86 FA62 0351 0000 95F9 62FF 0001 4570"            /* ^��b.Q..��b�..Ep */
	$"FA62 0530 00C9 FF69 8FF9 6202 0F20 80FA"            /* �b.0.��i��b.. �� */
	$"6202 6400 15F6 FF01 C188 F962 0221 0078"            /* b.d..��.���b.!.x */
	$"F962 0330 0000 7AF9 6201 1A62 F8FF 0197"            /* �b.0..z�b..b��.� */
	$"8FFD 62FD 6206 0030 FFFF 7286 84F9 6202"            /* ��b�b..0��r���b. */
	$"003E 76F9 6201 213A F962 043F 0000 3C99"            /* .>v�b.!:�b.?..<� */
	$"F962 FF00 007C FA62 0664 0000 AE97 8770"            /* �b�..|�b.d..���p */
	$"FA62 0243 007A F962 031E 0000 7BF9 6202"            /* �b.C.z�b....{�b. */
	$"210C 80F9 6202 1600 C9F7 FF03 848F 7362"            /* !.��b...���.��sb */
	$"FA62 0200 2B6F FA62 0443 008B 3D84 FA62"            /* �b..+o�b.C.�=��b */
	$"0364 0009 7FFA 6204 5100 4A33 95F9 6202"            /* .d.�.�b.Q.J3��b. */
	$"2200 5EF9 6202 2100 6EF9 6203 2100 108F"            /* ".^�b.!.n�b.!..� */
	$"F962 0100 7CFA FF02 C49F 8AFA 8203 5707"            /* �b..|��.ğ���.W. */
	$"8D84 FA72 044E 0707 6B92 FB72 0472 6307"            /* ���r.N..k��r.rc. */
	$"07A1 F972 FF07 0150 80FA 7205 3E07 CCFF"            /* .��r�..P��r.>.�� */
	$"789B F972 021B 2A8E FA72 0276 0722 F6FF"            /* x��r..*��r.v."�� */
	$"01C5 97F9 7202 2E07 87F9 7203 3E07 078B"            /* .ŗ�r...��r.>..� */
	$"F972 0125 6CF8 FF01 A29B F972 0607 3AFF"            /* �r.%l��.���r..:� */
	$"FF83 9492 FC72 FE72 0207 4A84 F972 012E"            /* �����r�r..J��r.. */
	$"47F9 7204 4E07 0749 A4F9 72FF 0700 88FA"            /* G�r.N..I��r�..�� */
	$"7206 7607 07B5 9995 80FA 7202 5207 86F9"            /* r.v..�����r.R.�� */
	$"7203 2A07 078B F972 022E 178E F972 0221"            /* r.*..��r...��r.! */
	$"07CC F7FF 0291 9B83 FA72 0373 0736 7FFB"            /* .���.����r.s.6.� */
	$"7205 7252 0797 4991 FA72 0376 0714 8DFA"            /* r.rR.�I��r.v..�� */
	$"7204 6307 5045 A0F9 7202 2F07 6CF9 7202"            /* r.c.PE��r./.l�r. */
	$"2E07 7CF9 7203 2E07 1C9B F972 0107 83FA"            /* ..|�r....��r..�� */
	$"FF02 8C02 B790 6CFA 5A03 3D00 5968 FA5A"            /* �.�.��l�Z.=.Yh�Z */
	$"043A 0000 5C82 FA5A 034C 0000 92F9 5AFF"            /* .:..\��Z.L..��Z� */
	$"0001 426B FA5A 052B 00C8 FF66 8CF9 5A02"            /* ..Bk�Z.+.��f��Z. */
	$"0C1B 7CFA 5A02 5E00 12F6 FF01 BF85 F95A"            /* ..|�Z.^..��.���Z */
	$"031F 0067 62FA 5A03 2B00 0078 F95A 0016"            /* ...gb�Z.+..x�Z.. */
	$"005F F8FF 0195 8DF9 5A06 002E FFFF 6282"            /* ._��.���Z...��b� */
	$"81F9 5A02 003B 70F9 5A01 1F38 F95A 043A"            /* ��Z..;p�Z..8�Z.: */
	$"0000 3997 F95A FF00 0079 FA5A 065D 0000"            /* ..9��Z�..y�Z.].. */
	$"AD96 846B FA5A 023E 006E F95A 031B 0000"            /* ���k�Z.>.n�Z.... */
	$"78F9 5A02 1F01 83F9 5A00 1301 00C8 F7FF"            /* x�Z...��Z....��� */
	$"027F 8B6E F95A 0200 2968 FA5A 043E 0091"            /* ..�n�Z..)h�Z.>.� */
	$"3A81 FA5A 035E 0007 7AFA 5A04 4C00 482E"            /* :��Z.^..z�Z.L.H. */
	$"91F9 5A01 1B00 F85A 021F 006C F95A 031F"            /* ��Z...�Z...l�Z.. */
	$"0012 8CF9 5A01 007A FAFF 02B8 926F FA5E"            /* ..��Z..z��.��o�^ */
	$"0542 005B 6C5E 5EFC 5E04 3D00 005E 84FA"            /* .B.[l^^�^.=..^�� */
	$"5E03 4F00 0095 F95E FF00 0144 6EFA 5E05"            /* ^.O..��^�..Dn�^. */
	$"2F00 C9FF 698E F95E 020F 1D80 FA5E 0262"            /* /.��i��^...��^.b */
	$"0015 F6FF 01C0 88F9 5E03 2100 6B65 FA5E"            /* ..��.���^.!.ke�^ */
	$"032F 0000 7AF9 5E01 1A62 F8FF 0197 8FFD"            /* ./..z�^..b��.��� */
	$"5EFD 5E06 0030 FFFF 6685 83F9 5E02 003D"            /* ^�^..0��f���^..= */
	$"73F9 5E01 213A F95E 043D 0000 3C99 F95E"            /* s�^.!:�^.=..<��^ */
	$"FF00 007B FA5E 0662 0000 AE97 866E FA5E"            /* �..{�^.b..���n�^ */
	$"0242 0070 F95E 031D 0000 7AF9 5E02 2103"            /* .B.p�^....z�^.!. */
	$"86F9 5E02 1600 C9F7 FF03 828D 715E FA5E"            /* ��^...���.��q^�^ */
	$"0200 2B6D FA5E 0442 0094 3C83 FA5E 0362"            /* ..+m�^.B.�<��^.b */
	$"0009 7DFA 5E04 4F00 4A31 94F9 5E02 1D00"            /* .�}�^.O.J1��^... */
	$"5DF9 5E02 2100 6EF9 5E03 2100 158E F95E"            /* ]�^.!.n�^.!..��^ */
	$"0100 7CFA FF02 BE9F 7FFA 7003 4F07 687C"            /* ..|��.��.�p.O.h| */
	$"FA70 044D 0707 6991 FB70 0470 6107 07A1"            /* �p.M..i��p.pa..� */
	$"F970 FF07 014F 7DFA 7005 3D07 CCFF 789B"            /* �p�..O}�p.=.��x� */
	$"F970 021B 288D FA70 0273 0722 F6FF 01C5"            /* �p..(��p.s."��.� */
	$"96F9 7003 2E07 7A77 FA70 033D 0707 8BF9"            /* ��p...zw�p.=..�� */
	$"7001 256C F8FF 01A2 9BF9 7006 073A FFFF"            /* p.%l��.���p..:�� */
	$"7892 91FC 70FE 7002 0749 83F9 7001 2E47"            /* x���p�p..I��p..G */
	$"F970 044D 0707 48A4 F970 FF07 0088 FA70"            /* �p.M..H��p�..��p */
	$"0673 0707 B599 957D FA70 0251 077B F970"            /* .s..���}�p.Q.{�p */
	$"0329 0707 8BF9 7002 2E0D 94F9 7002 2107"            /* .)..��p...��p.!. */
	$"CCF7 FF02 909A 81F9 7002 0736 7CFB 7005"            /* ���.����p..6|�p. */
	$"7051 079F 4990 FA70 0373 0714 8CFA 7004"            /* pQ.�I��p.s..��p. */
	$"6107 5043 A0F9 7002 2907 6BF9 7002 2E07"            /* a.PC��p.).k�p... */
	$"7BF9 7003 2E07 229B F970 0107 83FA FF02"            /* {�p..."��p..���. */
	$"8A02 B290 69FA 5802 4200 4AF9 5804 3900"            /* �.��i�X.B.J�X.9. */
	$"005B 81FA 5803 4900 0091 F958 FF00 0142"            /* .[��X.I..��X�..B */
	$"68FA 5805 2A00 C8FF 668C F958 020C 127B"            /* h�X.*.��f��X...{ */
	$"FA58 025C 0027 F6FF 01BF 85F9 5803 1F00"            /* �X.\.'��.���X... */
	$"676E FA58 032A 0000 77F9 5800 1600 5FF8"            /* gn�X.*..w�X..._� */
	$"FF01 948C F958 0600 2EFF FF62 8180 F958"            /* �.���X...��b���X */
	$"020C 3B6E F958 011F 38F9 5804 3900 0038"            /* ..;n�X..8�X.9..8 */
	$"96F9 58FF 0000 78FA 5806 5B00 00AD 9683"            /* ��X�..x�X.[..��� */
	$"68FA 5802 3D00 6CF9 5803 1A00 0078 F958"            /* h�X.=.l�X....x�X */
	$"021F 0091 F958 0013 0100 D1F7 FF02 7D8A"            /* ...��X....���.}� */
	$"6CF9 5802 0029 67FA 5804 3D00 9139 7FFA"            /* l�X..)g�X.=.�9.� */
	$"5803 5C00 0779 FA58 0449 0048 2090 F958"            /* X.\..y�X.I.H ��X */
	$"021A 0065 F958 021F 006B F958 031F 0012"            /* ...e�X...k�X.... */
	$"8CF9 5801 007A FAFF 02B3 926D FA5B 0245"            /* ��X..z��.��m�[.E */
	$"004D FE5B FC5B 043B 0000 5D83 FA5B 034D"            /* .M�[�[.;..]��[.M */
	$"0000 94F9 5BFF 0001 446C FA5B 052E 00C9"            /* ..��[�..Dl�[...� */
	$"FF69 8EF9 5B02 0F14 7DFA 5B02 5F00 29F6"            /* �i��[...}�[._.)� */
	$"FF01 C087 F95B 0321 0069 71FA 5B03 2E00"            /* �.���[.!.iq�[... */
	$"007A F95B 011A 62F8 FF01 968E FD5B FD5B"            /* .z�[..b��.���[�[ */
	$"0600 30FF FF65 8482 F95B 020F 3D71 F95B"            /* ..0��e���[..=q�[ */
	$"0121 3BF9 5B04 3B00 003B 98F9 5BFF 0000"            /* .!;�[.;..;��[�.. */
	$"7BFA 5B06 5E00 00AE 9785 6CFA 5B02 4000"            /* {�[.^..���l�[.@. */
	$"6EF9 5B03 1C00 007A F95B 0221 0094 F95B"            /* n�[....z�[.!.��[ */
	$"0215 00D2 F7FF 0380 8C6F 5BFA 5B02 022B"            /* ...���.��o[�[..+ */
	$"69FA 5B04 4000 943C 82FA 5B03 5F00 097C"            /* i�[.@.�<��[._.�| */
	$"FA5B 044D 004A 2492 F95B 021C 0067 F95B"            /* �[.M.J$��[...g�[ */
	$"0221 006E F95B 0321 0015 8EF9 5B01 007C"            /* .!.n�[.!..��[..| */
	$"FAFF 02BA 9F7D FA6D 0255 075B F96D 044A"            /* ��.��}�m.U.[�m.J */
	$"0707 6890 FB6D 046D 5E07 07A0 F96D FF07"            /* ..h��m.m^..��m�. */
	$"014F 7CFA 6D05 3D07 CCFF 779B F96D 021B"            /* .O|�m.=.��w��m.. */
	$"208C FA6D 0272 0734 F6FF 01C5 96F9 6D03"            /*  ��m.r.4��.Ŗ�m. */
	$"2E07 7881 FA6D 033D 0707 8AF9 6D01 256C"            /* ..x��m.=..��m.%l */
	$"F8FF 01A1 9BF9 6D06 073A FFFF 7791 90FC"            /* ��.���m..:��w��� */
	$"6DFE 6D02 1B49 81F9 6D01 2E47 F96D 044A"            /* m�m..I��m..G�m.J */
	$"0707 47A3 F96D FF07 0087 FA6D 0671 0707"            /* ..G��m�..��m.q.. */
	$"B599 947C FA6D 0250 077A F96D 0328 0707"            /* ���|�m.P.z�m.(.. */
	$"8BF9 6D02 2E07 A0F9 6D02 2007 D4F7 FF02"            /* ��m...��m. .���. */
	$"8F99 7FF9 6D02 0B35 7AFB 6D05 6D50 079F"            /* ��.�m..5z�m.mP.� */
	$"488F FA6D 0372 0714 8BFA 6D04 5E07 5033"            /* H��m.r..��m.^.P3 */
	$"9FF9 6D02 2807 73F9 6D02 2E07 7BF9 6D03"            /* ��m.(.s�m...{�m. */
	$"2E07 229B F96D 0107 83FA FF02 8702 A690"            /* .."��m..���.�.�� */
	$"67FA 5402 4C00 4AF9 5404 3600 0059 7FFA"            /* g�T.L.J�T.6..Y.� */
	$"5403 4700 0091 F954 FF00 0142 66FA 5405"            /* T.G..��T�..Bf�T. */
	$"2900 C8FF 668C F954 020C 1278 FA54 025A"            /* ).��f��T...x�T.Z */
	$"002E F6FF 01BF 85F9 5403 1F00 676C FA54"            /* ..��.���T...gl�T */
	$"0329 000C 77F9 5400 1600 5FF8 FF01 928C"            /* .)..w�T..._��.�� */
	$"F954 0600 2EFF FF5F 807F F954 020C 3B5C"            /* �T...��_�.�T..;\ */
	$"F954 011D 39F9 5404 3600 0038 95F9 54FF"            /* �T..9�T.6..8��T� */
	$"0000 78FA 5406 5900 00AD 9682 66FA 5402"            /* ..x�T.Y..���f�T. */
	$"3C00 6CF9 5403 1900 0077 F954 021F 008F"            /* <.l�T....w�T...� */
	$"F954 0012 0000 F6FF 027A 8669 F954 0209"            /* �T....��.z�i�T.� */
	$"2965 FA54 043C 0091 397D FA54 035A 0007"            /* )e�T.<.�9}�T.Z.. */
	$"78FA 5404 4700 482B 90F9 5402 1900 5EF9"            /* x�T.G.H+��T...^� */
	$"5402 1F00 69F9 5403 1F00 128C F954 0100"            /* T...i�T....��T.. */
	$"7AFA FF02 A892 6BFA 5802 4F00 4DFE 58FC"            /* z��.��k�X.O.M�X� */
	$"5804 3A00 005B 82FA 5803 4A00 0094 F958"            /* X.:..[��X.J..��X */
	$"FF00 0144 69FA 5805 2C00 C9FF 688E F958"            /* �..Di�X.,.��h��X */
	$"020F 147B FA58 025D 0030 F6FF 01C0 87F9"            /* ...{�X.].0��.��� */
	$"5803 2100 696F FA58 032C 0010 79F9 5801"            /* X.!.io�X.,..y�X. */
	$"1A62 F8FF 0195 8EFD 58FD 5806 0030 FFFF"            /* .b��.���X�X..0�� */
	$"6483 81F9 5802 0F3D 5FF9 5801 203C F958"            /* d���X..=_�X. <�X */
	$"043A 0000 3A97 F958 FF00 007A FA58 065C"            /* .:..:��X�..z�X.\ */
	$"0000 AE97 8469 FA58 023F 006E F958 031C"            /* ..���i�X.?.n�X.. */
	$"0000 7AF9 5802 2100 91F9 5801 1400 F6FF"            /* ..z�X.!.��X...�� */
	$"037D 8A6D 58FA 5802 0B2B 68FA 5804 3F00"            /* .}�mX�X..+h�X.?. */
	$"943B 81FA 5803 5D00 097B FA58 044A 004A"            /* �;��X.].�{�X.J.J */
	$"2F92 F958 021C 0061 F958 0221 006D F958"            /* /��X...a�X.!.m�X */
	$"0321 0015 8EF9 5801 007C FAFF 02B0 9F7B"            /* .!..��X..|��.��{ */
	$"FA6B 0262 075B F96B 0448 0707 678F FB6B"            /* �k.b.[�k.H..g��k */
	$"046B 5D07 07A0 F96B FF07 014F 7AFA 6B05"            /* .k]..��k�..Oz�k. */
	$"3C07 CCFF 779A F96B 021B 208A FA6B 0270"            /* <.��w��k.. ��k.p */
	$"073A F6FF 01C4 95F9 6B03 2E07 787F FA6B"            /* .:��.ĕ�k...x.�k */
	$"033C 071C 8AF9 6B01 256C F8FF 01A1 9BF9"            /* .<..��k.%l��.��� */
	$"6B06 073A FFFF 7691 8FFC 6BFE 6B02 1B49"            /* k..:��v���k�k..I */
	$"71F9 6B01 2B48 F96B 0448 0707 47A2 F96B"            /* q�k.+H�k.H..G��k */
	$"FF07 0087 FA6B 066F 0707 B599 927A FA6B"            /* �..��k.o..���z�k */
	$"024F 0779 F96B 0327 0707 8AF9 6B02 2E07"            /* .O.y�k.'..��k... */
	$"9EF9 6B01 1F07 F6FF 028D 977C F96B 0216"            /* ��k...��.��|�k.. */
	$"3579 FB6B 056B 4F07 9F48 8EFA 6B03 7007"            /* 5y�k.kO.�H��k.p. */
	$"148A FA6B 045D 0750 3D9F F96B 0227 076E"            /* .��k.].P=��k.'.n */
	$"F96B 022E 077A F96B 032E 0722 9BF9 6B01"            /* �k...z�k..."��k. */
	$"0783 FAFF 0284 02A1 8F65 FA51 0258 0049"            /* .���.�.��e�Q.X.I */
	$"F951 0434 0000 587D FA51 0345 0000 90F9"            /* �Q.4..X}�Q.E..�� */
	$"51FF 0001 4064 FA51 0528 00C8 FF65 8BF9"            /* Q�..@d�Q.(.��e�� */
	$"5102 0C11 78FA 5102 5800 2EF6 FF01 BF84"            /* Q...x�Q.X..��.�� */
	$"F951 031F 005E 69FA 5103 2800 1276 F951"            /* �Q...^i�Q.(..v�Q */
	$"0016 005F F8FF 0191 8CF9 5106 002E FFFF"            /* ..._��.���Q...�� */
	$"5E7F 7CF9 5101 0C3A F851 0117 39F9 5104"            /* ^.|�Q..:�Q..9�Q. */
	$"3400 0036 95F9 51FF 0000 71FA 5106 5700"            /* 4..6��Q�..q�Q.W. */
	$"00AD 9681 64FA 5102 3B00 62F9 5103 1700"            /* .���d�Q.;.b�Q... */
	$"0077 F951 021F 0082 F951 0011 0000 F6FF"            /* .w�Q...��Q....�� */
	$"0278 8567 F951 0209 2062 FA51 043B 0091"            /* .x�g�Q.� b�Q.;.� */
	$"387C FA51 0358 0007 77FA 5104 4500 503B"            /* 8|�Q.X..w�Q.E.P; */
	$"8FF9 5102 1700 5DF9 5102 1000 67F9 5103"            /* ��Q...]�Q...g�Q. */
	$"1F00 128B F951 0100 7AFA FF02 A291 69FA"            /* ...��Q..z��.��i� */
	$"5502 5C00 4DFE 55FC 5504 3800 005A 81FA"            /* U.\.M�U�U.8..Z�� */
	$"5503 4900 0092 F955 FF00 0143 67FA 5505"            /* U.I..��U�..Cg�U. */
	$"2B00 C9FF 688D F955 020F 147A FA55 025C"            /* +.��h��U...z�U.\ */
	$"0030 F6FF 01C0 86F9 5503 2100 616E FA55"            /* .0��.���U.!.an�U */
	$"032B 0015 79F9 5501 1A62 F8FF 0194 8EFD"            /* .+..y�U..b��.��� */
	$"55FD 5506 0030 FFFF 6381 80F9 5501 0F3C"            /* U�U..0��c���U..< */
	$"F855 011B 3CF9 5504 3800 003A 97F9 55FF"            /* �U..<�U.8..:��U� */
	$"0000 73FA 5506 5B00 00AE 9784 67FA 5502"            /* ..s�U.[..���g�U. */
	$"3E00 64F9 5503 1B00 0079 F955 0221 0085"            /* >.d�U....y�U.!.� */
	$"F955 0114 00F6 FF03 7B87 6B55 FA55 020B"            /* �U...��.{�kU�U.. */
	$"2466 FA55 043E 0094 3B7F FA55 035C 0009"            /* $f�U.>.�;.�U.\.� */
	$"7AFA 5504 4900 523D 91F9 5502 1B00 61F9"            /* z�U.I.R=��U...a� */
	$"5502 1300 69F9 5503 2100 158D F955 0100"            /* U...i�U.!..��U.. */
	$"7CFA FF02 AC9E 7AFA 6802 6F07 5BF9 6804"            /* |��.��z�h.o.[�h. */
	$"4707 0766 8EFB 6804 685B 0707 9FF9 68FF"            /* G..f��h.h[..��h� */
	$"0701 4F79 FA68 053B 07CC FF77 9AF9 6802"            /* ..Oy�h.;.��w��h. */
	$"1B20 8AFA 6802 6F07 3AF6 FF01 C495 F968"            /* . ��h.o.:��.ĕ�h */
	$"032E 076E 7DFA 6803 3B07 2288 F968 0125"            /* ...n}�h.;."��h.% */
	$"6CF8 FF01 A09A F968 0607 3AFF FF75 908D"            /* l��.���h..:��u�� */
	$"FC68 FE68 011B 49F8 6801 2748 F968 0447"            /* �h�h..I�h.'H�h.G */
	$"0707 46A2 F968 FF07 0080 FA68 066E 0707"            /* ..F��h�..��h.n.. */
	$"B599 9179 FA68 024E 0770 F968 0327 0707"            /* ���y�h.N.p�h.'.. */
	$"8AF9 6802 2E07 94F9 6801 1F07 F6FF 028B"            /* ��h...��h...��.� */
	$"957B F968 0216 2F77 FB68 0568 4E07 9F47"            /* �{�h../w�h.hN.�G */
	$"8DFA 6803 6F07 148A FA68 045B 0759 499E"            /* ��h.o..��h.[.YI� */
	$"F968 0227 076E F968 021F 0778 F968 032E"            /* �h.'.n�h...x�h.. */
	$"0722 9AF9 6801 0783 FAFF 0281 0299 8D64"            /* ."��h..���.�.��d */
	$"F94E 0100 49F9 4E04 3200 0057 7BFA 4E03"            /* �N..I�N.2..W{�N. */
	$"4300 0085 F94E FF00 0140 62FA 4E05 2700"            /* C..��N�..@b�N.'. */
	$"C8FF 658B F94E 020C 0677 FA4E 0255 002E"            /* ��e��N...w�N.U.. */
	$"F6FF 01BE 83F9 4E03 1F00 5A68 FA4E 0327"            /* ��.���N...Zh�N.' */
	$"0012 75F9 4E00 1600 5FF8 FF01 908B F94E"            /* ..u�N..._��.���N */
	$"0600 2EFF FF5E 7C7B F94E 010C 3AF8 4E01"            /* ...��^|{�N..:�N. */
	$"1639 F94E 0432 0000 3692 F94E FF00 006C"            /* .9�N.2..6��N�..l */
	$"FA4E 0654 0000 AD96 8162 FA4E 023A 005C"            /* �N.T..���b�N.:.\ */
	$"F94E 0316 0000 76F9 4E02 1F00 7AF9 4E00"            /* �N....v�N...z�N. */
	$"1000 02F6 FF02 7683 64F9 4EFF 1600 5FFA"            /* ...��.v�d�N�.._� */
	$"4E04 3A00 912E 7AFA 4E03 5500 0776 FA4E"            /* N.:.�.z�N.U..v�N */
	$"0443 005F 3B8F F94E 0221 005D F94E 020C"            /* .C._;��N.!.]�N.. */
	$"005F F94E 031F 0017 8BF9 4E01 007A FAFF"            /* ._�N....��N..z�� */
	$"029B 8F67 F952 0100 4DFE 52FC 5204 3500"            /* .��g�R..M�R�R.5. */
	$"0059 7FFA 5203 4700 0088 F952 FF00 0143"            /* .Y.�R.G..��R�..C */
	$"65FA 5205 2A00 C9FF 688D F952 020F 097A"            /* e�R.*.��h��R..�z */
	$"FA52 025A 0030 F6FF 01BF 85F9 5203 2100"            /* �R.Z.0��.���R.!. */
	$"5C6C FA52 032A 0015 78F9 5201 1A62 F8FF"            /* \l�R.*..x�R..b�� */
	$"0194 8DFD 52FD 5206 0030 FFFF 6280 7DF9"            /* .���R�R..0��b�}� */
	$"5201 0F3C F852 011A 3CF9 5204 3500 0039"            /* R..<�R..<�R.5..9 */
	$"95F9 52FF 0000 6EFA 5206 5800 00AE 9784"            /* ��R�..n�R.X..��� */
	$"65FA 5202 3D00 5EF9 5203 1A00 0079 F952"            /* e�R.=.^�R....y�R */
	$"0221 007D F952 0113 06F6 FF03 7986 6852"            /* .!.}�R...��.y�hR */
	$"FA52 FF1A 0064 FA52 043D 0094 307D FA52"            /* �R�..d�R.=.�0}�R */
	$"035A 0009 79FA 5204 4700 623D 91F9 5202"            /* .Z.�y�R.G.b=��R. */
	$"2400 5FF9 5202 0F00 62F9 5203 2100 1B8D"            /* $._�R...b�R.!..� */
	$"F952 0100 7CFA FF02 A69B 78F9 6501 075B"            /* �R..|��.��x�e..[ */
	$"F965 0445 0707 658D FB65 0465 5A07 0796"            /* �e.E..e��e.eZ..� */
	$"F965 FF07 014E 77FA 6505 3A07 CCFF 7699"            /* �e�..Nw�e.:.��v� */
	$"F965 021B 1388 FA65 026D 073A F6FF 01C4"            /* �e...��e.m.:��.� */
	$"94F9 6503 2E07 687C FA65 033A 0722 88F9"            /* ��e...h|�e.:."�� */
	$"6501 256C F8FF 019F 9AF9 6506 073A FFFF"            /* e.%l��.���e..:�� */
	$"758E 8CFC 65FE 6501 1B49 F865 0126 48F9"            /* u���e�e..I�e.&H� */
	$"6504 4507 0746 A1F9 65FF 0700 79FA 6506"            /* e.E..F��e�..y�e. */
	$"6C07 07B5 9991 77FA 6502 4E07 6DF9 6503"            /* l..���w�e.N.m�e. */
	$"2607 0788 F965 022E 078D F965 011E 10F6"            /* &..��e...��e...� */
	$"FF02 8894 79F9 6502 2527 76FB 6505 654E"            /* �.��y�e.%'v�e.eN */
	$"079F 3C8C FA65 036D 0714 88FA 6504 5A07"            /* .�<��e.m..��e.Z. */
	$"6C49 9EF9 6502 2F07 6DF9 6502 1B07 6EF9"            /* lI��e./.m�e...n� */
	$"6503 2E07 279A F965 0107 83FA FF02 9F02"            /* e...'��e..���.�. */
	$"8E8B 62F9 4A01 0C51 F94A 0430 0000 557A"            /* ��b�J..Q�J.0..Uz */
	$"FA4A 0340 051B 80F9 4AFF 0001 405F FA4A"            /* �J.@..��J�..@_�J */
	$"0526 00C8 FF64 8AF9 4A02 0C06 76FA 4A02"            /* .&.��d��J...v�J. */
	$"5300 2EF6 FF01 BE82 F94A 031F 005A 65FA"            /* S..��.���J...Ze� */
	$"4A03 2600 1275 F94A 0016 0B20 5F75 8A91"            /* J.&..u�J... _u�� */
	$"918F 8AFF FF8F 8BF9 4A06 002E FFFF 487B"            /* ��������J...��H{ */
	$"79F9 4A01 1044 F84A 0116 47F9 4A04 3000"            /* y�J..D�J..G�J.0. */
	$"0035 92F9 4A02 0015 72FA 4A06 5100 00AD"            /* .5��J...r�J.Q..� */
	$"9680 5FFA 4A02 3900 55F9 4A03 1500 0675"            /* ��_�J.9.U�J....u */
	$"F94A 021F 0073 F94A 0010 0012 F6FF 0273"            /* �J...s�J....��.s */
	$"8162 F94A 0233 1F5D FA4A 0439 00A6 2979"            /* �b�J.3.]�J.9.�)y */
	$"FA4A 0353 0007 75FA 4A04 4000 5F3B 8EF9"            /* �J.S..u�J.@._;�� */
	$"4A02 1F00 5CF9 4A02 0C00 59F9 4A03 1F00"            /* J...\�J...Y�J... */
	$"2E8B F94A 0B00 2B63 798C 9191 8A9F 908D"            /* .��J..+cy������� */
	$"65F9 4F01 0F53 FE4F FC4F 0433 0000 587C"            /* e�O..S�O�O.3..X| */
	$"FA4F 0345 071E 83F9 4FFF 0001 4363 FA4F"            /* �O.E..��O�..Cc�O */
	$"0529 00C9 FF67 8CF9 4F02 0F09 78FA 4F02"            /* .).��g��O..�x�O. */
	$"5800 30F6 FF01 BF85 F94F 0321 005C 68FA"            /* X.0��.���O.!.\h� */
	$"4F03 2900 1577 F94F 0C1A 2262 778C 9494"            /* O.)..w�O.."bw��� */
	$"918B FFFF 928D FD4F FD4F 0600 30FF FF4C"            /* �������O�O..0��L */
	$"7F7C F94F 0112 46F8 4F01 1A49 F94F 0433"            /* .|�O..F�O..I�O.3 */
	$"0000 3895 F94F 0202 1775 FA4F 0655 0000"            /* ..8��O...u�O.U.. */
	$"AE97 8363 FA4F 023C 0058 F94F 0319 0008"            /* ���c�O.<.X�O.... */
	$"78F9 4F02 2100 77F9 4F01 1215 F6FF 0377"            /* x�O.!.w�O...��.w */
	$"8465 4FFA 4F02 3622 61FA 4F04 3C00 A82B"            /* �eO�O.6"a�O.<.�+ */
	$"7BFA 4F03 5800 0978 FA4F 0445 0062 3D90"            /* {�O.X.�x�O.E.b=� */
	$"F94F 0221 005F F94F 020F 005B F94F 0321"            /* �O.!._�O...[�O.! */
	$"0030 8DF9 4F0B 002E 657B 8F94 948C A09C"            /* .0��O...e{������ */
	$"9A77 F963 001B F863 0444 0707 648B FB63"            /* �w�c..�c.D..d��c */
	$"0463 5812 2A91 F963 FF07 014E 75FA 6305"            /* .cX.*��c�..Nu�c. */
	$"3907 CCFF 7699 F963 021B 1387 FA63 026B"            /* 9.��v��c...��c.k */
	$"073A F6FF 01C4 94F9 6303 2E07 6879 FA63"            /* .:��.Ĕ�c...hy�c */
	$"0339 0722 87F9 630C 252C 6C81 99A0 A09E"            /* .9."��c.%,l����� */
	$"94FF FF9E 99F9 6306 073A FFFF 5A8D 8BFC"            /* ������c..:��Z��� */
	$"63FE 6301 1F54 F863 0126 57F9 6304 4407"            /* c�c..T�c.&W�c.D. */
	$"0745 A0F9 6302 0C25 81FA 6306 6907 07B5"            /* .E��c..%��c.i..� */
	$"9991 75FA 6302 4D07 65F9 6303 2507 1388"            /* ��u�c.M.e�c.%..� */
	$"F963 022E 0785 F963 011E 22F6 FF02 8692"            /* �c...��c.."��.�� */
	$"77F9 6302 4432 73FB 6305 634D 07AF 368A"            /* w�c.D2s�c.cM.�6� */
	$"FA63 036B 0714 87FA 6304 5807 6C49 9CF9"            /* �c.k..��c.X.lI�� */
	$"6302 2E07 6DF9 6302 1B07 67F9 6303 2E07"            /* c...m�c...g�c... */
	$"3A99 F963 0807 386E 859B A0A0 98A4 024C"            /* :��c..8n������.L */
	$"0275 6855 EF48 0534 0000 3E5F 4CF0 4804"            /* .uhU�H.4..>_L�H. */
	$"4700 003F 5DFA 4805 2600 C8FF 648A F948"            /* G..?]�H.&.��d��H */
	$"020C 0583 FA48 0252 003B F6FF 01BE 82F9"            /* ...��H.R.;��.��� */
	$"4803 1F00 5062 FA48 0326 0012 75F9 4800"            /* H...Pb�H.&..u�H. */
	$"4600 4FFC 5105 1147 FFFF 8F8B F948 0600"            /* F.O�Q..G�����H.. */
	$"2EFF FF47 7379 E448 052E 0000 2867 53F0"            /* .��Gsy�H....(gS� */
	$"4806 4400 00AF 9680 5DFA 4803 3900 4D64"            /* H.D..���]�H.9.Md */
	$"FA48 0315 0012 75F9 4803 1F00 6759 FA48"            /* �H....u�H...gY�H */
	$"000F 0012 F6FF 037C 4545 4CF9 4801 524C"            /* ....��.|EEL�H.RL */
	$"FA48 0439 00AD 2977 FA48 0352 0007 75FA"            /* �H.9.�)w�H.R..u� */
	$"4804 3F00 5F3B 8DF9 4802 1F00 5BF9 4802"            /* H.?._;��H...[�H. */
	$"0C00 58F9 4803 1F00 2E8A F948 0042 FB51"            /* ..X�H....��H.B�Q */
	$"0400 7077 6C59 F44C FC4C 0536 0000 4262"            /* ..pwlY�L�L.6..Bb */
	$"4FF0 4C04 4A00 0042 61FA 4C05 2900 C9FF"            /* O�L.J..Ba�L.).�� */
	$"678C F94C 020F 0885 FA4C 0255 003D F6FF"            /* g��L...��L.U.=�� */
	$"01BF 84F9 4C03 2100 5265 FA4C 0329 0015"            /* .���L.!.Re�L.).. */
	$"77F9 4C01 4953 FC54 0513 49FF FF92 8DFD"            /* w�L.IS�T..I����� */
	$"4CFD 4C06 0030 FFFF 4A77 7CE4 4C05 3000"            /* L�L..0��Jw|�L.0. */
	$"002A 6B57 F04C 0647 0000 B097 8261 FA4C"            /* .*kW�L.G..���a�L */
	$"033C 004F 67FA 4C03 1700 1577 F94C 0321"            /* .<.Og�L....w�L.! */
	$"0069 5BFA 4C01 1215 F6FF 037F 4848 4FF9"            /* .i[�L...��..HHO� */
	$"4C01 554F FA4C 043C 00AE 2B7A FA4C 0355"            /* L.UO�L.<.�+z�L.U */
	$"0009 77FA 4C04 4300 623D 8FF9 4C02 2100"            /* .�w�L.C.b=��L.!. */
	$"5EF9 4C02 0F00 5AF9 4C03 2100 308C F94C"            /* ^�L...Z�L.!.0��L */
	$"0046 FB54 0403 7186 7A6B EF5F 0546 0707"            /* .F�T..q�zk�_.F.. */
	$"4F71 64FC 5FF5 5F04 5D07 074E 73FA 5F05"            /* Oqd�_�_.]..Ns�_. */
	$"3907 CCFF 7699 F95F 021B 1294 FA5F 0269"            /* 9.��v��_...��_.i */
	$"0745 F6FF 01C4 92F9 5F03 2E07 5F77 FA5F"            /* .E��.Ē�_..._w�_ */
	$"0339 0722 87F9 5F01 5D67 FC68 0520 53FF"            /* .9."��_.]g�h. S� */
	$"FF9E 99F9 5F06 073A FFFF 5B87 8CFC 5FE9"            /* ����_..:��[���_� */
	$"5F05 3F07 0738 7969 F05F 065B 0707 B799"            /* _.?..8yi�_.[..�� */
	$"9173 FA5F 034C 075B 79FA 5F03 2507 2287"            /* �s�_.L.[y�_.%."� */
	$"F95F 032E 0778 6EFA 5F01 1D22 F6FF 038E"            /* �_...xn�_.."��.� */
	$"5A57 63F9 5F01 6964 FB5F 055F 4C07 B535"            /* ZWc�_.id�_._L.�5 */
	$"8AFA 5F03 6907 1486 FA5F 0457 076C 499C"            /* ��_.i..��_.W.lI� */
	$"F95F 022E 076C F95F 021B 0766 F95F 032E"            /* �_...l�_...f�_.. */
	$"073A 99F9 5F00 5AFB 6801 0C76 024D 04AD"            /* .:��_.Z�h..v.M.� */
	$"1D1A 3C49 F344 084C 3300 0090 1D22 344C"            /* ..<I�D.L3..�."4L */
	$"F144 0407 0045 3F5B FA44 0524 00C8 FF64"            /* �D...E?[�D.$.��d */
	$"88F9 4402 0C00 91FA 4402 4F00 48F6 FF01"            /* ��D...��D.O.H��. */
	$"BD81 F944 031F 0048 5FFA 4403 2400 2473"            /* ���D...H_�D.$.$s */
	$"F844 FB44 050C 47FF FF8E 88F9 4408 002E"            /* �D�D..G�����D... */
	$"FFFF 943D 2C31 4EE7 4407 3000 029B 381F"            /* ���=,1N�D.0..�8. */
	$"2F49 F244 0743 0A00 6BFF 967D 5AFA 4403"            /* /I�D.C�.k��}Z�D. */
	$"3600 4362 FA44 0313 0017 73F9 4403 1F00"            /* 6.Cb�D....s�D... */
	$"585A FA44 000D 0024 F6FF 05E1 6317 1935"            /* XZ�D...$��.�c..5 */
	$"49F2 4404 3600 AD28 75FA 4403 4F00 0671"            /* I�D.6.�(u�D.O..q */
	$"FA44 043C 005F 3B8B F944 021F 0059 F944"            /* �D.<._;��D...Y�D */
	$"030C 0057 4EFA 4403 1F00 2C88 F244 0600"            /* ...WN�D...,��D.. */
	$"70AE 1F1D 3F4E F648 FE48 0850 3600 0091"            /* p�..?N�H�H.P6..� */
	$"1F25 3850 F248 0547 0900 4842 5EFA 4805"            /* .%8P�H.G�.HB^�H. */
	$"2700 C9FF 678B F948 020F 0094 FA48 0253"            /* '.��g��H...��H.S */
	$"004A F6FF 01BE 84F9 4803 2100 4A63 FA48"            /* .J��.���H.!.Jc�H */
	$"0327 0027 76F2 4805 0F49 FFFF 908B FD48"            /* .'.'v�H..I�����H */
	$"FD48 0800 30FF FF96 4030 3552 E748 0733"            /* �H..0���@05R�H.3 */
	$"0006 9E3A 2132 4EF2 4807 470C 006D FF97"            /* ..�:!2N�H.G..m�� */
	$"815E FA48 033A 0045 65FA 4803 1600 1B77"            /* �^�H.:.Ee�H....w */
	$"F948 0321 005A 5EFA 4801 1127 F6FF 03E1"            /* �H.!.Z^�H..'��.� */
	$"651A 1C01 394E F248 043A 00AE 2A78 FA48"            /* e...9N�H.:.�*x�H */
	$"0353 0009 75FA 4804 4000 623D 8DF9 4802"            /* .S.�u�H.@.b=��H. */
	$"2100 5BF9 4803 0F00 5952 FA48 0321 002F"            /* !.[�H...YR�H.!./ */
	$"8BF2 4806 0071 B42E 2B51 62F3 5C08 6446"            /* ��H..q�.+Qb�\.dF */
	$"0709 972A 3547 63FD 5CF6 5C05 5913 0753"            /* .Ɨ*5Gc�\�\.Y..S */
	$"4D70 FA5C 0538 07CC FF76 98F9 5C02 1B07"            /* Mp�\.8.��v��\... */
	$"A0FA 5C02 6707 50F6 FF01 C392 F95C 032E"            /* ��\.g.P��.Ò�\.. */
	$"0759 75FA 5C03 3807 3286 F25C 051B 53FF"            /* .Yu�\.8.2��\..S� */
	$"FF9C 98F9 5C08 073A FFFF A055 3F45 65FE"            /* ����\..:���U?Ee� */
	$"5CEA 5C07 4307 10A4 4331 4261 F25C 075B"            /* \�\.C..�C1Ba�\.[ */
	$"1707 76FF 998F 70FA 5C03 4A07 5076 FA5C"            /* ..v���p�\.J.Pv�\ */
	$"0322 0727 87F9 5C03 2E07 6670 FA5C 011C"            /* .".'��\...fp�\.. */
	$"32F6 FF05 E171 2728 4A62 F35C 055C 4A07"            /* 2��.�q'(Jb�\.\J. */
	$"B535 86FA 5C03 6707 1384 FA5C 0453 076C"            /* �5��\.g..��\.S.l */
	$"499A F95C 022E 0769 F95C 031B 0765 65FA"            /* I��\...i�\...ee� */
	$"5C03 2E07 3998 F25C 0107 7602 9D07 FFA6"            /* \...9��\..v.�.�� */
	$"1200 0930 3948 F940 0E4C 3C2A 0B00 0891"            /* ..�09H�@.L<*...� */
	$"FFC5 2900 001E 3A4C F940 0946 4330 1100"            /* ��)...:L�@�FC0.. */
	$"0065 C83E 4FFA 3B05 1D00 C8FF 647F F93B"            /* .e�>O�;...��d.�; */
	$"0208 0084 FA3B 0240 0048 F6FF 01BD 7CF9"            /* ...��;.@.H��.�|� */
	$"3B03 1600 4751 FA3B 031D 002E 6EF8 3BFB"            /* ;...GQ�;....n�;� */
	$"3B05 0847 FFFF 8E80 F93B 0100 2EFE FF06"            /* ;..G�����;...��. */
	$"851F 0002 2634 47EE 400E 4543 3017 000D"            /* �...&4G�@.EC0... */
	$"A5FF D94F 0000 203D 50F8 400A 4733 1F00"            /* ���O.. =P�@�G3.. */
	$"007D FFFF 967D 50FA 3B03 2B00 3651 FA3B"            /* .}���}P�;.+.6Q�; */
	$"0310 002E 6FF9 3B03 1600 4A4A FA3B 000B"            /* ....o�;...JJ�;.. */
	$"002E F5FF 07E0 8019 0009 1B2B 32F5 3B04"            /* ..��.��..�.+2�;. */
	$"2B00 AD27 6FFA 3B03 4000 0666 FA3B 0432"            /* +.�'o�;.@..f�;.2 */
	$"0062 4986 F93B 0216 0051 F93B FF00 0154"            /* .bI��;...Q�;�..T */
	$"4EFA 3B03 1600 2C80 F23B 0900 70FF A815"            /* N�;...,��;�.p��. */
	$"000B 323C 4DF9 450E 5040 2E0D 000A 92FF"            /* ..2<M�E.P@...� */
	$"C52B 0001 213D 4FF9 4509 4947 3313 0002"            /* �+..!=O�E�IG3... */
	$"67C8 4052 FA3E 0520 00C9 FF66 82F9 3E02"            /* g�@R�>. .��f��>. */
	$"0A00 86FA 3E02 4500 4AF6 FF01 BE80 F93E"            /* �.��>.E.J��.���> */
	$"0319 004A 54FA 3E03 2000 3071 F23E 050A"            /* ...JT�>. .0q�>.� */
	$"49FF FF90 82FD 3EFD 3E01 0030 FEFF 0687"            /* I�����>�>..0��.� */
	$"2100 0629 384C EE45 0E49 4733 1A00 10A6"            /* !..)8L�E.IG3...� */
	$"FFDB 5101 0024 4253 F845 0A4C 3621 0001"            /* ��Q..$BS�E�L6!.. */
	$"7FFF FF97 8154 FA3E 032F 003A 54FA 3E03"            /* .����T�>./.:T�>. */
	$"1300 3071 F93E 0319 004D 4FFA 3E01 0D30"            /* ..0q�>...MO�>..0 */
	$"F5FF 02E0 821B 0400 0B1E 2F35 F53E 042F"            /* ��.��...../5�>./ */
	$"00AE 2A71 FA3E 0345 0009 69FA 3E04 3600"            /* .�*q�>.E.�i�>.6. */
	$"644C 88F9 3E02 1900 54F9 3E03 0100 5752"            /* dL��>...T�>...WR */
	$"FA3E 0319 002F 82F2 3E09 0071 FFAD 2008"            /* �>.../��>�.q�� . */
	$"1640 5062 F95A 0F64 543D 1707 1598 FFC8"            /* .@Pb�Z.dT=...��� */
	$"3609 0B2F 4F64 5AFA 5A09 5E5B 441F 070C"            /* 6�./OdZ�Z�^[D... */
	$"70CC 4D65 FA52 052F 07CC FF75 90F9 5202"            /* p�Me�R./.��u��R. */
	$"1607 94FA 5202 5807 50F6 FF01 C38E F952"            /* ..��R.X.P��.Î�R */
	$"0325 0759 66FA 5203 2F07 3A83 F252 0516"            /* .%.Yf�R./.:��R.. */
	$"53FF FF9C 90F9 5201 073A FEFF 068F 2B07"            /* S�����R..:��.�+. */
	$"1038 485F EE5A 0E5D 5B44 2507 1BAC FFDC"            /* .8H_�Z.][D%..��� */
	$"5B0B 0731 5367 F85A 0A5F 482F 090B 85FF"            /* [..1Sg�Z�_H/�.�� */
	$"FF99 8F66 FA52 033E 0746 66FA 5203 1F07"            /* ���f�R.>.Ff�R... */
	$"3A83 F952 0325 075B 62FA 5201 1A3A F5FF"            /* :��R.%.[b�R..:�� */
	$"07E0 8824 0716 2A3F 46F6 5205 523E 07B5"            /* .��$..*?F�R.R>.� */
	$"3481 FA52 0358 0713 7AFA 5204 4907 6E52"            /* 4��R.X..z�R.I.nR */
	$"96F9 5202 2507 64F9 5203 0B07 6363 FA52"            /* ��R.%.d�R...cc�R */
	$"0325 0739 90F2 5201 0776 026E FFFF 02DD"            /* .%.9��R..v.n��.� */
	$"9438 FE00 0113 16FD 1201 1910 FE00 0233"            /* �8�....�....�..3 */
	$"8EDD FDFF 06AD 5202 0000 071D FC12 0919"            /* ����.�R.....�.�. */
	$"0100 001A 75CD FFCD 38F7 2E03 CDFF 6D3A"            /* ....u���8�..��m: */
	$"F72E 0035 F82E 0069 F6FF 01C1 49F7 2E00"            /* �..5�..i��.�I�.. */
	$"35F7 2E01 5439 F82E FA2E 0468 FFFF 8638"            /* 5�..T9�.�..h���8 */
	$"F82E 0054 FCFF 06A5 4408 0000 0C16 FD12"            /* �..T��.�D.....�. */
	$"FF19 0405 0005 161D FD12 0116 13FE 0002"            /* �.......�....�.. */
	$"1F87 DDFD FF06 C266 0900 0005 21FD 1207"            /* .����.�f�...!�.. */
	$"1B19 0100 000B 61C7 FEFF 01A6 51F7 2E00"            /* ......a���.�Q�.. */
	$"32F7 2E01 5439 F72E 0033 F82E 0054 F3FF"            /* 2�..T9�..3�..T�� */
	$"04DF 9455 3008 F700 FE12 0417 2EB8 3B33"            /* .ߔU0.�.�....�;3 */
	$"F82E FF30 F82E 0290 693E F72E 0032 F72E"            /* �.�0�..�i>�..2�. */
	$"0033 F72E 0153 38F1 2E05 88FF FFDD 953A"            /* .3�..S8�..���ݕ: */
	$"FE00 0115 1AFD 1501 1C12 FE00 0235 8FDD"            /* �....�....�..5�� */
	$"FDFF 06AE 5406 0000 0920 FC15 091C 0300"            /* ��.�T...� �.�... */
	$"001C 76CE FFCD 3AF7 3003 CEFF 6F3C F730"            /* ..v���:�0.��o<�0 */
	$"0038 F830 006C F6FF 01C2 4DF7 3000 38F7"            /* .8�0.l��.�M�0.8� */
	$"3001 573C F130 046B FFFF 873A FD30 FC30"            /* 0.W<�0.k���:�0�0 */
	$"0057 FCFF 06A6 450A 0000 0F1A FD15 FF1C"            /* .W��.�E�....�.�. */
	$"0407 0007 1A20 FD15 011A 15FE 0002 2188"            /* ..... �....�..!� */
	$"DDFD FF06 C368 0B00 0007 24FD 1507 1E1C"            /* ���.�h....$�.... */
	$"0300 000D 63C7 FEFF 01A8 54F7 3000 34F7"            /* ....c���.�T�0.4� */
	$"3001 573C F730 0035 F830 0057 F3FF 00DF"            /* 0.W<�0.5�0.W��.� */
	$"0395 5732 0AF7 00FE 1504 1B30 B93E 35F8"            /* .�W2��.�...0�>5� */
	$"30FF 32F8 3002 926C 42F7 3000 34F7 3000"            /* 0�2�0.�lB�0.4�0. */
	$"35F7 3001 553A F130 0A8A FFFF DE9B 4407"            /* 5�0.U:�0��ޛD. */
	$"0708 2126 FD22 0128 1EFE 0702 3E96 DEFD"            /* ..!&�".(.�..>��� */
	$"FF05 B35C 1007 0714 002B FC22 0927 0D07"            /* �.�\.....+�"�'.. */
	$"0726 7CD2 FFD1 46F7 3A03 D1FF 7C47 F73A"            /* .&|���F�:.��|G�: */
	$"0043 F83A 0071 F6FF 01C8 59F7 3A00 43F7"            /* .C�:.q��.�Y�:.C� */
	$"3A01 6148 F13A 0473 FFFF 9446 F83A 0061"            /* :.aH�:.s���F�:.a */
	$"FCFF 04AB 4F15 0707 011B 26FD 22FF 2804"            /* ��.�O.....&�"�(. */
	$"1207 1226 2BFD 2201 2621 FE07 022B 8FDE"            /* ...&+�".&!�..+�� */
	$"FDFF 06C7 6F16 0707 1230 FD22 072A 270D"            /* ��.�o....0�".*'. */
	$"0707 1769 CAFE FF01 AA62 F73A 003F F73A"            /* ...i���.�b�:.?�: */
	$"0161 48F7 3A00 40F8 3A00 61F3 FF04 DF9B"            /* .aH�:.@�:.a��.ߛ */
	$"5F3C 15F7 07FF 2205 2227 3ABF 4842 F83A"            /* _<.�.�"."':�HB�: */
	$"013C 3DF8 3A02 9871 4DF7 3A00 3FF7 3A00"            /* .<=�:.�qM�:.?�:. */
	$"40F7 3A01 5F46 F13A 008F 00E9 FCFF 03D6"            /* @�:._F�:.�.���.� */
	$"B083 58FB 4803 5C8A ADD4 F8FF 03DD BB97"            /* ��X�H.\�����.ݻ� */
	$"68FB 4803 5076 A2CA ABFF E3FF 02C1 905A"            /* h�H.Pv�ʫ���.��Z */
	$"FB48 0454 717A 7158 FB48 0358 83A2 CAF8"            /* �H.TqzqX�H.X���� */
	$"FF04 DFB8 926B 4CFC 4803 5071 9EBF CEFF"            /* �.߸�kL�H.Pq���� */
	$"EDFF 05CA ADC4 C8C8 CBA6 FF03 D7B2 855A"            /* ��.ʭ���˦�.ײ�Z */
	$"FB4A 005E 028B AED4 F8FF 03DD BD98 6BFB"            /* �J.^.�����.ݽ�k� */
	$"4A03 5278 A3CB 9BFF F3FF 02C2 915C FB4A"            /* J.Rx�˛���.\�J */
	$"0455 737C 735A FB4A 035A 85A3 CBF8 FF04"            /* .Us|sZ�J.Z�����. */
	$"DFB9 926D 4DFC 4A03 5273 9FC0 BEFF FDFF"            /* ߹�mM�J.Rs������ */
	$"05CB AEC5 C9C9 CBA6 FF03 D8B7 8B63 FB50"            /* .ˮ���˦�.ط�c�P */
	$"0366 8FB5 D6F8 FF03 DEC2 9C73 FB50 0359"            /* .f�����.�s�P.Y */
	$"7FA9 CE8D FF01 C796 0065 FB50 045E 7B83"            /* .�΍�.ǖ.e�P.^{� */
	$"7B63 FB50 0363 8BA9 CEF8 FF04 DFC0 9776"            /* {c�P.c�����.���v */
	$"53FC 5003 597B A3C4 BAFF 05CE B5CA CCCC"            /* S�P.Y{�ĺ�.ε��� */
	$"CEFB FFB1 FF00 00FF"                                /* �����..� */
};

data 'PICT' (8003, "gather dialog header", purgeable) {
	$"6A80 0000 0000 0025 01AB 0011 02FF 0C00"            /* j�.....%.�...�.. */
	$"FFFE 0000 0048 0000 0048 0000 0000 0000"            /* ��...H...H...... */
	$"0025 01AB 0000 0000 0001 000A 0000 0000"            /* .%.�.......�.... */
	$"0025 01AB 009A 0000 00FF 86AC 0000 0000"            /* .%.�.�...���.... */
	$"0025 01AB 0000 0004 0000 0000 0048 0000"            /* .%.�.........H.. */
	$"0048 0000 0010 0020 0003 0008 0000 0000"            /* .H..... ........ */
	$"0000 0000 0000 0000 0000 0000 0025 01AB"            /* .............%.� */
	$"0000 0000 0025 01AB 0040 00A9 E0FF 00E2"            /* .....%.�.@.���.� */
	$"FDD9 FED8 00DF ABFF 89FF 00E0 FDD9 FED8"            /* ����.߫���.����� */
	$"00E2 9EFF 00DC FED9 FED8 00DE F1FF 00DB"            /* .��.�����.���.� */
	$"FED9 FED8 00DD FEFF 00DD FDD9 FFD8 00DC"            /* ����.���.�����.� */
	$"C4FF 01E2 DBFD D9FF D800 E0D6 FF81 FFDE"            /* ��.������.������ */
	$"FF01 E0DB FED9 FED8 00E2 ADFF F2FF 00DC"            /* �.������.����.� */
	$"FDD9 FFD8 00DE F1FF 00DB FDD9 FFD8 00DD"            /* ����.���.�����.� */
	$"FEFF 01DD DBFE D9FF D800 DCC4 FF00 E3FE"            /* ��.������.���.�� */
	$"DCFE DB01 D9E0 81FF B3FF 02E1 DCDC FDDB"            /* ���.������.����� */
	$"01D9 E2D8 FFC7 FF01 DDDC FCDB 00DF F1FF"            /* .������.����.��� */
	$"01DD DCFC DB00 DEFE FF02 DEDC DCFD DB00"            /* .����.���.�����. */
	$"DDE6 FF00 FF03 73FA FF04 D7C0 B0A2 97FE"            /* ���.�.s��.������ */
	$"A303 AAAF AFB2 FEBB 03C3 C9C9 D7FD FF11"            /* �.������.������. */
	$"CDA0 887A 7571 6E69 6663 5D58 6982 96CE"            /* ͠�zuqnifc]Xi��� */
	$"FFC9 FAC5 FCC7 F8C8 FEC5 FEC7 FCC8 FDC5"            /* ���������������� */
	$"FEC7 FEC8 01C4 E0FA C5FD C7FA C807 C7C9"            /* ����.��������.�� */
	$"C5C5 B8B7 B7B3 FEA9 069C 9998 988C A4BB"            /* �Ÿ�����.������� */
	$"00D7 F0FF 0DBE A09E 8F8E 8080 7175 8190"            /* .���.�������qu�� */
	$"9FAD C3F8 FF00 D4FB C5FC C7FC C8F9 C5FC"            /* �����.���������� */
	$"C7FA C800 C7FE C5FE C7FC C8FD C5FE C7FD"            /* ���.������������ */
	$"C800 C7FE C5FE C7FD C800 C9FE FF0B E2C3"            /* �.�������.���.�� */
	$"9785 7973 706D 6865 625C 045A 6E85 A0D8"            /* ��yspmheb\.Zn��� */
	$"FCFF 06CA C5C5 BAB7 B7B3 FEA9 079E 9998"            /* ��.��ź�����.��� */
	$"988D A1BA D4FB FF00 C7FE C5FE C7FD C8FD"            /* �������.�������� */
	$"C5FE C7FD C800 C4F0 FF04 CFBE AE9F 9AFE"            /* �����.���.Ͼ���� */
	$"A303 ADAF AFB4 FEBB 03C5 C9C8 DEFE FF0F"            /* �.������.������. */
	$"D6AB 8B7C 7671 6E6B 6663 5E59 647B 94BF"            /* ֫�|vqnkfc^Yd{�� */
	$"F9FF 07D1 A587 7A76 716E 6912 6563 5F5F"            /* ��.ѥ�zvqni.ec__ */
	$"6479 7773 726F 6B67 635F 5A62 768E B6FD"            /* dywsrokgc_Zbv��� */
	$"FF00 D5FB C5FC C7FA C800 D5FA FF04 D8C1"            /* �.�������.���.�� */
	$"B2A4 99FE A403 ACB0 B0B3 FEBD 03C3 CACA"            /* �����.������.��� */
	$"D7FD FF11 CDA2 8C7D 7875 716D 6966 615B"            /* ���.͢�}xuqmifa[ */
	$"6D85 98CE FFCA F9C7 FAC8 FBC9 FDC7 FDC8"            /* m��������������� */
	$"FFC9 00C8 FDC7 00C8 FEC8 FFC9 01C5 E0FA"            /* ��.���.�����.��� */
	$"C7FB C8FC C907 C7CA C7C7 B9B8 B8B4 FEAA"            /* �����.���ǹ����� */
	$"009F FE9A 038E A5BD D7F0 FF0D BFA1 9F91"            /* .���.������.���� */
	$"9083 8373 7784 92A0 AFC4 F8FF 01D4 C5FB"            /* ���sw�������.��� */
	$"C7FB C8FF C901 C8C5 FAC7 FAC8 FCC9 00C8"            /* �����.��������.� */
	$"FDC7 FFC8 FFC8 FEC9 FDC7 FCC8 FFC9 00C8"            /* ��������������.� */
	$"FDC7 FDC8 FFC9 00CA FEFF 10E2 C399 887C"            /* ������.���.�Ù�| */
	$"7773 706C 6865 5F5D 7187 A1D8 FCFF 06CB"            /* wsplhe_]q�����.� */
	$"C7C7 BBB8 B8B4 FEAA 00A0 FE9A 038F A3BB"            /* �ǻ�����.���.��� */
	$"D4FB FF00 C8FD C7FD C8FF C9FC C7FD C8FF"            /* ���.������������ */
	$"C900 C5F0 FF04 D1BF AFA1 9CFE A402 AFB0"            /* �.���.ѿ�����.�� */
	$"B000 B5FE BD03 C7CA C9DF FEFF 0FD6 AC8D"            /* �.���.������.֬� */
	$"8079 7571 6E69 6662 5C67 7F96 C0F9 FF1A"            /* �yuqnifb\g.����. */
	$"D2A8 8A7D 7975 716D 6866 6363 677C 7A77"            /* Ҩ�}yuqmhfccg|zw */
	$"7672 6E6B 6663 5E65 7890 B8FD FF00 D5FA"            /* vrnkfc^ex����.�� */
	$"C7FB C8FC C900 D5FA FF04 D9C7 B9AD A4FE"            /* �����.���.�ǹ��� */
	$"AE03 B4B8 B8BA FEC3 03C9 CDCD D9FD FF0B"            /* �.������.������. */
	$"D1AC 988C 8885 827F 7C79 7570 057F 92A3"            /* Ѭ�����.|yup..�� */
	$"D2FF CDF7 CBF9 CCFE CDFC CBFD CC01 CDCC"            /* �������������.�� */
	$"FCCB FCCC 01CA E1F8 CBFA CCFF CD07 CBCD"            /* ����.��������.�� */
	$"CBCB C0BF BFBB FEB3 00A9 FEA5 039B AFC3"            /* ��������.���.��� */
	$"D9F0 FF0D C3AB AA9E 9C91 9185 8892 9FAA"            /* ���.ë���������� */
	$"B7C9 F8FF 00D6 00CA F9CB FACC 00CA F7CB"            /* ����.�.�����.��� */
	$"FACC FFCD 00CC FBCB FECC 01CD CCFB CBFE"            /* ����.�����.����� */
	$"CCFF CD00 CCFC CBFD CCFF CDFE FF10 E2C9"            /* ���.���������.�� */
	$"A496 8B87 8481 7F7B 7873 7182 96AA DBFC"            /* ������.{xsq����� */
	$"FF06 CECB CBC1 BFBF BBFE B300 AAFE A503"            /* �.���������.���. */
	$"9BAD C1D6 FBFF 00CC FCCB FFCC FFCC 00CD"            /* ������.�������.� */
	$"FBCB FDCC 01CD CAF0 FF04 D3C4 B7AA A6FE"            /* ����.����.�ķ��� */
	$"AE03 B7B8 B8BB FEC3 03CB CDCC DFFE FF0F"            /* �.������.������. */
	$"D8B5 9A8E 8A85 8280 7C79 7771 7A8D A1C4"            /* ص������|ywqz��� */
	$"F9FF 1AD4 B097 8C8A 8582 807B 7977 777B"            /* ��.԰������{yww{ */
	$"8C8A 8686 8380 7D79 7773 7888 9CBE FDFF"            /* ������}ywsx����� */
	$"00D7 F9CB FACC FECD 00D7 0443 FCFF 06D2"            /* .�������.�.C��.� */
	$"A986 817D 7878 FD77 FE76 FD75 1B6E 2A96"            /* ���}xx�w�v�u.n*� */
	$"FFE1 C2A2 8F8B 8D8F 9196 9492 9190 8B7B"            /* ��¢�����������{ */
	$"6850 4646 7B82 716D 6EFE 6FFE 70FE 71FA"            /* hPFF{�qmn�o�p�q� */
	$"7204 703C 716E 6FFE 7014 7172 7240 2F76"            /* r.p<qno�p.qrr@/v */
	$"6E6F 6F70 7071 7272 5E12 D982 6F6D 6EFE"            /* nooppqrr^.قomn� */
	$"6FFF 70FE 71FC 7202 3E1A 83FE 72FE 71FF"            /* o�p�q�r.>.��r�q� */
	$"6F07 6E6C 6B6B 6964 5950 0349 589B D7F3"            /* o.nlkkidYP.IX��� */
	$"FF11 9F82 8281 8180 7F7D 766E 625B 5852"            /* �.������.}vnb[XR */
	$"5275 9BCC FCFF 03B0 796E 6EFE 6FFE 70FF"            /* Ru����.�ynn�o�p� */
	$"71FC 7203 676C 6D6E FE6F FF70 FD71 FA72"            /* q�r.glmn�o�p�q�r */
	$"315C 586E 6F6F 7070 7172 7259 136F 6D6F"            /* 1\XnooppqrrY.omo */
	$"6F70 7071 7272 6825 4C71 6E6F 7070 7171"            /* oppqrrh%Lqnoppqq */
	$"7272 4432 FFDE BA99 8E8B 8E90 9295 9492"            /* rrD2�޺��������� */
	$"9190 8606 7762 4A45 4D8D CDFE FF03 8C73"            /* ���.wbJEM����.�s */
	$"7272 FE71 FF6F 0B6E 6C6C 6B69 645A 5149"            /* rr�q�o.nllkidZQI */
	$"5594 D3FE FF16 826E 6E6F 6F70 7171 7271"            /* U����.�nnoopqqrq */
	$"3533 796E 6F70 7071 7172 7252 09F3 FF05"            /* 53ynoppqqrrR���. */
	$"E1C9 9F84 807C FB77 FE76 FD75 1765 1BC8"            /* �ɟ��|�w�v�u.e.� */
	$"FFCC A58F 8D8C 8F91 9694 9291 908C 7C6D"            /* �̥�����������|m */
	$"5546 4368 B6FD FF09 C8A0 8F8C 8D90 9196"            /* UFCh����Ƞ������ */
	$"9494 1C92 918E 8783 868C 8F94 9594 9290"            /* ��.������������� */
	$"8E82 6E5C 4843 57A3 DFFF B677 6C6E 6F6F"            /* ��n\HCW����wlnoo */
	$"FE70 FE71 FC72 026C 2696 FCFF 07D2 AA88"            /* �p�q�r.l&���.Ҫ� */
	$"8481 7B7A 7AFB 79FE 781C 7771 2E97 FFE1"            /* ��{zz�y�x.wq.��� */
	$"C3A3 918D 8F92 9598 9795 9592 8D7F 6C54"            /* ã�����������.lT */
	$"4A49 7D84 7570 71FE 72FE 73FE 75FA 7604"            /* JI}�upq�r�s�u�v. */
	$"733F 7571 72FE 7309 7576 7644 3178 7172"            /* s?uqr�s�uvvD1xqr */
	$"7273 0A73 7576 7662 14D9 8472 7071 FE72"            /* rs�suvvb.لrpq�r */
	$"FF73 FE75 FC76 0342 1D85 76FD 750E 7372"            /* �s�u�v.B.�v�u.sr */
	$"7271 6F6E 6E6D 675D 544E 5C9C D7F3 FF00"            /* rqonnmg]TN\����. */
	$"A0FD 840C 8281 8179 7065 5E5B 5755 789E"            /* ���.���ype^[WUx� */
	$"CCFC FF03 B27B 7171 FE72 FE73 FF75 FC76"            /* ���.�{qq�r�s�u�v */
	$"036B 6F70 71FE 72FF 73FD 75FA 7606 5F5B"            /* .kopq�r�s�u�v._[ */
	$"7172 7273 7331 7576 765B 1671 7072 7273"            /* qrrss1uvv[.qprrs */
	$"7375 7676 6C28 4E75 7172 7373 7575 7676"            /* suvvl(Nuqrssuuvv */
	$"4734 FFDE BB9B 908D 9094 9697 9695 9492"            /* G4�޻����������� */
	$"887A 654F 4951 8FCD FEFF 018E 76FD 750E"            /* �zeOIQ����.�v�u. */
	$"7372 7271 6F6F 6E6D 675D 554E 5996 D3FE"            /* srrqoonmg]UNY��� */
	$"FF16 8471 7172 7273 7575 7675 3935 7B71"            /* �.�qqrrsuuvu95{q */
	$"7273 7375 7576 7655 0BF3 FF05 E1CA A186"            /* rssuuvvU.��.�ʡ� */
	$"8380 FE7A FC79 FD78 1877 681D C9FF CDA6"            /* ���z�y�x.wh.��ͦ */
	$"918F 8E92 9598 9796 9594 8F7F 6F5A 4A47"            /* �����������.oZJG */
	$"6CB8 FDFF 26C9 A191 8E8F 9295 9897 9695"            /* l���&ɡ��������� */
	$"9490 8A86 8A8E 9196 9796 9594 9185 715F"            /* ��������������q_ */
	$"4D47 5BA4 DFFF B77A 6F71 7272 FE73 FE75"            /* MG[����zoqrr�s�u */
	$"FC76 026F 2897 FCFF 06D4 B396 9290 8B8B"            /* �v.o(���.Գ����� */
	$"FD8A FE88 FD87 1282 3B99 FFE1 C8AD 9E9A"            /* ������.�;���ȭ�� */
	$"9B9F A0A3 A2A1 A09F 9A8E 0A7D 6961 5F8C"            /* �����������}ia_� */
	$"9285 8282 8383 FD84 FE85 FA86 1F84 4F85"            /* ������������.�O� */
	$"8383 8484 8585 8686 533E 8882 8384 8485"            /* ��������S>������ */
	$"8586 8673 20DB 9283 8282 8384 84FC 85FC"            /* ���s ے��������� */
	$"8602 512B 94FE 86FE 850D 8483 8381 8080"            /* �.Q+�����.������ */
	$"7F7A 716B 646F A6D8 F3FF 00AA FD92 0C91"            /* .zqkdo����.���.� */
	$"908F 8A82 7973 706C 6C87 A8CF FCFF 00B9"            /* ����yspll�����.� */
	$"038C 8282 83FE 84FD 85FC 8602 7C81 82FE"            /* .����������.|��� */
	$"83FE 84FD 85FA 8638 716C 8283 8484 8585"            /* �������8ql������ */
	$"8686 6D21 8282 8384 8485 8586 867D 355C"            /* ��m!���������}5\ */
	$"8582 8384 8485 8586 8657 3FFF DFC1 A59E"            /* ���������W?����� */
	$"999C A0A1 A3A2 A1A0 9F97 8A78 655F 659A"            /* �����������xe_e� */
	$"D1FE FF00 9BFE 86FE 850D 8483 8381 8080"            /* ���.�����.������ */
	$"7F7A 716B 656D A0D5 FEFF 0292 8383 FE84"            /* .zqkem����.����� */
	$"FF85 0E86 8547 428B 8283 8484 8585 8686"            /* ��.��GB��������� */
	$"6615 F3FF 05E1 CDAB 9591 8EFB 8AFE 88FD"            /* f.��.�ͫ�������� */
	$"8717 7929 CCFF D1AF 9E9B 9B9F A0A3 A2A1"            /* �.y)��ѯ�������� */
	$"A09F 9B8E 816F 615C 7CBE FDFF 26CC AB9E"            /* �����oa\|���&̫� */
	$"9B9B 9FA0 A3A2 A1A1 A09C 9794 979B 9EA2"            /* ���������������� */
	$"A2A1 A1A0 9E92 8275 635D 6DAD DFFF BE8A"            /* �������uc]m����� */
	$"8182 8383 FE84 FE85 FC86 0181 3500 9902"            /* ����������.�5.�. */
	$"A7FE FF06 CFA4 9998 999C A2F4 A408 7C00"            /* ���.Ϥ�������.|. */
	$"96D7 B0A0 9FA0 A2F5 A404 9069 3644 91EF"            /* �װ������.�i6D�� */
	$"A402 8F00 7AF9 A403 0906 87A2 FAA4 0445"            /* �.�.z��.�.����.E */
	$"00CF 8697 F2A4 0300 1268 94F4 A401 9B8E"            /* .φ��...h���.�� */
	$"0581 613E 3E73 D9F5 FF01 9E90 F8A4 0E9F"            /* .�a>>s���.����.� */
	$"988A 7764 4C3D 5595 D8FF FFB2 8BA0 F3A4"            /* ��wdL=U�������� */
	$"016C 9FEF A401 453B F9A4 0333 005D 9CFA"            /* .l��.E;��.3.]�� */
	$"A403 7800 2596 F9A4 0716 2EBD A8A0 9FA0"            /* �.x.%���...����� */
	$"A3F8 A4FF A409 A187 5E2F 2C99 FFFF 9294"            /* �����ơ�^/,����� */
	$"F4A4 0A9B 9082 633F 3C70 D3FF 8B97 FAA4"            /* ����c?<p������ */
	$"0395 0009 97F9 A402 3300 D8F5 FF01 C4A0"            /* .�.Ɨ��.3.���.Ġ */
	$"FE99 019F A2F4 A407 5800 BAAA A09F 9FA1"            /* ��.����.X.������ */
	$"F5A4 0B91 7142 305C D6DC B2A0 9F9F A2FB"            /* ��.�qB0\�ܲ����� */
	$"A4F0 A408 9977 4E30 52C9 B78C 9FF3 A402"            /* ��.�wN0Rɷ���. */
	$"7C00 96FE FF06 D1A5 9B9A 9B9F A4F4 A608"            /* |.���.ѥ�������. */
	$"7F00 97D8 B2A2 A1A2 A4F5 A604 926D 3A47"            /* ..�ز������.�m:G */
	$"94EF A602 9100 7CF9 A603 0B08 8AA4 FEA6"            /* ��.�.|��...���� */
	$"FDA6 0447 00CF 8899 F2A6 0300 156B 96F4"            /* ��.G.ψ��...k�� */
	$"A607 9E91 8464 4342 76D9 F5FF 01A0 92F8"            /* �.���dCBv���.��� */
	$"A60E A19A 8D7A 6750 4259 97D9 FFFF B38D"            /* �.���zgPBY������ */
	$"A2F3 A601 6FA1 EFA6 0147 3EFC A6FE A603"            /* ��.o��.G>����. */
	$"3500 5F9F FAA6 037A 0027 98F9 A607 1A30"            /* 5._���.z.'���..0 */
	$"BEAA A2A1 A2A5 F6A6 09A3 8A62 3230 9AFF"            /* ��������ƣ�b20�� */
	$"FF95 96F4 A60A 9E92 8566 4440 72D3 FF8D"            /* �������fD@r��� */
	$"99FA A603 9700 0B99 F9A6 0235 00D8 F5FF"            /* ���.�..���.5.��� */
	$"01C5 A2FE 9B01 A1A4 F9A6 FCA6 075A 00BB"            /* .Ţ��.������.Z.� */
	$"ACA2 A1A1 A3F5 A60B 9475 4533 5FD7 DCB3"            /* �������.�uE3_�ܳ */
	$"A2A1 A1A4 EAA6 089B 7951 3354 CAB8 8EA1"            /* �����.�yQ3Tʸ�� */
	$"F3A6 027F 0097 FEFF 06D3 AFA6 A5A6 A9AD"            /* �...���.ӯ����� */
	$"F4AF 088B 0799 D9B9 ACAB ABAD F7AF FFAF"            /* ��.�.�ٹ�������� */
	$"049F 7C4C 5AA0 EFAF 029F 0787 F9AF 0316"            /* .�|LZ��.�.���.. */
	$"1298 AEFA AF04 5307 D397 A4F2 AF03 0722"            /* .����.S.ӗ��.." */
	$"7BA2 F4AF 07A9 9E92 7758 5583 DBF5 FF01"            /* {���.���wXU����. */
	$"AA9F F8AF 0CAB A59A 8A7A 6557 69A0 DBFF"            /* ����.����zeWi��� */
	$"FFBA 019A ACF3 AF01 7AAB EFAF 0153 49F9"            /* ��.���.z��.SI� */
	$"AF03 3E07 6CA9 FAAF 0383 0733 A3F9 AF07"            /* �.>.l���.�.3���. */
	$"253A C2B3 ACAB ACAE F6AF 09AD 9773 4542"            /* %:³������ƭ�sEB */
	$"A2FF FFA1 A2F4 AF0A A99F 9479 5954 80D5"            /* �������©��yYT�� */
	$"FF9A A4FB AF04 AFA3 0716 A4F9 AF02 4007"            /* �����.��..���.@. */
	$"D9F5 FF06 CAAB A5A6 A6AB ADF4 AF07 6607"            /* ���.ʫ�������.f. */
	$"C1B4 ACAB ABAD F5AF 0BA0 8457 456E D8DD"            /* ��������.��WEn�� */
	$"BAAC ABAB ADEA AF08 A688 6445 64CC BF9B"            /* ������.��dEd̿� */
	$"ABF3 AF01 8B07 0099 022C FFFF 03C5 A0A4"            /* ��.�..�.,��.Š� */
	$"A1F0 A005 7A00 724A A3A4 F0A0 0288 277F"            /* ��.z.rJ���.�'. */
	$"EFA0 028D 006F F9A0 0209 0065 F9A0 0443"            /* �.�.o��.�.e��.C */
	$"00C8 5F96 F2A0 0300 1246 92F2 A0FF A004"            /* .�_��...F����. */
	$"963D 1D43 D3F6 FF01 9E90 F3A0 099E 7744"            /* �=.C���.���ƞwD */
	$"2C2A 86FF B28B 9EF3 A001 689B EFA0 0143"            /* ,*������.h��.C */
	$"2BF9 A003 3200 3D9A FAA0 0377 0000 95F9"            /* +��.2.=���.w..�� */
	$"A004 1609 2BA5 A1F5 A0FC A006 731B 139C"            /* �..�+������.s..� */
	$"FF92 92F0 A006 9948 1D38 CA8A 95FA A003"            /* ����.�H.8ʊ���. */
	$"9100 0083 F9A0 0232 00C8 F7FF 03E2 B7A0"            /* �..���.2.���.ⷠ */
	$"A1EF A004 5500 0B91 A5F0 A006 952C 1B4E"            /* ��.U..���.�,.N */
	$"9FA1 A4F8 A0ED A005 481B 279A 8C9B F3A0"            /* ������.H.'���� */
	$"087A 0096 FFFF C7A2 A6A4 F0A3 057C 0073"            /* .z.���Ǣ���.|.s */
	$"4DA5 A6F0 A302 8B2A 82EF A302 8F00 71F9"            /* M���.�*��.�.q� */
	$"A303 0B00 67A2 FEA3 FDA3 0446 00C8 6298"            /* �...g�����.F.�b� */
	$"F2A3 0300 1549 95F0 A304 983F 2045 D4F6"            /* �...I��.�? E�� */
	$"FF01 A092 F3A3 09A0 7A47 302E 87FF B38D"            /* �.���ƠzG0.���� */
	$"A0F3 A301 6C9F EFA3 0146 2EFC A3FE A303"            /* ��.l��.F.����. */
	$"3400 3F9E FAA3 037A 0001 97F9 A304 1A0B"            /* 4.?���.z..���... */
	$"2EA8 A4F0 A306 761E 169E FF94 95F0 A306"            /* .���.v..�����. */
	$"9B4A 1F3A CA8C 97FA A303 9500 0085 F9A3"            /* �J.:ʌ���.�..��� */
	$"0234 00C9 F7FF 03E2 B8A2 A4F4 A3FC A304"            /* .4.���.⸢�����. */
	$"5900 0D94 A8F0 A306 9730 1E50 A1A3 A6E4"            /* Y..���.�0.P���� */
	$"A305 4C1E 299B 8E9F F3A3 087C 0097 FFFF"            /* �.L.)����.|.��� */
	$"CBAC AFAD F0AC 0588 0779 58AE AFF4 ACFD"            /* ˬ���.�.yX����� */
	$"AC02 963A 8EEF AC02 9C07 7CF9 AC02 1607"            /* �.�:��.�.|��... */
	$"75F9 AC04 5207 CC6F A3F2 AC03 0722 59A1"            /* u��.R.�o��.."Y� */
	$"F0AC 04A3 4F2F 53D6 F6FF 01AA 9FF3 AC07"            /* �.�O/S���.���. */
	$"AA88 5A42 3E90 FFBA 019A AAF3 AC01 77A9"            /* ��ZB>���.���.w� */
	$"EFAC 0152 3AF9 AC03 3D07 4CA8 FAAC 0383"            /* �.R:��.=.L���.� */
	$"070A A3F9 AC04 2514 39B0 ADF0 AC06 822C"            /* .£��.%.9���.�, */
	$"22A3 FFA0 A1F0 AC06 A559 2F49 CD99 A3FB"            /* "�����.�Y/I͙�� */
	$"AC04 ACA1 0707 92F9 AC02 3F07 CCF7 FF03"            /* �.��..���.?.���. */
	$"E2BF ABAD EFAC 0465 0717 A0B0 F0AC 06A1"            /* ⿫��.e..���.� */
	$"3E2C 5CAB ADAF E4AC 055B 2C38 A59B A9F3"            /* >,\����.[,8���� */
	$"AC01 8807 0099 02C7 04FF D497 A0A0 F89E"            /* �.�..�.�.�ԗ���� */
	$"0199 92FA 9E04 7800 482E 98F9 9E03 8853"            /* .����.x.H.���.�S */
	$"779A FA9E 0167 46FC 7900 97FA 9E00 8DFD"            /* w���.gF�y.���.�� */
	$"7902 6900 6EF9 9E02 0900 5BF9 9E04 4200"            /* y.i.n��.�.[��.B. */
	$"C83E 95F9 9EFA 7903 0012 3291 FA9E 019A"            /* �>����y...2���.� */
	$"8AFB 9EFE 9E03 971A 0054 F6FF 019E 90F0"            /* �����.�..T��.��� */
	$"9E06 6824 2086 B28B 9BFA 9E00 8DFB 7901"            /* �.h$ ������.��y. */
	$"4F76 FD79 0088 F99E 007B FD79 0132 2BF9"            /* Ov�y.���.{�y.2+� */
	$"9E03 4200 389A FA9E 0375 0000 95F9 9E03"            /* �.B.8���.u..���. */
	$"1600 2F9B F99E 047A 5783 9E9E FB9E 0540"            /* ../���.zW�����.@ */
	$"005F FF92 91F9 9E00 85F8 9E05 9B22 003B"            /* ._�����.���.�".; */
	$"8894 FA9E 0390 0000 80F9 9E02 3100 C8F7"            /* ����.�..���.1.�� */
	$"FF03 BE99 A29F F89E 0196 97FA 9E03 5400"            /* �.������.����.T. */
	$"0095 F99E 0395 5D72 99FA 9E04 7600 018C"            /* .���.�]r���.v..� */
	$"95F7 9EED 9E05 8D00 005F 8C9A FA9E 0088"            /* ����.�.._����.� */
	$"FB79 075C 0096 FFD4 99A2 A2F8 A001 9B95"            /* �y.\.��ԙ����.�� */
	$"FAA0 047A 004A 309A F9A0 038B 5579 9CFA"            /* ��.z.J0���.�Uy�� */
	$"A001 6949 FC7B 0099 FAA0 0090 FD7B 026D"            /* �.iI�{.���.��{.m */
	$"0070 F9A0 020B 005D FDA0 FDA0 0445 00C8"            /* .p��...]����.E.� */
	$"4297 F9A0 FA7B 0300 1535 94FA A001 9C8C"            /* B����{...5���.�� */
	$"F8A0 0399 1D02 55F6 FF01 A092 F0A0 066C"            /* ��.�..U��.���.l */
	$"2724 88B3 8D9E FAA0 0090 FB7B 0151 78FD"            /* '$������.��{.Qx� */
	$"7B00 8BF9 A000 7FFD 7B01 342E FCA0 FEA0"            /* {.���..�{.4.���� */
	$"0345 003A 9CFA A003 7700 0097 F9A0 031A"            /* .E.:���.w..���.. */
	$"0031 9EF9 A002 7C5A 86F9 A005 4300 62FF"            /* .1���.|Z���.C.b� */
	$"9494 F9A0 0087 F8A0 059E 2502 3D8B 96FA"            /* ����.���.�%.=��� */
	$"A003 9200 0082 F9A0 0233 00C9 F7FF 03BF"            /* �.�..���.3.���.� */
	$"9BA4 A1F8 A003 9899 A0A0 FCA0 0358 0000"            /* �����.������.X.. */
	$"97F9 A003 975F 769B FAA0 0478 0003 8E97"            /* ���.�_v���.x..�� */
	$"E3A0 058F 0100 628E 9CFA A000 8CFB 7B07"            /* �.�..b����.��{. */
	$"5E00 97FF D6A4 ACAC F8AA 01A6 A1FA AA04"            /* ^.��֤����.����. */
	$"8707 503B A5F9 AA05 9663 85A8 AAAA FCAA"            /* �.P;���.�c������ */
	$"0175 57FC 8700 A4FA AA00 9BFD 8702 7B07"            /* .uW��.���.���.{. */
	$"7BF9 AA02 1607 69F9 AA04 5107 CC4F A2F9"            /* {��...i��.Q.�O�� */
	$"AAFA 8703 0722 42A0 FAAA 01A8 98F8 AA03"            /* ���.."B���.����. */
	$"A428 0C5D F6FF 01AA 9FF0 AA04 7A36 3391"            /* �(.]��.���.z63� */
	$"BA01 9AA8 FAAA 009B FB87 015E 85FD 8700"            /* �.����.���.^���. */
	$"97F9 AA00 8BFD 8701 403A F9AA 0351 0747"            /* ���.���.@:��.Q.G */
	$"A6FA AA03 8107 07A2 F9AA 0325 073B A8F9"            /* ���.�..���.%.;�� */
	$"AA02 8865 92F9 AA05 4F08 6CFF A0A0 F9AA"            /* �.�e���.O.l����� */
	$"0095 F8AA 05A8 2F0B 4798 A2FB AA04 AA9F"            /* .���.�/.G����.�� */
	$"0707 8FF9 AA02 3E07 CCF7 FF03 C4A5 AEAB"            /* ..���.>.���.ĥ�� */
	$"F8AA 01A3 A4FA AA03 6407 07A2 F9AA 03A3"            /* ��.����.d..���.� */
	$"6C81 A6FA AA04 8409 0D9B A3E3 AA05 9B0A"            /* l����.��.���.�� */
	$"076F 9BA6 FAAA 0097 FB87 016D 0700 9903"            /* .o����.���.m..�. */
	$"0A03 FFD2 9598 F99A 0394 2402 6FFA 9A04"            /* �.�ҕ���.�$.o��. */
	$"7600 482C 96F9 9A03 3000 1091 FA9A 0765"            /* v.H,���.0..���.e */
	$"0003 4747 1C09 92FA 9A02 5400 3EFE 4701"            /* ..GG.ƒ��.T.>�G. */
	$"006E F99A 0309 005B 9BFA 9A04 4200 C83A"            /* .n��.�.[���.B.�: */
	$"94F9 9A01 001C FB47 0257 3190 FA9A 038E"            /* ���...�G.W1���.� */
	$"000A 48FD 9AFD 9A02 3E00 46F6 FF01 9E90"            /* .�H����.>.F��.�� */
	$"F99A 0168 79F9 9A05 7A30 1B5F 8B99 FA9A"            /* ��.hy��.z0._���� */
	$"0254 003E F847 0100 63F9 9A01 0914 FE47"            /* .T.>�G..c��.�.�G */
	$"011C 2CF9 9A03 4200 3898 FA9A 0372 0000"            /* ..,��.B.8���.r.. */
	$"95F9 9A02 1600 2FF8 9A04 0900 2E9A 9AFB"            /* ���.../��.�..��� */
	$"9A05 4200 5FFF 9190 F99A 0200 073F F99A"            /* �.B._�����...?�� */
	$"043E 002E 6F94 FA9A 038E 0000 8BF9 9A02"            /* .>..o���.�..���. */
	$"3000 B2F7 FF02 B795 98F9 9A03 7C1B 008A"            /* 0.���.�����.|..� */
	$"FA9A 0454 0000 949B FA9A 0342 0007 87FA"            /* ��.T..����.B..�� */
	$"9A04 7600 0066 94F8 9A00 0000 50F8 9A01"            /* �.v..f���...P��. */
	$"211C F99A 058E 0000 4D8C 98FA 9A02 4200"            /* !.��.�..M����.B. */
	$"34FB 4704 AFFF D297 9AF9 9C03 9626 0671"            /* 4�G.��җ���.�&.q */
	$"FA9C 0479 004A 2F98 F99C 0333 0012 94FA"            /* ��.y.J/���.3..�� */
	$"9C07 6700 0649 491F 0B95 FA9C 0257 0040"            /* �.g..II..���.W.@ */
	$"FE49 0100 70F9 9C03 0B00 5D9E FE9C FD9C"            /* �I..p��...]����� */
	$"0444 00C8 3C97 F99C 0100 1FFB 4902 5934"            /* .D.�<���...�I.Y4 */
	$"92FA 9C03 9000 0C4A F99C 0242 0048 F6FF"            /* ���.�..J��.B.H�� */
	$"01A0 92F9 9C01 6C7C F99C 057D 331D 628D"            /* .����.l|��.}3.b� */
	$"9BFA 9C02 5700 40F8 4901 0065 F99C 010B"            /* ���.W.@�I..e��.. */
	$"17FE 4901 1F2F FC9C FE9C 0344 003A 9BFA"            /* .�I../����.D.:�� */
	$"9C03 7600 0097 F99C 021A 0031 F89C 020B"            /* �.v..���...1��.. */
	$"0030 F99C 0544 0062 FF94 92F9 9C02 000A"            /* .0��.D.b�����..� */
	$"43F9 9C04 4200 3072 96FA 9C03 9000 008D"            /* C��.B.0r���.�..� */
	$"F99C 0233 00B3 F7FF 02B8 979A F99C 057F"            /* ��.3.���.�����.. */
	$"1D01 8D9C 9CFC 9C04 5700 0096 9EFA 9C03"            /* ..�����.W..����. */
	$"4400 0A8A FA9C 0479 0000 6996 F89C 0100"            /* D.��.y..i���.. */
	$"53F8 9C01 241F F99C 0590 0000 4F8E 9AFA"            /* S��.$.��.�..O��� */
	$"9C02 4400 36FB 4904 B0FF D4A2 A5F9 A603"            /* �.D.6�I.��Ԣ���. */
	$"A131 107C FAA6 0485 0750 39A3 F9A6 053E"            /* �1.|��.�.P9���.> */
	$"071C 9FA6 A6FC A607 7107 1053 5329 15A1"            /* ..�����.q..SS).� */
	$"FAA6 0264 074A FE53 0107 7BF9 A603 1607"            /* ��.d.J�S..{��... */
	$"69A8 FAA6 0450 07CC 49A2 F9A6 0107 29FB"            /* i���.P.�I���..)� */
	$"5302 6540 9FFA A603 9C07 1755 F9A6 024D"            /* S.e@���.�..U��.M */
	$"074E F6FF 01AA 9FF9 A601 7787 F9A6 038A"            /* .N��.����.w���.� */
	$"432B 6E01 9AA5 FAA6 0264 074A F853 0107"            /* C+n.����.d.J�S.. */
	$"70F9 A601 1620 FE53 0129 3BF9 A603 5007"            /* p��.. �S.);��.P. */
	$"47A5 FAA6 037F 0707 A2F9 A602 2507 3BF8"            /* G���....���.%.;� */
	$"A602 1607 3CF9 A605 5007 6CFF A09F F9A6"            /* �...<��.P.l����� */
	$"0207 144E F9A6 044D 073A 80A1 FBA6 04A6"            /* ...N��.M.:����.� */
	$"9C07 079A F9A6 023E 07B9 F7FF 02BF A2A5"            /* �..���.>.���.��� */
	$"F9A6 038A 280A 99FA A604 6407 07A1 A8FA"            /* ��.�(��.d..��� */
	$"A603 5007 1495 FAA6 0485 0707 77A1 F8A6"            /* �.P..���.�..w��� */
	$"0107 5EF8 A601 2F2A F9A6 059C 0707 5A9B"            /* ..^��./*��.�..Z� */
	$"A5FA A602 5007 3FFB 5300 B303 0203 FFD1"            /* ���.P.?�S.�...�� */
	$"9598 F997 0380 0000 85FA 9704 7300 482C"            /* ����.�..���.s.H, */
	$"95F9 9702 2F00 3EF9 9707 6300 27FF FF5F"            /* ���./.>��.c.'��_ */
	$"4294 FA97 0252 00C8 FEFF 0100 86F9 9703"            /* B���.R.���..���. */
	$"0900 5B98 FA97 043F 00C8 3A92 F997 0100"            /* �.[���.?.�:���.. */
	$"5FFA FF01 318F FA97 038B 0000 6CFD 97FD"            /* _��.1���.�..l��� */
	$"9702 3D00 2EF6 FF01 9C90 F997 0222 168C"            /* �.=..��.����.".� */
	$"F997 0463 0016 8B96 FA97 0252 00C8 F8FF"            /* ��.c..����.R.��� */
	$"0100 8DF9 9701 0948 FEFF 014D 4EF9 9703"            /* ..���.�H��.MN��. */
	$"3F00 3896 FA97 0370 0000 95F9 9703 1600"            /* ?.8���.p..���... */
	$"2F99 F997 0409 0068 9997 FB97 053F 005F"            /* /���.�.h����.?._ */
	$"FF81 8FF9 97FF 0000 68F9 9704 3D00 2E52"            /* ������..h��.=..R */
	$"91FA 9703 8B00 008E F997 022F 00AD F7FF"            /* ���.�..���./.��� */
	$"02B6 9596 F997 0364 000C 92FA 9704 5200"            /* .�����.d..���.R. */
	$"0094 98FA 9702 3F00 32F9 9704 7300 0039"            /* .����.?.2��.s..9 */
	$"94F8 9700 0000 6DF8 9701 1F36 F997 058B"            /* ���...m��..6��.� */
	$"0000 3B8C 96FA 9702 3F00 AAF9 FF02 D297"            /* ..;����.?.���.җ */
	$"9AF9 9903 8200 0087 FA99 0476 004A 2F97"            /* ���.�..���.v.J/� */
	$"F999 0232 0042 F999 0765 0029 FFFF 6244"            /* ��.2.B��.e.)��bD */
	$"96FA 9902 5500 C9FE FF01 0088 F999 030B"            /* ���.U.���..���.. */
	$"005D 9AFE 99FD 9904 4300 C83C 95F9 9901"            /* .]�����.C.�<���. */
	$"0062 FAFF 0134 91FA 9903 8D00 006E F999"            /* .b��.4���.�..n�� */
	$"023F 0030 F6FF 019F 92F9 9902 251A 8EF9"            /* .?.0��.����.%.�� */
	$"9904 6500 198D 98FA 9902 5500 C9F8 FF01"            /* �.e..����.U.���. */
	$"028F F999 010B 4AFE FF01 4F51 FC99 FE99"            /* .���..J��.OQ���� */
	$"0343 003A 98FA 9903 7200 0097 F999 031A"            /* .C.:���.r..���.. */
	$"0031 9BF9 9903 0B00 6B9B FA99 0543 0062"            /* .1���...k���.C.b */
	$"FF84 91F9 99FF 0000 6CF9 9904 3F00 3054"            /* ������..l��.?.0T */
	$"94FA 9903 8D00 0090 F999 0232 00AE F7FF"            /* ���.�..���.2.��� */
	$"02B7 9798 F999 0566 0010 9599 99FC 9904"            /* .�����.f..�����. */
	$"5500 0096 9AFA 9902 4300 35F9 9904 7600"            /* U..����.C.5��.v. */
	$"003B 96F8 9901 006F F899 0121 39F9 9905"            /* .;���..o��.!9��. */
	$"8D00 003D 8E98 FA99 0243 00AA F9FF 02D4"            /* �..=����.C.���.� */
	$"A2A5 F9A4 038F 0707 95FA A404 8307 5039"            /* ����.�..���.�.P9 */
	$"A2F9 A402 3D07 4EFE A4FC A407 6F07 34FF"            /* ���.=.N����.o.4� */
	$"FF6C 50A2 FAA4 0262 07CC FEFF 0108 96F9"            /* �lP���.b.���..�� */
	$"A403 1607 69A5 FAA4 044F 07CC 49A1 F9A4"            /* �...i���.O.�I��� */
	$"0107 6CFA FF01 409E FAA4 039A 0707 79F9"            /* ..l��.@���.�..y� */
	$"A402 4C07 3AF6 FF01 A99F F9A4 022E 279B"            /* �.L.:��.����..'� */
	$"F9A4 026F 0725 019A A3FA A402 6207 CCF8"            /* ��.o.%.����.b.�� */
	$"FF01 0C9B F9A4 0116 50FE FF01 555C F9A4"            /* �..���..P��.U\�� */
	$"034F 0747 A3FA A403 7C07 07A2 F9A4 0325"            /* .O.G���.|..���.% */
	$"073B A5F9 A403 1607 78A5 FAA4 054F 076C"            /* .;���...x���.O.l */
	$"FF91 9EF9 A4FF 0700 76F9 A404 4C07 3A62"            /* ������..v��.L.:b */
	$"A0FB A404 A49A 0707 9CF9 A402 3D07 B5F7"            /* ���.��..���.=.�� */
	$"FF02 BEA2 A3F9 A403 7207 1BA1 FAA4 0462"            /* �.�����.r..���.b */
	$"0707 A1A5 FAA4 024F 0740 F9A4 0483 0707"            /* ..����.O.@��.�.. */
	$"46A1 F8A4 0107 7DF8 A401 2E46 F9A4 059A"            /* F���..}��..F��.� */
	$"0707 459B A3FA A402 4F07 ACFB FF00 FF02"            /* ..E����.O.���.�. */
	$"F603 FFD1 9598 F994 037A 0000 90FA 9403"            /* �.�ѕ���.z..���. */
	$"7100 482C F894 032F 004A 96FA 9407 6100"            /* q.H,��./.J���.a. */
	$"2EFF FF5F 7891 FA94 0251 00C8 FEFF 0126"            /* .��_x���.Q.���.& */
	$"90F9 9403 0900 5B96 FA94 043E 00C8 3A92"            /* ���.�.[���.>.�:� */
	$"F994 0100 5FFA FF01 498E FA94 0388 0000"            /* ��.._��.I���.�.. */
	$"6EFD 94FD 9402 3C00 2EF6 FF01 9C90 F994"            /* n����.<..��.���� */
	$"0221 0880 F994 0361 0000 83F9 9402 5100"            /* .!.���.a..���.Q. */
	$"C8F8 FF01 3091 F994 0109 48FE FF01 4879"            /* ���.0���.�H��.Hy */
	$"F994 023E 0038 F994 027A 0000 F894 0316"            /* ��.>.8��.z..��.. */
	$"002F 98F9 9404 0900 6E96 94FB 9405 3E00"            /* ./���.�.n����.>. */
	$"5FFF 668E F994 FF00 0071 F994 043C 002E"            /* _�f����..q��.<.. */
	$"3B90 FA94 0388 0000 98F9 9402 2F00 A5F7"            /* ;���.�..���./.�� */
	$"FF02 B695 96F9 9403 5E00 1990 FA94 0451"            /* �.�����.^..���.Q */
	$"0000 9496 FA94 033E 003B 96FA 9403 7100"            /* ..����.>.;���.q. */
	$"002C F794 0000 006F F894 011F 36F9 9404"            /* .,��...o��..6��. */
	$"8800 0035 8CF9 9402 3E00 AAF9 FF02 D197"            /* �..5���.>.���.ї */
	$"9AF9 9603 7D00 0094 FA96 0375 004A 2FF8"            /* ���.}..���.u.J/� */
	$"9603 3100 4E98 FA96 0763 0030 FFFF 627A"            /* �.1.N���.c.0��bz */
	$"94FA 9602 5400 C9FE FF01 2892 F996 030B"            /* ���.T.���.(���.. */
	$"005D 98FE 96FD 9604 4200 C83C 95F9 9601"            /* .]�����.B.�<���. */
	$"0062 FAFF 014C 90FA 9603 8B00 0070 F996"            /* .b��.L���.�..p�� */
	$"023F 0030 F6FF 019F 92F9 9602 240A 82F9"            /* .?.0��.����.$� */
	$"9603 6300 0085 F996 0254 00C9 F8FF 0133"            /* �.c..���.T.���.3 */
	$"95F9 9601 0B4A FEFF 014A 7BFC 96FE 9602"            /* ���..J��.J{����. */
	$"4200 3AF9 9602 7D00 00F8 9603 1A00 319A"            /* B.:��.}..��...1� */
	$"F996 030B 0070 99FA 9605 4200 62FF 6990"            /* ��...p���.B.b�i� */
	$"F996 FF00 0073 F996 043F 0030 3D94 FA96"            /* ���..s��.?.0=��� */
	$"038B 0000 9AF9 9602 3100 A6F7 FF02 B797"            /* .�..���.1.���.�� */
	$"98F9 9605 6200 1C94 9696 FC96 0454 0000"            /* ���.b..�����.T.. */
	$"9698 FA96 0342 003E 98FA 9603 7500 002F"            /* ����.B.>���.u../ */
	$"F796 0100 72F8 9601 2139 F996 048B 0000"            /* ��..r��.!9��.�.. */
	$"388E F996 0242 00AA F9FF 02D4 A2A5 F9A1"            /* 8���.B.���.Ԣ��� */
	$"038A 0707 9FFA A103 8207 5039 F8A1 053D"            /* .�..���.�.P9��.= */
	$"075B A3A1 A1FC A107 6D07 3AFF FF6C 88A0"            /* .[�����.m.:��l�� */
	$"FAA1 0262 07CC FEFF 0135 9FF9 A103 1607"            /* ��.b.���.5���... */
	$"69A3 FAA1 034E 07CC 49F8 A101 076C FAFF"            /* i���.N.�I��..l�� */
	$"015B 9CFA A103 9807 077A F9A1 024C 073A"            /* .[���.�..z��.L.: */
	$"F6FF 01A9 9FF9 A102 2E15 90F9 A102 6D07"            /* ��.����...���.m. */
	$"0800 94F9 A102 6207 CCF8 FF01 3FA0 F9A1"            /* ..���.b.���.?��� */
	$"0116 50FE FF01 5088 F9A1 024E 0747 F9A1"            /* ..P��.P���.N.G�� */
	$"038A 0707 A2F9 A103 2507 3BA5 F9A1 0316"            /* .�..���.%.;���.. */
	$"077F A3FA A105 4E07 6CFF 7A9C F9A1 FF07"            /* ..���.N.l�z����. */
	$"007D F9A1 044C 073A 499F FBA1 04A1 9807"            /* .}��.L.:I���.��. */
	$"07A5 F9A1 023D 07AB F7FF 02BE A2A3 F9A1"            /* .���.=.���.����� */
	$"036E 0729 9FFA A104 6207 07A1 A3FA A103"            /* .n.)���.b..����. */
	$"4E07 4AA3 FAA1 0382 0707 39F7 A101 0780"            /* N.J���.�..9��..� */
	$"F8A1 012E 46F9 A104 9807 073E 9BF9 A102"            /* ��..F��.�..>���. */
	$"4E07 ACFB FF00 FF03 0003 FFD1 9598 F990"            /* N.���.�...�ѕ��� */
	$"0270 0002 F990 0470 004A 2C94 F990 032E"            /* .p..��.p.J,���.. */
	$"004A 95FA 9007 5E00 2EFF FF9F 8B8F FA90"            /* .J���.^..������� */
	$"0251 00C8 FEFF 0166 8FF9 9003 0900 5B94"            /* .Q.���.f���.�.[� */
	$"FA90 043E 00C8 3A91 F990 0100 5FFA FF01"            /* ��.>.�:���.._��. */
	$"7A8D FA90 0386 0000 70FD 90FD 9002 3C00"            /* z���.�..p����.<. */
	$"2EF6 FF00 9CF8 9002 2108 81F9 9004 5E00"            /* .��.���.!.���.^. */
	$"0063 91FA 9002 5100 C8F8 FF01 7591 F990"            /* .c���.Q.���.u��� */
	$"0109 48FE FF00 7AF8 9003 4200 3894 FA90"            /* .�H��.z��.B.8��� */
	$"0378 0000 94F9 9003 1600 2F98 F990 0409"            /* .x..���.../���.� */
	$"006E 9590 FB90 053E 005F FF5F 8DF9 90FF"            /* .n����.>._�_���� */
	$"0000 6CF9 9003 3C00 2E36 F990 0386 0006"            /* ..l��.<..6��.�.. */
	$"94F9 9002 2E00 96F7 FF02 B595 95F9 9003"            /* ���...���.�����. */
	$"5300 288F FA90 0451 0000 9494 FA90 033E"            /* S.(���.Q..����.> */
	$"003B 96FA 9004 7000 002C 94F9 9001 8300"            /* .;���.p..,���.�. */
	$"006F F890 011F 36F9 9005 8600 0035 8C91"            /* .o��..6��.�..5�� */
	$"FA90 023E 00AA F9FF 02D1 979A F994 0372"            /* ��.>.���.ї���.r */
	$"0006 92FA 9404 7200 4D2F 96F9 9403 3100"            /* ..���.r.M/���.1. */
	$"4E97 FA94 0761 0030 FFFF A18D 92FA 9402"            /* N���.a.0�������. */
	$"5300 C9FE FF01 6991 F994 030B 005D 97FE"            /* S.���.i���...]�� */
	$"94FD 9403 4000 C83C F894 0100 62FA FF01"            /* ���.@.�<��..b��. */
	$"7C8F FA94 038A 0000 72F9 9402 3E00 30F6"            /* |���.�..r��.>.0� */
	$"FF01 9F92 F994 0224 0A84 F994 0461 0000"            /* �.����.$��.a.. */
	$"6595 FA94 0253 00C9 F8FF 0077 F894 010B"            /* e���.S.���.w��.. */
	$"4AFE FF01 7C92 FC94 FE94 0344 003A 96FA"            /* J��.|�����.D.:�� */
	$"9403 7B00 0096 F994 031A 0031 9AF9 9403"            /* �.{..���...1���. */
	$"0B00 7097 FA94 0540 0062 FF63 8FF9 94FF"            /* ..p���.@.b�c���� */
	$"0000 6EF9 9404 3E00 3039 92FA 9403 8A00"            /* ..n��.>.09���.�. */
	$"0896 F994 0231 0097 F7FF 02B6 9797 F994"            /* .���.1.���.����� */
	$"0555 002A 9194 94FC 9404 5300 0096 96FA"            /* .U.*�����.S..��� */
	$"9403 4000 3E98 FA94 0472 0000 2F96 F994"            /* �.@.>���.r../��� */
	$"0285 0072 F894 0121 39F9 9404 8A00 0038"            /* .�.r��.!9��.�..8 */
	$"8EF9 9402 4000 AAF9 FF02 D4A2 A5F9 9F02"            /* ���.@.���.Ԣ���. */
	$"7F07 10F9 9F04 8007 5239 A1F9 9F05 3C07"            /* ...��.�.R9���.<. */
	$"5BA2 9F9F FC9F 076C 073A FFFF AA9A 9EFA"            /* [�����.l.:������ */
	$"9F02 6107 CCFE FF01 789E F99F 0316 0769"            /* �.a.���.x���...i */
	$"A2FA 9F04 4E07 CC49 A0F9 9F01 076C FAFF"            /* ���.N.�I���..l�� */
	$"018C 9CFA 9F03 9707 077D F99F 024A 073A"            /* .����.�..}��.J.: */
	$"F6FF 00A9 F89F 022C 1591 F99F 026C 0707"            /* ��.���.,.���.l.. */
	$"0172 A0FA 9F02 6107 CCF8 FF01 85A0 F99F"            /* .r���.a.���.���� */
	$"0116 50FE FF00 85F8 9F03 5107 47A1 FA9F"            /* ..P��.���.Q.G��� */
	$"0388 0707 A1F9 9F03 2507 3BA4 F99F 0316"            /* .�..���.%.;���.. */
	$"077F A2FA 9F05 4E07 6CFF 729C F99F FF07"            /* ..���.N.l�r����. */
	$"0079 F99F 034A 073A 46FA 9F04 9F97 0713"            /* .y��.J.:F��.��.. */
	$"A2F9 9F02 3C07 99F7 FF02 BEA2 A2F9 9F03"            /* ���.<.���.�����. */
	$"6207 359E FA9F 0461 0707 A1A1 FA9F 034E"            /* b.5���.a..����.N */
	$"074A A3FA 9F04 8007 0739 A1F9 9F02 9407"            /* .J���.�..9���.�. */
	$"80F8 9F01 2E46 F99F 0597 0707 3E9B A0FA"            /* ���..F��.�..>��� */
	$"9F02 4E07 ACFB FF00 FF03 0603 FFCF 9498"            /* �.N.���.�...�ϔ� */
	$"F98D 0368 0001 12FA 0C04 0900 5F2C 91F9"            /* ��.h...�..�._,�� */
	$"8D03 2C00 4A92 FA8D 065C 002E FFFF B28B"            /* �.,.J���.\..���� */
	$"F98D 024F 00C8 FEFF 0188 8EF9 8D03 0900"            /* ��.O.���.����.�. */
	$"5B91 FA8D 043C 00C8 3A90 F98D 0100 5FFA"            /* [���.<.�:���.._� */
	$"FF01 908C FA8D 0383 0000 68FD 8DFD 8D02"            /* �.����.�..h����. */
	$"3B00 2EF6 FF01 9C90 F98D 0220 0882 F98D"            /* ;..��.����. .��� */
	$"045C 0000 5B8F FA8D 024F 00C8 F8FF 0188"            /* .\..[���.O.���.� */
	$"90F9 8D01 0948 FEFF 01A9 8EF9 8D03 4F00"            /* ���.�H��.����.O. */
	$"3C91 FA8D 0376 0000 92F9 8D03 1600 2F96"            /* <���.v..���.../� */
	$"F98D 0409 006E 918D FB8D 053C 005F FF5F"            /* ��.�.n����.<._�_ */
	$"8CF9 8DFF 0000 68F9 8D04 3B00 2E36 8EFA"            /* ����..h��.;..6�� */
	$"8D03 8300 1392 F98D 022C 0096 F7FF 02B5"            /* �.�..���.,.���.� */
	$"9594 F98D 034E 000D 0DFA 0C04 0500 0094"            /* ����.N...�.....� */
	$"90FA 8D03 3C00 3B94 FA8D 046D 0000 2C94"            /* ���.<.;���.m..,� */
	$"F98D 0180 0000 6FF8 8D01 1B32 F98D 0583"            /* ��.�..o��..2��.� */
	$"0000 358C 8FFA 8D02 3C00 AAF9 FF02 D196"            /* ..5����.<.���.і */
	$"9AF9 8F03 6B00 0315 FA0F 040B 0062 2F95"            /* ���.k...�....b/� */
	$"F98F 0330 004E 95FA 8F06 5E00 30FF FFB3"            /* ��.0.N���.^.0��� */
	$"8DF9 8F02 5200 C9FE FF01 8B90 F98F 030B"            /* ���.R.���.����.. */
	$"005D 94FE 8FFD 8F04 3F00 C83C 92F9 8F01"            /* .]�����.?.�<���. */
	$"0062 FAFF 0192 8EFA 8F03 8600 006B F98F"            /* .b��.����.�..k�� */
	$"023D 0030 F6FF 019E 92F9 8F02 220A 85F9"            /* .=.0��.����."� */
	$"8F04 5E00 005D 91FA 8F02 5200 C9F8 FF01"            /* �.^..]���.R.���. */
	$"8B92 F98F 010B 4AFE FF01 AB90 FC8F FE8F"            /* ����..J��.������ */
	$"0352 003E 95FA 8F03 7800 0095 F98F 031A"            /* .R.>���.x..���.. */
	$"0031 99F9 8F03 0B00 7094 FA8F 053F 0062"            /* .1���...p���.?.b */
	$"FF63 8EF9 8FFF 0000 6BF9 8F04 3D00 3039"            /* �c����..k��.=.09 */
	$"91FA 8F03 8600 1595 F98F 0230 0097 F7FF"            /* ���.�..���.0.��� */
	$"02B6 9796 F98F 0551 0010 100F 0FFC 0F04"            /* .�����.Q.....�.. */
	$"0700 0096 92FA 8F03 3F00 3D96 FA8F 0470"            /* ...����.?.=���.p */
	$"0000 2F96 F98F 0283 0071 F88F 011D 34F9"            /* ../���.�.q��..4� */
	$"8F05 8600 0038 8E91 FA8F 023F 00AA F9FF"            /* �.�..8����.?.��� */
	$"02D3 A1A5 F99B 0377 070D 20FA 1B04 1607"            /* .ӡ���.w.. �.... */
	$"6C39 A0F9 9B05 3B07 5BA1 9B9B FC9B 0669"            /* l9���.;.[�����.i */
	$"073A FFFF BA9A F99B 025F 07CC FEFF 0198"            /* .:������._.���.� */
	$"9EF9 9B03 1607 699F FA9B 044D 07CC 499F"            /* ���...i���.M.�I� */
	$"F99B 0107 6CFA FF00 9FF9 9B03 9407 0777"            /* ��..l��.���.�..w */
	$"F99B 0249 073A F6FF 01A9 9FF9 9B02 2C15"            /* ��.I.:��.����.,. */
	$"92F9 9B02 6907 0701 699E FA9B 025F 07CC"            /* ���.i...i���._.� */
	$"F8FF 0198 9FF9 9B01 1650 FEFF 01B3 9CF9"            /* ��.����..P��.��� */
	$"9B03 5F07 4AA0 FA9B 0385 0707 A0F9 9B03"            /* �._.J���.�..���. */
	$"2507 3BA4 F99B 0316 077D A0FA 9B04 4D07"            /* %.;���...}���.M. */
	$"6CFF 72F8 9BFF 0700 77F9 9B04 4907 3A46"            /* l�r���..w��.I.:F */
	$"9EFB 9B04 9B94 0722 A0F9 9B02 3B07 99F7"            /* ���.��."���.;.�� */
	$"FF02 BDA2 A2F9 9B03 5D07 1B1C FA1B 0412"            /* �.�����.]...�... */
	$"0707 A19F FA9B 034D 074A A1FA 9B04 7D07"            /* ..����.M.J���.}. */
	$"0739 A1F9 9B02 9107 7FF8 9B01 2942 F99B"            /* .9���.�..��.)B�� */
	$"0594 0707 3E9B 9EFA 9B02 4D07 ACFB FF00"            /* .�..>����.M.���. */
	$"FF02 FA03 FFCF 9498 F98A 0262 0000 F7AD"            /* �.�.�ϔ���.b..�� */
	$"029A 2C91 F98A 032C 004A 91FA 8A07 5A00"            /* .�,���.,.J���.Z. */
	$"2EFF FFB0 8B8B FA8A 024F 00C8 FEFF 0187"            /* .�������.O.���.� */
	$"8EF9 8A03 0900 5B8F FA8A 043C 00C8 3A90"            /* ���.�.[���.<.�:� */
	$"F98A 0100 5FFA FF01 908B FA8A 0381 0000"            /* ��.._��.����.�.. */
	$"66FD 8AFD 8A02 3A00 2EF6 FF01 9B90 F98A"            /* f����.:..��.���� */
	$"021F 0883 F98A 045A 0000 5B8D FA8A 024F"            /* ...���.Z..[���.O */
	$"00C8 F8FF 0188 8FF9 8A01 0948 FEFF 01A9"            /* .���.����.�H��.� */
	$"8EF9 8A03 4F00 4690 FA8A 0373 0000 8EF9"            /* ���.O.F���.s..�� */
	$"8A03 1600 2F96 F98A 0409 006E 8F8A FB8A"            /* �.../���.�.n���� */
	$"053C 005F FF5F 8BF9 8AFF 0000 68F9 8A04"            /* .<._�_����..h��. */
	$"3A00 2E36 8EFA 8A03 8100 1D91 F98A 022C"            /* :..6���.�..���., */
	$"007F F7FF 02B4 9594 F98A 0243 0021 F8AD"            /* ..��.�����.C.!�� */
	$"0399 0094 8EFA 8A03 3C00 3B92 FA8A 046B"            /* .�.����.<.;���.k */
	$"0000 2C94 F98A 017D 0000 6FF8 8A02 0C2A"            /* ..,���.}..o��..* */
	$"90FA 8A05 8100 0039 8C8D FA8A 023C 00AA"            /* ���.�..9����.<.� */
	$"F9FF 02D1 969A F98D 0265 0000 F7AE 029C"            /* ��.і���.e..��.� */
	$"2F94 F98D 032F 004E 94FA 8D05 5C00 30FF"            /* /���./.N���.\.0� */
	$"FFB2 F88D 0251 00C9 FEFF 018A 90F9 8D03"            /* ����.Q.���.����. */
	$"0B00 5D91 FE8D FD8D 043E 00C8 3C92 F98D"            /* ..]�����.>.�<��� */
	$"0100 62FA FF00 92F9 8D03 8400 0069 F98D"            /* ..b��.���.�..i�� */
	$"023D 0030 F6FF 019E 92F9 8D02 210B 85F9"            /* .=.0��.����.!.�� */
	$"8D04 5C00 005D 8FFA 8D02 5100 C9F8 FF01"            /* �.\..]���.Q.���. */
	$"8B91 F98D 010B 4AFE FF01 AA90 FC8D FE8D"            /* ����..J��.������ */
	$"0351 0048 92FA 8D03 7600 0090 F98D 031A"            /* .Q.H���.v..���.. */
	$"0031 98F9 8D03 0B00 7091 FA8D 043E 0062"            /* .1���...p���.>.b */
	$"FF63 F88D FF00 006B F98D 043D 0030 3990"            /* �c���..k��.=.09� */
	$"FA8D 0384 001F 94F9 8D02 2F00 81F7 FF02"            /* ��.�..���./.���. */
	$"B597 96F9 8D02 4500 24FE AEFB AE03 9A00"            /* �����.E.$����.�. */
	$"9691 FA8D 033E 003D 95FA 8D04 6E00 002F"            /* ����.>.=���.n../ */
	$"96F9 8D02 8100 71F8 8D02 0F2C 92FA 8D05"            /* ���.�.q��..,���. */
	$"8400 003B 8E8F FA8D 023E 00AA F9FF 02D3"            /* �..;����.>.���.� */
	$"A1A5 F999 0271 0707 F7B5 02A5 399F F999"            /* ����.q..��.�9��� */
	$"053B 075B 9F99 99FC 9906 6707 3AFF FFB9"            /* .;.[�����.g.:��� */
	$"9AF9 9902 5E07 CCFE FF01 989C F999 0316"            /* ���.^.���.����.. */
	$"0768 9EFA 9904 4C07 CC49 9FF9 9901 076C"            /* .h���.L.�I���..l */
	$"FAFF 019F 9AFA 9903 9207 0775 F999 0249"            /* ��.����.�..u��.I */
	$"073A F6FF 01A9 9FF9 9902 2B16 94F9 9902"            /* .:��.����.+.���. */
	$"6707 0701 699B FA99 025E 07CC F8FF 0198"            /* g...i���.^.���.� */
	$"9EF9 9901 1650 FEFF 01B3 9CF9 9903 5E07"            /* ���..P��.����.^. */
	$"529E FA99 0384 0707 9CF9 9903 2507 3BA3"            /* R���.�..���.%.;� */
	$"F999 0316 077D 9EFA 9905 4C07 6CFF 729A"            /* ��...}���.L.l�r� */
	$"F999 FF07 0076 F999 0449 073A 469C FB99"            /* ���..v��.I.:F��� */
	$"0499 9207 2B9F F999 023B 0786 F7FF 02BB"            /* .��.+���.;.���.� */
	$"A2A1 F999 0250 072F F8B5 03A4 07A1 9CFA"            /* ����.P./��.�.��� */
	$"9903 4C07 4AA0 FA99 047C 0707 39A1 F999"            /* �.L.J���.|..9��� */
	$"028F 077F F899 021B 399F FA99 0592 0707"            /* .�..��..9���.�.. */
	$"439B 9BFA 9902 4C07 ACFB FF00 FF02 FF03"            /* C����.L.���.�.�. */
	$"FFCF 9498 F987 025C 0000 F7FF 02AD 3290"            /* �ϔ���.\..��.�2� */
	$"F987 032B 004A 90FA 8707 5800 3DFF FFB0"            /* ��.+.J���.X.=��� */
	$"8B88 FA87 024E 00C8 FEFF 0187 8DF9 8703"            /* ����.N.���.����. */
	$"0900 5A8D FA87 043B 00C8 3A8F F987 0100"            /* �.Z���.;.�:���.. */
	$"5FFA FF01 908A FA87 0380 0000 6BFD 87FD"            /* _��.����.�..k��� */
	$"8702 3A00 2EF6 FF01 9B8F F987 021F 0883"            /* �.:..��.����...� */
	$"F987 0458 0000 5B8B FA87 024E 00C8 F8FF"            /* ��.X..[���.N.��� */
	$"0188 8FF9 8701 0948 FEFF 019E 8DF9 8703"            /* .����.�H��.����. */
	$"4E00 468E FA87 0375 0000 8CF9 8703 1600"            /* N.F���.u..���... */
	$"2F95 F987 0409 006E 8D87 FB87 053B 005F"            /* /���.�.n����.;._ */
	$"FF5F 8AF9 87FF 0000 6CF9 8704 3A00 2E36"            /* �_����..l��.:..6 */
	$"8DFA 8703 8005 6988 F987 022B 007A F7FF"            /* ���.�.i���.+.z�� */
	$"02B3 9592 F987 0242 002E F8FF 03CE 1194"            /* .�����.B..��.�.� */
	$"8CFA 8703 3B00 3B91 FA87 0469 0000 2C94"            /* ���.;.;���.i..,� */
	$"F987 017C 0000 6FF8 8702 0C2A 8EFA 8705"            /* ��.|..o��..*���. */
	$"8000 0047 8C8B FA87 023B 00AA F9FF 02CF"            /* �..G����.;.���.� */
	$"969A F98A 025F 0000 F7FF 02AE 3492 F98A"            /* ����._..��.�4��� */
	$"032E 004E 92FA 8A07 5B00 3FFF FFB2 8D8B"            /* ...N���.[.?����� */
	$"FA8A 0250 00C9 FEFF 018A 8FF9 8A03 0B00"            /* ��.P.���.����... */
	$"5C8F FE8A FD8A 043D 00C8 3C91 F98A 0100"            /* \�����.=.�<���.. */
	$"62FA FF01 928C FA8A 0382 0000 6DF9 8A02"            /* b��.����.�..m��. */
	$"3C00 30F6 FF01 9C91 F98A 0221 0B86 F98A"            /* <.0��.����.!.��� */
	$"045B 0000 5D8D FA8A 0250 00C9 F8FF 018B"            /* .[..]���.P.���.� */
	$"91F9 8A01 0B4A FEFF 01A0 8FFC 8AFE 8A03"            /* ���..J��.������. */
	$"5000 4890 FA8A 0377 0000 8EF9 8A03 1A00"            /* P.H���.w..���... */
	$"3197 F98A 030B 0070 8FFA 8A05 3D00 62FF"            /* 1���...p���.=.b� */
	$"638C F98A FF00 006E F98A 043C 0030 398F"            /* c����..n��.<.09� */
	$"FA8A 0382 076C 8CF9 8A02 2E00 7CF7 FF02"            /* ��.�.l���...|��. */
	$"B497 95F9 8A02 4400 30FE FFFB FF03 CF13"            /* �����.D.0����.�. */
	$"968F FA8A 033D 003D 94FA 8A04 6C00 002F"            /* ����.=.=���.l../ */
	$"96F9 8A02 7F00 71F8 8A02 0F2C 90FA 8A05"            /* ���...q��..,���. */
	$"8200 0049 8E8E FA8A 023D 00AA F9FF 02D3"            /* �..I����.=.���.� */
	$"A1A5 F996 026D 0707 F7FF 02B5 3F9F F996"            /* ����.m..��.�?��� */
	$"053A 075B 9F96 96FC 9607 6607 47FF FFB9"            /* .:.[�����.f.G��� */
	$"9A98 FA96 025E 07CC FEFF 0198 9CF9 9603"            /* ����.^.���.����. */
	$"1607 689B FA96 044A 07CC 499E F996 0107"            /* ..h���.J.�I���.. */
	$"6CFA FF01 9F99 FA96 0390 0707 78F9 9602"            /* l��.����.�..x��. */
	$"4807 3AF6 FF01 A89F F996 022B 1694 F996"            /* H.:��.����.+.��� */
	$"0266 0707 0169 99FA 9602 5E07 CCF8 FF01"            /* .f...i���.^.���. */
	$"989E F996 0116 50FE FF01 AA9B F996 035E"            /* ����..P��.����.^ */
	$"0752 9CFA 9603 8507 079A F996 0325 073B"            /* .R���.�..���.%.; */
	$"A3F9 9603 1607 7D9B FA96 054A 076C FF72"            /* ���...}���.J.l�r */
	$"99F9 96FF 0700 79F9 9604 4807 3A46 9BFB"            /* ����..y��.H.:F�� */
	$"9604 9690 1177 98F9 9602 3A07 83F7 FF02"            /* �.��.w���.:.���. */
	$"BBA2 A1F9 9602 4F07 3AF8 FF03 D31E A19A"            /* �����.O.:��.�.�� */
	$"FA96 034A 074A A0FA 9604 7A07 0739 A1F9"            /* ��.J.J���.z..9�� */
	$"9602 8E07 7FF8 9602 1B39 9CFA 9605 9007"            /* �.�..��..9���.�. */
	$"0753 9B9A FA96 024A 07AC FBFF 00FF 02F8"            /* .S����.J.���.�.� */
	$"03FF CF92 98F9 8302 5200 00F7 FF02 AD6B"            /* .�ϒ���.R..��.�k */
	$"8FF9 8303 2A00 4A8D FA83 0755 0048 FFFF"            /* ���.*.J���.U.H�� */
	$"AF8B 85FA 8302 4C00 C8FE FF01 878C F983"            /* �����.L.���.���� */
	$"0309 0059 8AFA 8304 3900 C83A 8EF9 8301"            /* .�.Y���.9.�:���. */
	$"005F FAFF 0190 88FA 8303 7C00 006E FD83"            /* ._��.����.|..n�� */
	$"FD83 0239 002E F6FF 019A 8FF9 8302 1D03"            /* ��.9..��.����... */
	$"84F9 8304 5500 005B 87FA 8302 4C00 C8F8"            /* ���.U..[���.L.�� */
	$"FF01 888E F983 0109 48FE FF01 9B8E F983"            /* �.����.�H��.���� */
	$"034C 0046 8BFA 8303 7C00 0088 F983 0316"            /* .L.F���.|..���.. */
	$"002F 94F9 8304 0900 6E8A 83FB 8305 3900"            /* ./���.�.n����.9. */
	$"5FFF 5E88 F983 FF00 006D F983 0439 002E"            /* _�^����..m��.9.. */
	$"368B FA83 0180 79F7 8302 2000 71F7 FF02"            /* 6���.�y��. .q��. */
	$"B095 91F9 8302 3900 3CF8 FF03 CE5F 9488"            /* �����.9.<��.�_�� */
	$"FA83 0339 003B 90FA 8304 6600 002C 94F9"            /* ��.9.;���.f..,�� */
	$"8301 7500 006C F883 020C 2A8B FA83 057C"            /* �.u..l��..*���.| */
	$"0000 478C 88FA 8302 3900 AAF9 FF02 CF95"            /* ..G����.9.���.ϕ */
	$"9AF9 8602 5500 00F7 FF02 AE6D 91F9 8603"            /* ���.U..��.�m���. */
	$"2C00 4D8F FA86 0758 004A FFFF B28D 88FA"            /* ,.M���.X.J������ */
	$"8602 4F00 C9FE FF01 8A8E F986 030B 005B"            /* �.O.���.����...[ */
	$"8DFE 86FD 8604 3C00 C83C 90F9 8601 0062"            /* �����.<.�<���..b */
	$"FAFF 0192 8BFA 8603 8000 0070 F986 023B"            /* ��.����.�..p��.; */
	$"0030 F6FF 019C 91F9 8601 2007 F886 0458"            /* .0��.����. .��.X */
	$"0000 5D8B FA86 024F 00C9 F8FF 018B 90F9"            /* ..]���.O.���.��� */
	$"8601 0B4A FEFF 019E 90FC 86FE 8603 4F00"            /* �..J��.������.O. */
	$"488E FA86 0380 0000 8CF9 8603 1A00 3196"            /* H���.�..���...1� */
	$"F986 030B 0070 8DFA 8605 3C00 62FF 628B"            /* ��...p���.<.b�b� */
	$"F986 FF00 006F F986 043B 0030 398E FA86"            /* ���..o��.;.09��� */
	$"0183 7BF7 8602 2400 73F7 FF02 B397 94F9"            /* .�{��.$.s��.���� */
	$"8602 3B00 3EFE FFFB FF03 CF62 968C FA86"            /* �.;.>����.�b���� */
	$"033C 003D 92FA 8604 6900 002F 96F9 8602"            /* .<.=���.i../���. */
	$"7800 6FF8 8602 0F2C 8EFA 8605 8000 0049"            /* x.o��..,���.�..I */
	$"8E8B FA86 023C 00AA F9FF 02D3 A0A5 F994"            /* ����.<.���.Ӡ��� */
	$"0263 0707 F7FF 02B5 7B9E F994 0539 075B"            /* .c..��.�{���.9.[ */
	$"9B94 94FC 9407 6407 50FF FFB8 9A96 FA94"            /* �����.d.P������� */
	$"025C 07CC FEFF 0197 9BF9 9403 1607 6799"            /* .\.���.����...g� */
	$"FA94 0449 07CC 499C F994 0107 6CFA FF01"            /* ��.I.�I���..l��. */
	$"9F98 FA94 038E 0707 7BF9 9402 4707 3AF6"            /* ����.�..{��.G.:� */
	$"FF01 A69F F994 022A 1195 F994 0264 0707"            /* �.����.*.���.d.. */
	$"0169 97FA 9402 5C07 CCF8 FF01 989C F994"            /* .i���.\.���.���� */
	$"0116 50FE FF01 A99C F994 035C 0752 9AFA"            /* ..P��.����.\.R�� */
	$"9403 8E07 0798 F994 0325 073B A2F9 9403"            /* �.�..���.%.;���. */
	$"1607 7D99 FA94 0549 076C FF72 98F9 94FF"            /* ..}���.I.l�r���� */
	$"0700 7AF9 9404 4707 3A46 9AFB 9402 9491"            /* ..z��.G.:F���.�� */
	$"88F7 9402 3007 7BF7 FF02 B9A2 A0F9 9402"            /* ���.0.{��.�����. */
	$"4707 46F8 FF03 D36F A198 FA94 0349 074A"            /* G.F��.�o����.I.J */
	$"9FFA 9404 7807 0739 A1F9 9402 8707 7CF8"            /* ���.x..9���.�.|� */
	$"9402 1B39 9AFA 9405 8E07 0753 9B98 FA94"            /* �..9���.�..S���� */
	$"0249 07AC FBFF 00FF 02EF 03FF CE90 98F9"            /* .I.���.�.�.�ΐ�� */
	$"8102 4A00 00F7 FF02 C08C 8FF9 8103 2900"            /* �.J..��.�����.). */
	$"4A8C FA81 0753 0048 FFFF AF8B 83FA 8102"            /* J���.S.H�������. */
	$"4C00 C8FE FF01 868B F981 0309 0059 87FA"            /* L.���.����.�.Y�� */
	$"8104 3900 C83A 8DF9 8101 005F FAFF 018F"            /* �.9.�:���.._��.� */
	$"87FA 8103 7A00 006E FD81 FD81 0238 002E"            /* ���.z..n����.8.. */
	$"F6FF 019A 8FF9 8101 1D00 F881 0453 0000"            /* ��.����...��.S.. */
	$"5B85 FA81 024C 00C8 F8FF 0188 8DF9 8101"            /* [���.L.���.����. */
	$"0948 FEFF 019B 8FF9 8103 5000 4683 FA81"            /* �H��.����.P.F��� */
	$"037A 0000 87F9 8103 1600 2F94 F981 0409"            /* .z..���.../���.� */
	$"006E 8881 FB81 0539 005F FF5E 87F9 81FF"            /* .n����.9._�^���� */
	$"0000 71F9 8104 3800 2E36 8BF0 8104 6117"            /* ..q��.8..6���.a. */
	$"0014 A4F7 FF02 AF94 90F9 8102 3800 48F8"            /* ..���.�����.8.H� */
	$"FF03 D586 9487 FA81 0339 003B 8FFA 8104"            /* �.Ն����.9.;���. */
	$"6500 002C 94F9 8101 6500 0065 F881 020C"            /* e..,���.e..e��.. */
	$"2A8A FA81 057A 0000 478C 86FA 8102 3900"            /* *���.z..G����.9. */
	$"AAF9 FF02 CF92 9AF9 8302 4E00 00F7 FF02"            /* ���.ϒ���.N..��. */
	$"C18E 91F9 8303 2C00 4D8E FA83 0757 004A"            /* �����.,.M���.W.J */
	$"FFFF B08D 86FA 8302 4E00 C9FE FF01 888E"            /* �������.N.���.�� */
	$"F983 030B 005B 8BFE 83FD 8304 3B00 C83C"            /* ��...[�����.;.�< */
	$"90F9 8301 0062 FAFF 0191 8AFA 8303 7D00"            /* ���..b��.����.}. */
	$"0070 F983 023B 0030 F6FF 019B 91F9 8301"            /* .p��.;.0��.����. */
	$"1F00 F883 0457 0000 5D88 FA83 024E 00C9"            /* ..��.W..]���.N.� */
	$"F8FF 018B 8FF9 8301 0B4A FEFF 019C 91FC"            /* ��.����..J��.��� */
	$"83FE 8303 5200 4886 FA83 037D 0002 8BF9"            /* ���.R.H���.}..�� */
	$"8303 1A00 3196 F983 030B 0070 8BFA 8305"            /* �...1���...p���. */
	$"3B00 62FF 628A F983 FF00 0073 F983 043B"            /* ;.b�b����..s��.; */
	$"0030 398D F083 0464 1A00 16A5 F7FF 02B2"            /* .09���.d...���.� */
	$"9694 F983 023B 004A FEFF FBFF 03D6 8896"            /* ����.;.J����.ֈ� */
	$"8AFA 8303 3B00 3D91 FA83 0467 0000 2F96"            /* ���.;.=���.g../� */
	$"F983 0267 0067 F883 020F 2C8C FA83 057D"            /* ��.g.g��..,���.} */
	$"0000 498E 8AFA 8302 3B00 AAF9 FF02 D29F"            /* ..I����.;.���.ҟ */
	$"A5F9 9002 5B07 07F7 FF02 C59B 9EF9 9005"            /* ���.[..��.ś���. */
	$"3907 5B9A 9090 FC90 0762 0750 FFFF B89A"            /* 9.[�����.b.P���� */
	$"94FA 9002 5C07 CCFE FF01 969A F990 0316"            /* ���.\.���.����.. */
	$"0767 97FA 9004 4807 CC49 9CF9 9001 076C"            /* .g���.H.�I���..l */
	$"FAFF 019F 97FA 9003 8C07 077A F990 0247"            /* ��.����.�..z��.G */
	$"073A F6FF 01A6 9FF9 9002 2907 91F9 9002"            /* .:��.����.).���. */
	$"6207 0701 6995 FA90 025C 07CC F8FF 0198"            /* b...i���.\.���.� */
	$"9CF9 9001 1650 FEFF 01A8 9EF9 9003 5F07"            /* ���..P��.����._. */
	$"5292 FA90 038C 070C 97F9 9003 2507 3BA1"            /* R���.�..���.%.;� */
	$"F990 0316 077D 97FA 9005 4807 6CFF 7297"            /* ��...}���.H.l�r� */
	$"F990 FF07 007F F990 0447 073A 4699 FB90"            /* ���...��.G.:F��� */
	$"F690 0471 2607 20AC F7FF 02B8 A29F F990"            /* ��.q&. ���.����� */
	$"0247 0750 F8FF 03D8 97A1 96FA 9003 4807"            /* .G.P��.ؗ����.H. */
	$"499E FA90 0477 0707 39A1 F990 0277 0775"            /* I���.w..9���.w.u */
	$"F890 021B 3998 FA90 058C 0707 539B 96FA"            /* ��..9���.�..S��� */
	$"9002 4807 ACFB FF00 FF03 1D03 FFCE 9098"            /* �.H.���.�...�ΐ� */
	$"F97D 0243 0010 F7FF 02D4 8C8E F97D 0329"            /* �}.C..��.Ԍ��}.) */
	$"0045 8BFA 7D07 5100 48FF FFAF 8B81 FA7D"            /* .E��}.Q.H������} */
	$"024A 00C8 FEFF 0186 8BF9 7D03 0900 5885"            /* .J.���.���}.�.X� */
	$"FA7D 0438 00C8 3A8D F97D 0A00 3584 95AA"            /* �}.8.�:��}�.5��� */
	$"B0B2 B09B 8F86 FA7D 0378 0000 70FD 7DFD"            /* �������}.x..p�}� */
	$"7D02 3800 2EF6 FF01 9990 F97D 021C 0081"            /* }.8..��.���}...� */
	$"F97D 0451 0000 5B83 FA7D 0D4A 0071 8C9E"            /* �}.Q..[��}.J.q�� */
	$"AFB0 B2A8 C5FF FF88 8DF9 7D01 0948 FEFF"            /* ����������}.�H�� */
	$"019A 8FF9 7D02 5100 46F9 7D03 7800 0A86"            /* .���}.Q.F�}.x. */
	$"F97D 0316 002F 92F9 7D04 0900 6E85 7DFB"            /* �}.../��}.�.n�}� */
	$"7D05 3800 5FFF 5E86 F97D FF00 006E F97D"            /* }.8._�^��}�..n�} */
	$"0438 002E 368A F27D 056B 2500 0875 DBF6"            /* .8..6��}.k%..u�� */
	$"FF02 AF94 90F9 7D02 2900 48F8 FF03 DC8B"            /* �.����}.).H��.܋ */
	$"9485 FA7D 0338 003A 8EFA 7D04 6300 002C"            /* ���}.8.:��}.c.., */
	$"94F9 7D01 6300 005D F87D 0207 2A86 FA7D"            /* ��}.c..]�}..*��} */
	$"0578 0000 478B 84FA 7D0D 3800 5F8C 9BAD"            /* .x..G���}.8._��� */
	$"B0B2 A9C3 FFCE 929A F981 0246 0013 F7FF"            /* �����Β���.F..�� */
	$"02D4 8E90 F981 032B 0047 8DFA 8107 5400"            /* .Ԏ���.+.G���.T. */
	$"4AFF FFB0 8D84 FA81 024E 00C9 FEFF 0188"            /* J�������.N.���.� */
	$"8DF9 8103 0B00 5A88 FE81 FD81 043B 00C8"            /* ���...Z�����.;.� */
	$"3C8F F981 0A00 3886 97AC B2B3 B29C 918A"            /* <����.8��������� */
	$"FA81 037B 0000 72F9 8102 3A00 30F6 FF01"            /* ��.{..r��.:.0��. */
	$"9B92 F981 021F 0084 F981 0454 0000 5D86"            /* ����...���.T..]� */
	$"FA81 0D4E 0073 8D9F B0B2 B3A9 C7FF FF8B"            /* ��.N.s���������� */
	$"8FF9 8101 0B4A FEFF 019C 91FC 81FE 8102"            /* ���..J��.������. */
	$"5400 48F9 8103 7B00 0C8A F981 031A 0031"            /* T.H��.{..���...1 */
	$"95F9 8103 0B00 7088 FA81 053B 0062 FF62"            /* ���...p���.;.b�b */
	$"8AF9 81FF 0000 70F9 8104 3A00 3039 8CF2"            /* ����..p��.:.09�� */
	$"8105 6E28 000A 76DB F6FF 02B0 9692 F981"            /* �.n(.�v���.����� */
	$"022B 004A FEFF FBFF 03DC 8D96 87FA 8103"            /* .+.J����.܍����. */
	$"3B00 3C91 FA81 0466 0000 2F96 F981 0266"            /* ;.<���.f../���.f */
	$"005F F881 0209 2C8A FA81 057B 0000 498D"            /* ._��.�,���.{..I� */
	$"87FA 810D 3B00 628E 9EAF B2B3 AAC4 FFD2"            /* ���.;.b��������� */
	$"9FA5 F98E 0252 0720 F7FF 02D6 9B9C F98E"            /* ����.R. ��.֛��� */
	$"0538 0755 998E 8EFC 8E07 6107 50FF FFB8"            /* .8.U�����.a.P��� */
	$"9A91 FA8E 025B 07CC FEFF 0196 99F9 8E03"            /* ����.[.���.����. */
	$"1607 6695 FA8E 0448 07CC 499B F98E 0A07"            /* ..f���.H.�I����. */
	$"438E A1B4 B9BA B9A4 9E97 FA8E 038A 0707"            /* C�����������.�.. */
	$"7DF9 8E02 4607 3AF6 FF01 A59F F98E 0229"            /* }��.F.:��.����.) */
	$"0792 F98E 0261 0707 0169 94FA 8E0D 5B07"            /* .���.a...i���.[. */
	$"7C97 A9B8 B9BA B0C9 FFFF 989B F98E 0116"            /* |�������������.. */
	$"50FE FF01 A69E F98E 0261 0752 F98E 038A"            /* P��.����.a.R��.� */
	$"0719 96F9 8E03 2507 3BA1 F98E 0316 077D"            /* ..���.%.;���...} */
	$"96FA 8E05 4807 6CFF 7197 F98E FF07 007B"            /* ���.H.l�q����..{ */
	$"F98E 0446 073A 4699 FB8E F88E 057B 3307"            /* ��.F.:F�����.{3. */
	$"147C DCF6 FF02 B8A1 9EF9 8E02 3807 50F8"            /* .|���.�����.8.P� */
	$"FF03 DD9A A195 FA8E 0348 0749 9CFA 8E04"            /* �.ݚ����.H.I���. */
	$"7507 0739 A1F9 8E02 7507 6BF8 8E02 1439"            /* u..9���.u.k��..9 */
	$"96FA 8E05 8A07 0753 9A95 FA8E 0848 0769"            /* ���.�..S����.H.i */
	$"98A8 B7B9 BAB2 00C7 0316 03FF CD8E 98F9"            /* ������.�...�͎�� */
	$"7902 3B00 12F7 FF02 D88B 8DF9 7903 2800"            /* y.;..��.؋��y.(. */
	$"3988 FA79 074F 0048 FFFF AE8B 7DFA 7902"            /* 9��y.O.H����}�y. */
	$"4900 C8FE FF01 848A F979 034F 6378 80FA"            /* I.���.���y.Ocx�� */
	$"7904 3600 C83A 8CF9 7902 4A63 76FD 77FF"            /* y.6.�:��y.Jcv�w� */
	$"1201 7D85 FA79 0375 0000 6DFD 79FD 7902"            /* ..}��y.u..m�y�y. */
	$"3600 2EF6 FF01 9990 F979 021B 0082 F979"            /* 6..��.���y...��y */
	$"044F 0000 5B80 FA79 0265 536E FD77 065C"            /* .O..[��y.eSn�w.\ */
	$"0096 FFFF 878C F979 0109 48FE FF01 958E"            /* .������y.�H��.�� */
	$"F979 024F 0046 F979 0375 000A 85F9 7903"            /* �y.O.F�y.u.�y. */
	$"1600 2F91 F979 0409 006E 8379 FB79 0536"            /* ../��y.�.n�y�y.6 */
	$"005F FF5D 85F9 79FF 0000 6BF9 7904 3600"            /* ._�]��y�..k�y.6. */
	$"2E36 88F4 7905 722C 0000 5BD4 F4FF 02AE"            /* .6��y.r,..[���.� */
	$"918F F979 0228 0048 F8FF 03DE 8A94 82FA"            /* ���y.(.H��.ފ��� */
	$"7903 3600 368D FA79 045F 000B 2C94 F979"            /* y.6.6��y._..,��y */
	$"015F 0000 5DF8 7902 002A 82FA 7905 7500"            /* ._..]�y..*��y.u. */
	$"004C 8B82 FA79 025C 536D FD77 0666 0596"            /* .L���y.\Sm�w.f.� */
	$"FFCE 909A F97C 023D 0015 F7FF 02D8 8D8F"            /* �ΐ��|.=..��.؍� */
	$"F97C 032A 003B 8BFA 7C07 5200 4AFF FFAF"            /* �|.*.;��|.R.J��� */
	$"8D81 FA7C 024C 00C9 FEFF 0187 8CF9 7C03"            /* ���|.L.���.���|. */
	$"5266 7B82 FE7C FD7C 0439 00C8 3C8E F97C"            /* Rf{��|�|.9.�<��| */
	$"024D 6779 FD7A 0314 1580 87FA 7C03 7800"            /* .Mgy�z...���|.x. */
	$"006F F97C 0239 0030 F6FF 019A 92F9 7C02"            /* .o�|.9.0��.���|. */
	$"1E00 85F9 7C04 5200 005D 83FA 7C02 6857"            /* ..��|.R..]��|.hW */
	$"72FD 7A06 5F02 97FF FF8A 8EF9 7C01 0B4A"            /* r�z._.������|..J */
	$"FEFF 0197 90FC 7CFE 7C02 5200 48F9 7C03"            /* ��.���|�|.R.H�|. */
	$"7800 0C88 F97C 031A 0031 94F9 7C03 0B00"            /* x..��|...1��|... */
	$"7085 FA7C 0539 0062 FF61 87F9 7CFF 0000"            /* p��|.9.b�a��|�.. */
	$"6DF9 7C04 3900 3039 8BF4 7C05 7530 0000"            /* m�|.9.09��|.u0.. */
	$"5DD4 F4FF 02AF 9491 F97C 022A 004A FEFF"            /* ]���.����|.*.J�� */
	$"FBFF 03DE 8C96 85FA 7C03 3900 398F FA7C"            /* ��.ތ���|.9.9��| */
	$"0463 000D 2F96 F97C 0263 005F F87C 0200"            /* .c../��|.c._�|.. */
	$"2C84 FA7C 0578 0000 4E8D 85FA 7C02 5F57"            /* ,��|.x..N���|._W */
	$"70FD 7A06 6907 97FF D19C A4F9 8B02 4807"            /* p�z.i.��ќ���.H. */
	$"22F7 FF02 D99A 9BF9 8B05 3607 4897 8B8B"            /* "��.ٚ���.6.H��� */
	$"FC8B 075E 0750 FFFF B79A 8FFA 8B02 5A07"            /* ��.^.P�������.Z. */
	$"CCFE FF01 9598 F98B 0361 758A 8FFA 8B04"            /* ���.����.au����. */
	$"4607 CC49 9AF9 8B02 5A76 88FD 8A03 2022"            /* F.�I���.Zv���. " */
	$"8E95 FA8B 0387 0707 7AF9 8B02 4507 3AF6"            /* ����.�..z��.E.:� */
	$"FF01 A59F F98B 0228 0792 F98B 025E 0707"            /* �.����.(.���.^.. */
	$"0169 90FA 8B03 7764 8288 FE8A 066E 0C99"            /* .i���.wd����.n.� */
	$"FFFF 979A F98B 0116 50FE FF01 A29C F98B"            /* ������..P��.���� */
	$"025E 0752 F98B 0387 0719 95F9 8B03 2507"            /* .^.R��.�..���.%. */
	$"3BA0 F98B 0316 077D 92FA 8B05 4607 6CFF"            /* ;���...}���.F.l� */
	$"7195 F98B FF07 0078 F98B 0445 073A 4697"            /* q����..x��.E.:F� */
	$"FB8B FA8B 0583 3D07 0964 D6F4 FF02 B79F"            /* ����.�=.�d���.�� */
	$"9EF9 8B02 3607 50F8 FF03 DF99 A191 FA8B"            /* ���.6.P��.ߙ���� */
	$"0346 0746 9BFA 8B04 7207 1939 A1F9 8B02"            /* .F.F���.r..9���. */
	$"7207 6BF8 8B02 0739 91FA 8B05 8707 0757"            /* r.k��..9���.�..W */
	$"9A91 FA8B 036E 6380 88FE 8A01 7A11 0099"            /* ����.nc����.z..� */
	$"02C2 03FF CD8D 98F9 7702 3800 12F7 FF02"            /* .�.�͍��w.8..��. */
	$"D88A 8CF9 7703 2700 3886 FA77 074D 0052"            /* ؊��w.'.8��w.M.R */
	$"FFFF AE8B 7CFA 7702 4800 C8FE FF01 8488"            /* ����|�w.H.���.�� */
	$"EE77 0435 00C8 3A8B F277 0300 125F 84FA"            /* �w.5.�:��w..._�� */
	$"7703 7200 3884 FD77 FD77 0235 002E F6FF"            /* w.r.8��w�w.5..�� */
	$"0198 90F9 7702 1B00 83F9 7704 4D00 005B"            /* .���w...��w.M..[ */
	$"7FF3 7706 5300 96FF FF86 8BF9 7701 0948"            /* .�w.S.������w.�H */
	$"FEFF 018C 8EF9 7702 4D00 46F9 7703 7600"            /* ��.���w.M.F�w.v. */
	$"0A84 F977 0316 002F 90F9 7704 0900 6E81"            /* �w.../��w.�.n� */
	$"77FB 7705 3500 5FFF 5D84 F977 0200 2E81"            /* w�w.5._�]��w...� */
	$"F977 0435 002E 3687 F577 0468 1000 16A1"            /* �w.5..6��w.h...� */
	$"F2FF 02AD 908F F977 021B 0048 F7FF 0288"            /* ��.����w...H��.� */
	$"9480 FA77 0335 0029 8BFA 7704 5E00 0D2C"            /* ���w.5.)��w.^.., */
	$"94F9 7701 5E00 005C F877 0200 2A80 FA77"            /* ��w.^..\�w..*��w */
	$"0572 0000 5B8B 80F3 7706 5E00 96FF CD8F"            /* .r..[���w.^.��͏ */
	$"9AF9 7A02 3B00 15F7 FF02 D88C 8FF9 7A03"            /* ��z.;..��.،��z. */
	$"2A00 3A8A FA7A 0750 0054 FFFF AF8D 7FFA"            /* *.:��z.P.T����.� */
	$"7A02 4A00 C9FE FF01 868B F27A FD7A 0438"            /* z.J.���.���z�z.8 */
	$"00C8 3C8D F27A 0300 1563 86FA 7A03 7601"            /* .�<��z...c��z.v. */
	$"3A86 F97A 0238 0030 F6FF 019A 92F9 7A02"            /* :��z.8.0��.���z. */
	$"1D00 85F9 7A04 5000 005D 81F3 7A06 5700"            /* ..��z.P..]��z.W. */
	$"97FF FF88 8DF9 7A01 0B4A FEFF 018E 90FC"            /* ������z..J��.��� */
	$"7AFE 7A02 5000 48F9 7A03 7900 0C87 F97A"            /* z�z.P.H�z.y..��z */
	$"031A 0031 94F9 7A03 0B00 7084 FA7A 0538"            /* ...1��z...p��z.8 */
	$"0062 FF61 86F9 7A02 0131 83F9 7A04 3800"            /* .b�a��z..1��z.8. */
	$"3039 8AF5 7A04 6B13 0019 A2F2 FF02 AE92"            /* 09��z.k...���.�� */
	$"91F9 7A02 1D00 4AFE FFFA FF02 8B96 83FA"            /* ��z...J����.���� */
	$"7A03 3800 2B8D FA7A 0462 0010 2F96 F97A"            /* z.8.+��z.b../��z */
	$"0262 005E F87A 0200 2C83 FA7A 0576 0000"            /* .b.^�z..,��z.v.. */
	$"5D8D 83F3 7A06 6200 97FF D19B A4F9 8802"            /* ]���z.b.��ћ���. */
	$"4707 22F7 FF02 D999 9BF9 8805 3607 4796"            /* G."��.ٙ���.6.G� */
	$"8888 FC88 075C 075C FFFF B79A 8DFA 8802"            /* ����.\.\�������. */
	$"5907 CCFE FF01 9598 EE88 0446 07CC 499A"            /* Y.���.���.F.�I� */
	$"F288 0307 2273 95FA 8803 850A 4692 F988"            /* �.."s���.��F��� */
	$"0245 073A F6FF 01A5 9FF9 8802 2707 94F9"            /* .E.:��.����.'.�� */
	$"8802 5C07 0701 698F F388 0665 0799 FFFF"            /* �.\...i��.e.��� */
	$"979A F988 0116 50FE FF01 9B9C F988 025C"            /* ����..P��.����.\ */
	$"0752 F888 0207 1994 F988 0325 073B 9FF9"            /* .R��...���.%.;�� */
	$"8803 1607 7D91 FA88 0546 076C FF71 95F9"            /* �...}���.F.l�q�� */
	$"8802 0A3D 8FF9 8804 4507 3A46 97FB 88FB"            /* �.�=���.E.:F���� */
	$"8804 791D 0722 A8F2 FF02 B69F 9EF9 8802"            /* �.y.."���.�����. */
	$"2707 50F7 FF02 98A1 90FA 8803 4607 3699"            /* '.P��.�����.F.6� */
	$"FA88 0471 071C 39A1 F988 0271 0769 F888"            /* ��.q..9���.q.i�� */
	$"0207 3990 FA88 0585 0707 649A 90F3 8801"            /* ..9���.�..d���. */
	$"7107 0099 02E7 03FF CC8C 98F9 7307 3D28"            /* q..�.�.�̌��s.=( */
	$"394A 5C6B 7373 FE75 046E 328C 8A8C F973"            /* 9J\kss�u.n2����s */
	$"033D 2C5B 82FA 7307 4C00 5FFF FFAD 8A7A"            /* .=,[��s.L._����z */
	$"FA73 0247 00C8 FEFF 0183 87EE 7304 3400"            /* �s.G.���.���s.4. */
	$"C839 8AF2 7303 0012 4083 FA73 0272 6F77"            /* �9��s...@��s.row */
	$"FC73 FE73 0372 1600 49F6 FF01 9890 F973"            /* �s�s.r..I��.���s */
	$"021A 0082 F973 044C 0000 5B7C F373 0652"            /* ...��s.L..[|�s.R */
	$"0096 FFFF 868A F973 0109 48FE FF01 8C8D"            /* .������s.�H��.�� */
	$"F973 024C 0046 F873 0200 0A83 F973 0316"            /* �s.L.F�s..�s.. */
	$"002F 90F9 7304 0900 6E7F 73FB 7305 3400"            /* ./��s.�.n.s�s.4. */
	$"5FFF 5D83 F973 016F 77F9 7305 751C 0043"            /* _�]��s.ow�s.u..C */
	$"3686 F573 045F 1F09 4AB5 F2FF 02AC 908E"            /* 6��s._.�J���.��� */
	$"F973 0728 2E3D 4F5F 6F73 73FE 7504 6524"            /* �s.(.=O_oss�u.e$ */
	$"6D92 7DFA 7303 4428 5286 FA73 045C 001D"            /* m�}�s.D(R��s.\.. */
	$"2C94 F973 0155 0000 5AF8 7302 002A 7DFA"            /* ,��s.U..Z�s..*}� */
	$"7305 7000 005B 8B7F F373 065C 0096 FFCD"            /* s.p..[�.�s.\.��� */
	$"8E9A F977 0740 2A3C 4D5E 6E77 77FE 7804"            /* ���w.@*<M^nww�x. */
	$"7134 8D8C 8EF9 7703 402F 5D85 FA77 074E"            /* q4����w.@/]��w.N */
	$"0062 FFFF AF8C 7CFA 7702 4A00 C9FE FF01"            /* .b����|�w.J.���. */
	$"868A F277 FD77 0438 00C8 3C8D F277 0300"            /* ���w�w.8.�<��w.. */
	$"1544 86FA 7702 7672 7AF9 7703 7619 004C"            /* .D��w.vrz�w.v..L */
	$"F6FF 019A 92F9 7702 1C00 85F9 7704 4E00"            /* ��.���w...��w.N. */
	$"005D 7FF3 7706 5500 97FF FF88 8DF9 7701"            /* .].�w.U.������w. */
	$"0B4A FEFF 018E 8FFC 77FE 7702 4E00 48F8"            /* .J��.���w�w.N.H� */
	$"7702 000C 86F9 7703 1A00 3192 F977 030B"            /* w...��w...1��w.. */
	$"0070 82FA 7705 3800 62FF 6186 F977 0172"            /* .p��w.8.b�a��w.r */
	$"7AF9 7705 781E 0045 3988 F577 0463 220B"            /* z�w.x..E9��w.c". */
	$"4CB6 F2FF 02AE 9290 F977 052B 303F 5162"            /* L���.����w.+0?Qb */
	$"72FF 77FE 7804 6827 7095 81FA 7703 472B"            /* r�w�x.h'p���w.G+ */
	$"5488 FA77 045F 001F 2F96 F977 0259 005C"            /* T��w._../��w.Y.\ */
	$"F877 0200 2C81 FA77 0573 0000 5D8D 81F3"            /* �w..,��w.s..]��� */
	$"7706 5F00 97FF D19B A5F9 8605 4E35 485B"            /* w._.��ћ���.N5H[ */
	$"6E7F FE87 FF88 0483 4392 999A F986 054E"            /* n.����.�C�����.N */
	$"3B6C 9286 86FC 8607 5B07 6CFF FFB7 998C"            /* ;l�����.[.l����� */
	$"FA86 0259 07CC FEFF 0194 97EE 8604 4507"            /* ��.Y.���.���.E. */
	$"CC48 99F2 8603 0722 5294 FA86 0285 8188"            /* �H��.."R���.��� */
	$"F986 0385 2407 54F6 FF01 A59F F986 0227"            /* ��.�$.T��.����.' */
	$"0792 F986 025B 0707 0169 8DF3 8606 6407"            /* .���.[...i��.d. */
	$"99FF FF96 99F9 8601 1650 FEFF 019B 9CF9"            /* �������..P��.��� */
	$"8602 5B07 52F8 8602 0719 94F9 8603 2507"            /* �.[.R��...���.%. */
	$"3B9F F986 0316 077D 8FFA 8605 4507 6CFF"            /* ;���...}���.E.l� */
	$"7194 F986 0181 88F8 8604 2A07 4E46 96FB"            /* q���.����.*.NF�� */
	$"86FB 8604 712F 1653 BAF2 FF02 B69F 9CF9"            /* ���.q/.S���.���� */
	$"8605 363C 4C5F 7183 FE87 FF88 0479 347D"            /* �.6<L_q�����.y4} */
	$"A18E FA86 0355 3562 96FA 8604 6F07 2839"            /* ����.U5b���.o.(9 */
	$"A1F9 8602 6707 68F8 8602 0739 8EFA 8605"            /* ���.g.h��..9���. */
	$"8407 0764 9A8F F386 016F 0700 9902 AA03"            /* �..d���.o..�.�. */
	$"FFCC 8898 F970 0054 F770 045A 007A 718B"            /* �̈��p.T�p.Z.zq� */
	$"EE70 0748 005F FFFF AD8A 77FA 7002 4600"            /* �p.H._����w�p.F. */
	$"C8FE FF01 8286 F970 032B 2224 75FA 7004"            /* ���.���p.+"$u�p. */
	$"3300 C839 88F9 70FA 2203 0012 3182 F270"            /* 3.�9��p�"...1��p */
	$"FE70 0338 0006 D6F6 FF01 9790 F970 0219"            /* �p.8..���.���p.. */
	$"0081 F970 0448 0000 5B79 FA70 0054 FB22"            /* .��p.H..[y�p.T�" */
	$"0617 0096 FFFF 8588 F970 0109 48FE FF01"            /* ...������p.�H��. */
	$"8A8C F970 0250 0047 F870 0200 0A81 F970"            /* ���p.P.G�p..�p */
	$"0316 002F 8FF9 7004 0900 6E7B 70FB 7005"            /* .../��p.�.n{p�p. */
	$"3300 5FFF 5D82 EF70 0548 0000 CD36 85F4"            /* 3._�]��p.H..�6�� */
	$"7005 6F4D 1F0F 69D9 F4FF 02AB 8E8D F970"            /* p.oM..i���.����p */
	$"004D F770 0446 003D 927B EF70 045A 0021"            /* .M�p.F.=�{�p.Z.! */
	$"2C94 F970 0148 0000 5AF8 7002 002A 7BFA"            /* ,��p.H..Z�p..*{� */
	$"7005 6E00 005B 8A7B FA70 0047 FB22 061B"            /* p.n..[�{�p.G�".. */
	$"0096 FFCD 8B9A F973 0058 F773 045D 007B"            /* .��͋��s.X�s.].{ */
	$"738D EE73 074C 0062 FFFF AE8C 7AFA 7302"            /* s��s.L.b����z�s. */
	$"4800 C9FE FF01 8588 F973 032E 2527 78FE"            /* H.���.���s..%'x� */
	$"73FD 7304 3500 C83B 8CF9 73FA 2503 0015"            /* s�s.5.�;��s�%... */
	$"3384 EF73 033A 0008 D7F6 FF01 9992 F973"            /* 3��s.:..���.���s */
	$"021B 0083 F973 044C 0000 5D7C FA73 0057"            /* ...��s.L..]|�s.W */
	$"FB25 061B 0097 FFFF 878C F973 010B 4AFE"            /* �%...������s..J� */
	$"FF01 8C8E FC73 FE73 0253 0049 F873 0200"            /* �.���s�s.S.I�s.. */
	$"0C84 F973 031A 0031 91F9 7303 0B00 707F"            /* .��s...1��s...p. */
	$"FA73 0535 0062 FF61 84EF 7305 4A00 00CE"            /* �s.5.b�a��s.J..� */
	$"3987 F473 0572 5022 116B D9F4 FF02 AC90"            /* 9��s.rP".k���.�� */
	$"8FF9 7300 4FFC 73FC 7304 4800 4095 7DEF"            /* ��s.O�s�s.H.@�}� */
	$"7304 5D00 242F 96F9 7302 4C00 5CF8 7302"            /* s.].$/��s.L.\�s. */
	$"002C 7FFA 7305 7100 005D 8C7F FA73 004A"            /* .,.�s.q..]�.�s.J */
	$"FB25 061E 0097 FFD1 98A5 F982 0066 F782"            /* �%...��ј���.f�� */
	$"046D 0783 8299 F382 FC82 0759 076C FFFF"            /* .m.������.Y.l�� */
	$"B699 88FA 8202 5707 CCFE FF01 9296 F982"            /* �����.W.���.���� */
	$"033A 3032 86FA 8204 4407 CC48 98F9 82FA"            /* .:02���.D.�H���� */
	$"3003 0722 4092 EF82 0347 0713 D8F6 FF01"            /* 0.."@��.G..���. */
	$"A49F F982 0226 0791 F982 0259 0707 0169"            /* ����.&.���.Y...i */
	$"8AFA 8200 65FB 3006 2507 99FF FF95 98F9"            /* ���.e�0.%.������ */
	$"8201 1650 FEFF 0199 9AF9 8202 6207 53F8"            /* �..P��.����.b.S� */
	$"8202 0719 91F9 8203 2507 3B9E F982 0316"            /* �...���.%.;���.. */
	$"077D 8CFA 8205 4407 6CFF 7092 EF82 0559"            /* .}���.D.l�p��.Y */
	$"0709 D146 95FB 82F9 8204 6131 1D72 DCF4"            /* .��F�����.a1.r�� */
	$"FF02 B59C 9BF9 8200 5EF7 8204 5707 4EA1"            /* �.�����.^��.W.N� */
	$"8CEF 8204 6D07 2C39 A1F9 8202 5907 68F8"            /* ��.m.,9���.Y.h� */
	$"8202 0739 8CFA 8205 8107 0764 998C FA82"            /* �..9���.�..d���� */
	$"0059 FB30 0129 0700 9902 AF03 FFCC 8798"            /* .Y�0.)..�.�.�̇� */
	$"F96D 004D F76D 0458 0080 4C8A EE6D 0746"            /* �m.M�m.X.�L��m.F */
	$"005F FFFF AC8A 75FA 6D02 4500 C8FE FF01"            /* ._����u�m.E.���. */
	$"8185 F96D 0309 0025 79FA 6D04 3200 C839"            /* ���m.�.%y�m.2.�9 */
	$"88F9 6D01 0032 FB7A 0285 3181 F26D FE6D"            /* ��m..2�z.�1��m�m */
	$"0365 0500 71F6 FF01 968F F96D 0217 0075"            /* .e..q��.���m...u */
	$"F96D 0446 0000 5B77 FA6D 0245 006B FB7A"            /* �m.F..[w�m.E.k�z */
	$"04C0 FFFF 7688 F96D 0109 48FE FF01 888B"            /* .���v��m.�H��.�� */
	$"F96D 0258 004A F86D 0200 0A80 F96D 0316"            /* �m.X.J�m..�m.. */
	$"002F 8EF9 6D04 0900 6E79 6DFB 6D05 3200"            /* ./��m.�.nym�m.2. */
	$"5FFF 5D81 EF6D 0565 0900 6135 84F2 6D04"            /* _�]��m.e�.a5��m. */
	$"6239 252F B7F5 FF02 A98C 8CF9 6D00 52F7"            /* b9%/���.����m.R� */
	$"6D04 4500 1992 78EF 6D04 5800 212C 94F9"            /* m.E..�x�m.X.!,�� */
	$"6D01 4600 005A F96D 0370 0022 79FA 6D05"            /* m.F..Z�m.p."y�m. */
	$"6C00 005B 8A79 FA6D 0232 005B FB7A 04C0"            /* l..[�y�m.2.[�z.� */
	$"FFCC 8A9A F970 0050 F770 045B 0081 4E8D"            /* �̊��p.P�p.[.�N� */
	$"EE70 0749 0062 FFFF AE8C 78FA 7002 4800"            /* �p.I.b����x�p.H. */
	$"C9FE FF01 8488 F970 030B 0027 7CFE 70FD"            /* ���.���p...'|�p� */
	$"7004 3500 C83B 8BF9 7001 0034 FB7C 0286"            /* p.5.�;��p..4�|.� */
	$"3383 EF70 0368 0700 72F6 FF01 9891 F970"            /* 3��p.h..r��.���p */
	$"021B 0078 F970 0449 0000 5D7A FA70 0248"            /* ...x�p.I..]z�p.H */
	$"006D FB7C 04C1 FFFF 788B F970 010B 4AFE"            /* .m�|.���x��p..J� */
	$"FF01 8B8D FC70 FE70 025B 004D F870 0200"            /* �.���p�p.[.M�p.. */
	$"0C83 F970 031A 0031 91F9 7003 0B00 707C"            /* .��p...1��p...p| */
	$"FA70 0535 0062 FF61 84EF 7005 690B 0062"            /* �p.5.b�a��p.i..b */
	$"3986 F270 0465 3C28 32B8 F5FF 02AB 8E8F"            /* 9��p.e<(2���.��� */
	$"F970 0055 FC70 FC70 0448 001B 957B EF70"            /* �p.U�p�p.H..�{�p */
	$"045B 0024 2F96 F970 0249 005C F970 0373"            /* .[.$/��p.I.\�p.s */
	$"0025 7CFA 7005 6F00 005D 8C7C FA70 0235"            /* .%|�p.o..]�|�p.5 */
	$"005C FB7C 04C1 FFCF 97A5 F980 005F F780"            /* .\�|.��ϗ���._�� */
	$"046C 0787 5B99 F380 FC80 0757 076C FFFF"            /* .l.�[����.W.l�� */
	$"B699 86FA 8002 5707 CCFE FF01 9296 F980"            /* �����.W.���.���� */
	$"0316 0733 8BFA 8004 4307 CC48 98F9 8001"            /* ...3���.C.�H���. */
	$"073F FB83 028E 4091 EF80 0378 1107 7AF6"            /* .?��.�@��.x..z� */
	$"FF01 A39F F980 0225 0787 F980 0257 0707"            /* �.����.%.���.W.. */
	$"0169 88FA 8002 5707 76FB 8304 C2FF FF88"            /* .i���.W.v��.���� */
	$"98F9 8001 1650 FEFF 0198 9AF9 8002 6C07"            /* ���..P��.����.l. */
	$"58F8 8002 0719 90F9 8003 2507 3B9C F980"            /* X��...���.%.;��� */
	$"0316 077D 8BFA 8005 4307 6CFF 7091 EF80"            /* ...}���.C.l�p�� */
	$"0579 1507 6B46 94FB 80F8 8004 764E 383F"            /* .y..kF�����.vN8? */
	$"BEF5 FF02 B39B 9BF9 8000 66F7 8004 5707"            /* ���.�����.f��.W. */
	$"27A1 8AEF 8004 6C07 2C39 A1F9 8002 5707"            /* '���.l.,9���.W. */
	$"68F9 8003 8307 308A F980 FF07 0264 998B"            /* h��.�.0����..d�� */
	$"FA80 0243 0764 FB83 00C2 02FE 03FF CB85"            /* ��.C.d��.�.�.�˅ */
	$"98F9 6B03 484F 4F62 FA6B 0455 0096 228A"            /* ��k.HOOb�k.U.�"� */
	$"F96B 0359 4F4F 67FA 6B07 4500 5FFF FFAC"            /* �k.YOOg�k.E._��� */
	$"8A72 FA6B 0244 00C8 FEFF 0181 85F9 6B03"            /* �r�k.D.���.���k. */
	$"0900 5777 FA6B 0431 00C8 3987 F96B 0100"            /* �.Ww�k.1.�9��k.. */
	$"5FFA FF01 3480 FA6B 036D 1917 63FD 6BFD"            /* _��.4��k.m..c�k� */
	$"6B02 3000 3BF6 FF01 968F F96B 0217 0072"            /* k.0.;��.���k...r */
	$"F96B 0445 0000 5B75 FA6B 0244 00C8 F8FF"            /* �k.E..[u�k.D.��� */
	$"0173 87F9 6B01 0948 FEFF 017F 8AF9 6B02"            /* .s��k.�H��..��k. */
	$"5500 52F8 6B02 000A 80F9 6B03 1600 2F8E"            /* U.R�k..�k.../� */
	$"F96B 0409 006E 786B FB6B 0531 005F FF5C"            /* �k.�.nxk�k.1._�\ */
	$"81F9 6B02 1617 59F9 6B04 3100 2E44 83F1"            /* ��k...Y�k.1..D�� */
	$"6B05 6C54 3A33 72C5 F7FF 02A8 8C8C F96B"            /* k.lT:3r���.����k */
	$"034A 4F4F 67FA 6B04 4400 0092 77FA 6B03"            /* .JOOg�k.D..�w�k. */
	$"5C4F 4F63 FA6B 0455 002C 2C94 F96B 0145"            /* \OOc�k.U.,,��k.E */
	$"0000 5AF9 6B03 6800 1F75 FA6B 0569 0000"            /* ..Z�k.h..u�k.i.. */
	$"5E8A 78FA 6B02 3100 AAF9 FF02 CC88 9AF9"            /* ^�x�k.1.���.̈�� */
	$"6E03 4A52 5265 FA6E 0459 0097 258C F96E"            /* n.JRRe�n.Y.�%��n */
	$"035C 5252 69FA 6E07 4800 62FF FFAD 8C76"            /* .\RRi�n.H.b����v */
	$"FA6E 0247 00C9 FEFF 0183 88F9 6E03 0B00"            /* �n.G.���.���n... */
	$"597A FE6E FD6E 0434 00C8 3B8A F96E 0100"            /* Yz�n�n.4.�;��n.. */
	$"62FA FF01 3683 FA6E 036F 1B1B 66F9 6E02"            /* b��.6��n.o..f�n. */
	$"3300 3DF6 FF01 9891 F96E 021A 0075 F96E"            /* 3.=��.���n...u�n */
	$"0448 0000 5D78 FA6E 0247 00C9 F8FF 0176"            /* .H..]x�n.G.���.v */
	$"8AF9 6E01 0B4A FEFF 0182 8CFC 6EFE 6E02"            /* ��n..J��.���n�n. */
	$"5900 54F8 6E02 000C 83F9 6E03 1A00 3190"            /* Y.T�n...��n...1� */
	$"F96E 030B 0070 7AFA 6E05 3400 62FF 5F83"            /* �n...pz�n.4.b�_� */
	$"F96E 021A 1B5C F96E 0434 0030 4686 F16E"            /* �n...\�n.4.0F��n */
	$"056F 583D 3675 C5F7 FF02 AA8E 8EF9 6E05"            /* .oX=6u���.����n. */
	$"4E52 526B 6E6E FC6E 0447 0000 957A FA6E"            /* NRRknn�n.G..�z�n */
	$"035F 5252 66FA 6E04 5900 302F 96F9 6E02"            /* ._RRf�n.Y.0/��n. */
	$"4800 5CF9 6E03 6C00 2178 FA6E 056D 0000"            /* H.\�n.l.!x�n.m.. */
	$"618C 7BFA 6E02 3400 AAF9 FF02 CF96 A5F9"            /* a�{�n.4.���.ϖ�� */
	$"7D03 5A5F 5F75 FA7D 0469 0799 3198 F97D"            /* }.Z__u�}.i.�1��} */
	$"056B 5F5F 797D 7DFC 7D07 5507 6CFF FFB6"            /* .k__y}}�}.U.l��� */
	$"9985 FA7D 0255 07CC FEFF 0191 96F9 7D03"            /* ���}.U.���.���}. */
	$"1607 6688 FA7D 0443 07CC 4897 F97D 0107"            /* ..f��}.C.�H��}.. */
	$"6CFA FF01 4590 FA7D 0380 2625 76F9 7D02"            /* l��.E��}.�&%v�}. */
	$"4007 45F6 FF01 A39F F97D 0225 0786 F97D"            /* @.E��.���}.%.��} */
	$"0255 0707 0168 86FA 7D02 5507 CCF8 FF01"            /* .U...h��}.U.���. */
	$"8697 F97D 0116 50FE FF01 909A F97D 0269"            /* ���}..P��.���}.i */
	$"0761 F87D 0207 1990 F97D 0325 073A 9CF9"            /* .a�}...��}.%.:�� */
	$"7D03 1607 7D88 FA7D 0543 076C FF70 91F9"            /* }...}��}.C.l�p�� */
	$"7DFF 2500 6DF9 7D04 4207 3A52 94FB 7DF7"            /* }�%.m�}.B.:R��}� */
	$"7D05 7F68 5048 81C9 F7FF 02B3 9B9A F97D"            /* }..hPH����.����} */
	$"035D 5F5F 7AFA 7D04 5507 07A1 88FA 7D03"            /* .]__z�}.U..���}. */
	$"6F5F 5F75 FA7D 0469 073B 39A1 F97D 0255"            /* o__u�}.i.;9��}.U */
	$"0768 F87D 0207 2B86 F97D FF07 0267 998A"            /* .h�}..+��}�..g�� */
	$"FA7D 0243 07AC FBFF 00FF 0305 03FF CA83"            /* �}.C.���.�...�ʃ */
	$"97F9 6603 3D00 0065 FA66 0453 0096 1A88"            /* ��f.=..e�f.S.�.� */
	$"F966 0322 0000 73FA 6607 4200 6BFF FFAB"            /* �f."..s�f.B.k��� */
	$"886F FA66 0243 00C8 FEFF 0180 84F9 6603"            /* �o�f.C.���.���f. */
	$"0900 5B73 FA66 0430 00C8 3886 F966 0100"            /* �.[s�f.0.�8��f.. */
	$"5FFA FF01 577D F966 0200 147C FD66 FD66"            /* _��.W}�f...|�f�f */
	$"0231 0048 F6FF 0195 8FF9 6602 1600 72F9"            /* .1.H��.���f...r� */
	$"6604 4200 005B 71FA 6602 4300 C8F8 FF01"            /* f.B..[q�f.C.���. */
	$"7286 F966 0109 48FE FF01 7988 F966 0253"            /* r��f.�H��.y��f.S */
	$"0052 F866 0205 0A7D F966 0316 002E 8DF9"            /* .R�f..�}�f....�� */
	$"6604 0900 6D75 66FB 6605 3000 5FFF 5C7F"            /* f.�.muf�f.0._�\. */
	$"F966 0200 0F7B F966 0431 002E 5082 FA66"            /* �f...{�f.1..P��f */
	$"0168 5BF8 6603 6928 0068 F7FF 02A6 888A"            /* .h[�f.i(.h��.��� */
	$"F966 032A 0005 6CFA 6604 4300 0092 73FA"            /* �f.*..l�f.C..�s� */
	$"6603 3000 006E FA66 0453 0032 2B94 F966"            /* f.0..n�f.S.2+��f */
	$"0142 0001 5A6C F966 0200 1F71 F966 FF00"            /* .B..Zl�f...q�f�. */
	$"0270 8875 FA66 0230 00AA F9FF 02CB 8599"            /* .p�u�f.0.���.˅� */
	$"F969 0340 0000 67FA 6904 5700 971C 8BF9"            /* �i.@..g�i.W.�.�� */
	$"6903 2600 0177 FA69 0745 006D FFFF AD8B"            /* i.&..w�i.E.m���� */
	$"72FA 6902 4600 C9FE FF01 8286 F969 030B"            /* r�i.F.���.���i.. */
	$"005D 77FE 69FD 6904 3300 C83A 88F9 6901"            /* .]w�i�i.3.�:��i. */
	$"0062 FAFF 015A 81F9 6902 0016 80F9 6902"            /* .b��.Z��i...��i. */
	$"3400 4AF6 FF01 9791 F969 0219 0076 F969"            /* 4.J��.���i...v�i */
	$"0445 0000 5D75 FA69 0246 00C9 F8FF 0175"            /* .E..]u�i.F.���.u */
	$"88F9 6901 0B4A FEFF 017C 8BFC 69FE 6902"            /* ��i..J��.|��i�i. */
	$"5700 54F8 6902 070C 81F9 6903 1A00 308F"            /* W.T�i...��i...0� */
	$"F969 030B 0070 78FA 6905 3300 62FF 5F82"            /* �i...px�i.3.b�_� */
	$"F969 0200 117F F969 0434 0030 5284 FA69"            /* �i....�i.4.0R��i */
	$"016C 5DF8 6903 6D2A 016B F7FF 02A8 8B8D"            /* .l]�i.m*.k��.��� */
	$"F969 052E 0007 6F69 69FC 6904 4600 0095"            /* �i....oii�i.F..� */
	$"77FA 6903 3300 0071 FA69 0457 0035 2E96"            /* w�i.3..q�i.W.5.� */
	$"F969 0345 005C 6FF9 6902 0021 75F9 69FF"            /* �i.E.\o�i..!u�i� */
	$"0002 718B 78FA 6902 3300 AAF9 FF02 CE94"            /* ..q�x�i.3.���.Δ */
	$"A4F9 7A03 5007 0777 FA7A 0467 0799 2998"            /* ��z.P..w�z.g.�)� */
	$"F97A 0533 070A 857A 7AFC 7A07 5307 76FF"            /* �z.3.zz�z.S.v� */
	$"FFB5 9883 FA7A 0254 07CC FEFF 0191 95F9"            /* �����z.T.���.��� */
	$"7A03 1607 6986 FA7A 0442 07CC 4796 F97A"            /* z...i��z.B.�G��z */
	$"0107 6CFA FF01 698F FA7A 037B 0724 8EF9"            /* ..l��.i��z.{.$�� */
	$"7A02 4207 50F6 FF01 A29E F97A 0224 0786"            /* z.B.P��.���z.$.� */
	$"F97A 0253 0707 0168 84FA 7A02 5407 CCF8"            /* �z.S...h��z.T.�� */
	$"FF01 8596 F97A 0116 50FE FF01 8C98 F97A"            /* �.���z..P��.���z */
	$"0267 0761 F87A 0212 198F F97A 0325 073A"            /* .g.a�z...��z.%.: */
	$"9BF9 7A03 1607 7D86 FA7A 0542 076C FF6F"            /* ��z...}��z.B.l�o */
	$"90F9 7A02 071D 8DF9 7A04 4207 3A5F 92FB"            /* ��z...��z.B.:_�� */
	$"7A02 7A7C 6EF8 7A03 7D3A 0B73 F7FF 02B0"            /* z.z|n�z.}:.s��.� */
	$"9899 F97A 033B 0712 80FA 7A04 5407 07A0"            /* ���z.;..��z.T..� */
	$"85FA 7A03 4207 0780 FA7A 0467 0742 38A1"            /* ��z.B..��z.g.B8� */
	$"F97A 0353 0768 80FA 7A03 7B07 2B84 FA7A"            /* �z.S.h��z.{.+��z */
	$"057B 0707 7699 87FA 7A02 4207 ACFB FF00"            /* .{..v���z.B.���. */
	$"FF03 0E03 FFCA 8196 F963 033C 000F 78FA"            /* �...�ʁ��c.<..x� */
	$"6304 5100 961A 87F9 6303 2200 267C FA63"            /* c.Q.�.��c.".&|�c */
	$"0740 007A FFFF AB88 6DFA 6302 4200 C8FE"            /* .@.z����m�c.B.�� */
	$"FF01 7F83 F963 0309 005B 71FA 6304 2F00"            /* �..��c.�.[q�c./. */
	$"C838 86F9 6301 005F FAFF 017C 7DFA 6303"            /* �8��c.._��.|}�c. */
	$"6400 1A7A FD63 FD63 0231 004A F6FF 0194"            /* d..z�c�c.1.J��.� */
	$"8FF9 6303 1500 7371 FA63 0440 0000 5A6F"            /* ��c...sq�c.@..Zo */
	$"FA63 0242 00C8 F8FF 0179 85F9 6301 0948"            /* �c.B.���.y��c.�H */
	$"FEFF 0177 88F9 6302 5100 52F8 6302 0C0A"            /* ��.w��c.Q.R�c..� */
	$"7CF9 6303 1600 2E8C F963 0409 006D 7263"            /* |�c....��c.�.mrc */
	$"FB63 052F 005F FF5C 7DF9 6302 000B 7FF9"            /* �c./._�\}�c....� */
	$"6304 3100 4542 81FA 6303 6400 3364 F963"            /* c.1.EB��c.d.3d�c */
	$"0222 007A F7FF 02A5 878A F963 0331 003A"            /* .".z��.����c.1.: */
	$"6DFA 6304 4200 0091 71FA 6303 2F00 1C84"            /* m�c.B..�q�c./..� */
	$"FA63 0451 0039 2194 F963 0146 0001 5A76"            /* �c.Q.9!��c.F..Zv */
	$"FA63 0364 001F 70FA 6305 6400 0070 8873"            /* �c.d..p�c.d..p�s */
	$"FA63 022F 00AA F9FF 02CA 8398 F967 033F"            /* �c./.���.ʃ��g.? */
	$"0011 7BFA 6704 5400 971C 8AF9 6703 2500"            /* ..{�g.T.�.��g.%. */
	$"287F FA67 0744 007C FFFF AC8B 71FA 6702"            /* (.�g.D.|����q�g. */
	$"4500 C9FE FF01 8286 F967 030B 005D 76FE"            /* E.���.���g...]v� */
	$"67FD 6704 3200 C83A 88F9 6701 0062 FAFF"            /* g�g.2.�:��g..b�� */
	$"FF80 FA67 0368 001C 7CF9 6702 3300 4DF6"            /* ���g.h..|�g.3.M� */
	$"FF01 9691 F967 0319 0076 76FA 6704 4400"            /* �.���g...vv�g.D. */
	$"005C 73FA 6702 4500 C9F8 FF01 7B88 F967"            /* .\s�g.E.���.{��g */
	$"010B 4AFE FF01 7A8B FC67 FE67 0254 0054"            /* ..J��.z��g�g.T.T */
	$"F867 020F 0C80 F967 031A 0030 8EF9 6703"            /* �g...��g...0��g. */
	$"0B00 7076 FA67 0532 0062 FF5F 81F9 6702"            /* ..pv�g.2.b�_��g. */
	$"000D 82F9 6704 3300 4745 83FA 6703 6800"            /* ..��g.3.GE��g.h. */
	$"3568 F967 0225 007C F7FF 02A8 8A8C F967"            /* 5h�g.%.|��.����g */
	$"0533 003C 7067 67FC 6704 4500 0094 75FA"            /* .3.<pgg�g.E..�u� */
	$"6703 3200 1E86 FA67 0454 003C 2496 F967"            /* g.2..��g.T.<$��g */
	$"0349 005C 79F9 6702 0021 73FA 6705 6800"            /* .I.\y�g..!s�g.h. */
	$"0071 8B77 FA67 0232 00AA F9FF 02CE 91A3"            /* .q�w�g.2.���.Α� */
	$"F978 034E 071D 8AFA 7804 6607 9929 97F9"            /* �x.N..��x.f.�)�� */
	$"7805 3207 358D 7878 FC78 0751 0783 FFFF"            /* x.2.5�xx�x.Q.��� */
	$"B598 81FA 7802 5307 CCFE FF01 9094 F978"            /* ����x.S.���.���x */
	$"0316 0769 84FA 7804 4007 CC47 96F9 7801"            /* ...i��x.@.�G��x. */
	$"076C FAFF FF8E FA78 0379 0729 8BF9 7802"            /* .l�����x.y.)��x. */
	$"4007 52F6 FF01 A19E F978 0322 0786 84FA"            /* @.R��.���x.".��� */
	$"7802 5107 0701 6882 FA78 0253 07CC F8FF"            /* x.Q...h��x.S.��� */
	$"018B 96F9 7801 1650 FEFF 018A 98F9 7802"            /* .���x..P��.���x. */
	$"6607 61F8 7802 1B19 8DF9 7803 2507 3A9A"            /* f.a�x...��x.%.:� */
	$"F978 0316 077D 84FA 7805 4007 6CFF 6F8F"            /* �x...}��x.@.l�o� */
	$"F978 0207 1A8F F978 0440 074D 5091 FB78"            /* �x...��x.@.MP��x */
	$"0478 7909 4379 F978 0232 0783 F7FF 02B0"            /* .xy�Cy�x.2.���.� */
	$"9798 F978 0340 0749 81FA 7804 5307 07A0"            /* ���x.@.I��x.S..� */
	$"84FA 7803 4007 2994 FA78 0466 0747 30A1"            /* ��x.@.)��x.f.G0� */
	$"F978 0357 0768 87FA 7803 7907 2B83 FA78"            /* �x.W.h��x.y.+��x */
	$"0579 0707 7698 85FA 7802 4007 ACFB FF00"            /* .y..v���x.@.���. */
	$"FF03 1103 FFC9 8096 F961 0348 0019 77FA"            /* �...�ɀ��a.H..w� */
	$"6104 4F00 961A 86F9 6103 2100 3A7B FA61"            /* a.O.�.��a.!.:{�a */
	$"073E 007A FFFF AB87 6CFA 6102 4000 C8FE"            /* .>.z����l�a.@.�� */
	$"FF01 7F83 F961 0309 005B 70FA 6104 2E00"            /* �..��a.�.[p�a... */
	$"C838 85F9 6101 005F FAFF 018A 7CFA 6103"            /* �8��a.._��.�|�a. */
	$"6200 1A78 FD61 FD61 0230 005F F6FF 0194"            /* b..x�a�a.0._��.� */
	$"8FF9 6103 1500 756F FA61 043E 0000 5A6E"            /* ��a...uo�a.>..Zn */
	$"FA61 0240 00C8 F8FF 0181 85F9 6101 0948"            /* �a.@.���.���a.�H */
	$"FEFF 0177 87F9 6102 5A00 54F8 6102 0C13"            /* ��.w��a.Z.T�a... */
	$"7BF9 6103 1600 2E8B F961 0409 006D 7061"            /* {�a....��a.�.mpa */
	$"FB61 052E 005F FF5C 7DF9 6102 000A 88F9"            /* �a..._�\}�a..� */
	$"6104 3000 4835 80FA 6103 6200 2179 F961"            /* a.0.H5��a.b.!y�a */
	$"0221 007A F7FF 02A4 8588 F961 0332 003A"            /* .!.z��.����a.2.: */
	$"6BFA 6104 4000 0090 6FFA 6103 2E00 2B83"            /* k�a.@..�o�a...+� */
	$"FA61 044F 0047 1A94 F961 0140 0001 4D75"            /* �a.O.G.��a.@..Mu */
	$"FA61 0362 001F 6EFA 6105 6200 0070 8871"            /* �a.b..n�a.b..p�q */
	$"FA61 022E 00AA F9FF 02CA 8298 F964 034C"            /* �a...���.ʂ��d.L */
	$"001B 7AFA 6404 5300 971C 8AF9 6403 2500"            /* ..z�d.S.�.��d.%. */
	$"3C7D FA64 0742 007C FFFF AC8A 6FFA 6402"            /* <}�d.B.|����o�d. */
	$"4400 C9FE FF01 8185 F964 030B 005D 73FE"            /* D.���.���d...]s� */
	$"64FD 6404 3100 C83A 87F9 6401 0062 FAFF"            /* d�d.1.�:��d..b�� */
	$"018C 7FFA 6403 6600 1C7B F964 0233 0062"            /* .�.�d.f..{�d.3.b */
	$"F6FF 0196 91F9 6403 1700 7873 FA64 0442"            /* ��.���d...xs�d.B */
	$"0000 5C71 FA64 0244 00C9 F8FF 0184 87F9"            /* ..\q�d.D.���.��� */
	$"6401 0B4A FEFF 017A 8AFC 64FE 6402 5D00"            /* d..J��.z��d�d.]. */
	$"57F8 6402 0F15 7FF9 6403 1A00 308D F964"            /* W�d....�d...0��d */
	$"030B 006F 73FA 6405 3100 62FF 5E80 F964"            /* ...os�d.1.b�^��d */
	$"0200 0C8B F964 0433 004A 3883 FA64 0366"            /* ...��d.3.J8��d.f */
	$"0024 7CF9 6402 2500 7CF7 FF02 A687 8BF9"            /* .$|�d.%.|��.���� */
	$"6405 3500 3D6E 6464 FC64 0444 0000 9272"            /* d.5.=ndd�d.D..�r */
	$"FA64 0331 002E 85FA 6404 5300 491C 96F9"            /* �d.1..��d.S.I.�� */
	$"6403 4400 4F78 FA64 0366 0021 71FA 6405"            /* d.D.Ox�d.f.!q�d. */
	$"6600 0071 8B75 FA64 0231 00AA F9FF 02CD"            /* f..q�u�d.1.���.� */
	$"90A3 F975 035B 0728 88FA 7504 6407 9929"            /* ���u.[.(��u.d.�) */
	$"96F9 7505 3207 498C 7575 FC75 0750 0783"            /* ��u.2.I�uu�u.P.� */
	$"FFFF B598 7FFA 7502 5307 CCFE FF01 9092"            /* ����.�u.S.���.�� */
	$"F975 0316 0769 82FA 7504 3F07 CC47 96F9"            /* �u...i��u.?.�G�� */
	$"7501 076C FAFF 0199 8EFA 7503 7707 298A"            /* u..l��.���u.w.)� */
	$"F975 0240 076C F6FF 01A1 9EF9 7503 2207"            /* �u.@.l��.���u.". */
	$"8782 FA75 0250 0707 0168 81FA 7502 5307"            /* ���u.P...h��u.S. */
	$"CCF8 FF01 9296 F975 0116 50FE FF01 8A98"            /* ���.���u..P��.�� */
	$"F975 0270 0763 F875 021B 228D F975 0325"            /* �u.p.c�u.."��u.% */
	$"073A 99F9 7503 1607 7D83 FA75 053F 076C"            /* .:��u...}��u.?.l */
	$"FF6F 8EF9 7502 0719 98F9 7504 4007 5045"            /* �o��u...��u.@.PE */
	$"90FB 7504 7577 0730 8BF9 7502 3207 83F7"            /* ��u.uw.0��u.2.�� */
	$"FF02 AF96 97F9 7503 4207 4A7F FA75 0453"            /* �.����u.B.J.�u.S */
	$"0707 9F82 FA75 033F 0738 94FA 7504 6407"            /* ..���u.?.8��u.d. */
	$"5329 A1F9 7503 5307 5C86 FA75 0378 072B"            /* S)��u.S.\��u.x.+ */
	$"81FA 7505 7707 0776 9884 FA75 023F 07AC"            /* ��u.w..v���u.?.� */
	$"FBFF 00FF 0311 03FF C97C 95F9 5C03 4700"            /* ��.�...��|��\.G. */
	$"1975 FA5C 044D 0096 1985 F95C 0320 003A"            /* .u�\.M.�.��\. .: */
	$"79FA 5C07 3C00 7AFF FFAA 8768 FA5C 023F"            /* y�\.<.z����h�\.? */
	$"00C8 FEFF 017D 81F9 5C03 0900 5B6D FA5C"            /* .���.}��\.�.[m�\ */
	$"042C 00C8 3684 F95C 0100 5FFA FF01 887B"            /* .,.�6��\.._��.�{ */
	$"FA5C 035F 000D 86FD 5CFD 5C02 2F00 5FF6"            /* �\._..��\�\./._� */
	$"FF01 928E F95C 0314 006F 6DFA 5C04 3C00"            /* �.���\...om�\.<. */
	$"005A 6BFA 5C02 3F00 C8F8 FF01 8084 F95C"            /* .Zk�\.?.���.���\ */
	$"0109 48FE FF01 7586 F95C 025F 0054 F85C"            /* .�H��.u��\._.T�\ */
	$"020C 1A79 F95C 0316 002C 8AF9 5C04 0900"            /* ...y�\...,��\.�. */
	$"6D6D 5CFB 5C05 2C00 5FFF 5B7B F95C 0200"            /* mm\�\.,._�[{�\.. */
	$"0A86 F95C 042F 0058 347F FA5C 035F 001A"            /* �\./.X4.�\._.. */
	$"77F9 5C02 2000 8AF7 FF02 A382 86F9 5C03"            /* w�\. .���.����\. */
	$"2C00 3867 FA5C 043F 0000 7F6C FA5C 032C"            /* ,.8g�\.?...l�\., */
	$"002B 82FA 5C04 4D00 471A 92F9 5C01 3F00"            /* .+��\.M.G.��\.?. */
	$"0149 71FA 5C03 5300 1F72 FA5C 055F 0000"            /* .Iq�\.S..r�\._.. */
	$"7087 6FFA 5C02 2C00 AAF9 FF02 CA80 97F9"            /* p�o�\.,.���.ʀ�� */
	$"6103 4A00 1B78 FA61 0450 0097 1C87 F961"            /* a.J..x�a.P.�.��a */
	$"0324 003C 7BFA 6107 3F00 7CFF FFAC 8A6C"            /* .$.<{�a.?.|����l */
	$"FA61 0243 00C9 FEFF 0180 84F9 6103 0B00"            /* �a.C.���.���a... */
	$"5D70 FE61 FD61 0430 00C8 3A86 F961 0100"            /* ]p�a�a.0.�:��a.. */
	$"62FA FF01 8B7D FA61 0363 0010 8AF9 6102"            /* b��.�}�a.c..��a. */
	$"3200 62F6 FF01 9590 F961 0316 0072 70FA"            /* 2.b��.���a...rp� */
	$"6104 3F00 025C 6EFA 6102 4300 C9F8 FF01"            /* a.?..\n�a.C.���. */
	$"8286 F961 010B 4AFE FF01 788A FC61 FE61"            /* ���a..J��.x��a�a */
	$"0263 0057 F861 020F 1C7C F961 031A 002F"            /* .c.W�a...|�a.../ */
	$"8CF9 6103 0B00 6F70 FA61 0530 0062 FF5E"            /* ��a...op�a.0.b�^ */
	$"7DF9 6102 000C 88F9 6104 3200 5A38 81FA"            /* }�a...��a.2.Z8�� */
	$"6103 6300 1C7A F961 0224 008B F7FF 02A4"            /* a.c..z�a.$.���.� */
	$"858A F961 052F 003A 6C61 61FC 6104 4300"            /* ���a./.:laa�a.C. */
	$"0082 70FA 6103 3000 2E84 FA61 0450 0049"            /* .�p�a.0..��a.P.I */
	$"1C95 F961 0343 004C 75FA 6103 5700 2176"            /* .��a.C.Lu�a.W.!v */
	$"FA61 0563 0000 718A 72FA 6102 3000 AAF9"            /* �a.c..q�r�a.0.�� */
	$"FF02 CD8E A2F9 7203 5A07 2886 FA72 0462"            /* �.͎��r.Z.(��r.b */
	$"0799 2995 F972 0531 0749 8A72 72FC 7207"            /* .�)��r.1.I�rr�r. */
	$"4E07 83FF FFB4 977C FA72 0251 07CC FEFF"            /* N.�����|�r.Q.��� */
	$"018F 91F9 7203 1607 6980 FA72 043E 07CC"            /* .���r...i��r.>.� */
	$"4794 F972 0107 6CFA FF01 988D FA72 0375"            /* G��r..l��.���r.u */
	$"071C 96F9 7202 3F07 6CF6 FF01 A19E F972"            /* ..��r.?.l��.���r */
	$"0321 0783 80FA 7202 4E07 0C01 687F FA72"            /* .!.���r.N...h.�r */
	$"0251 07CC F8FF 0191 94F9 7201 1650 FEFF"            /* .Q.���.���r..P�� */
	$"0187 97F9 7202 7607 63F8 7202 1B29 8BF9"            /* .���r.v.c�r..)�� */
	$"7203 2507 3998 F972 0316 077C 81FA 7205"            /* r.%.9��r...|��r. */
	$"3E07 6CFF 6F8D F972 0207 1996 F972 043F"            /* >.l�o��r...��r.? */
	$"0762 448F FB72 0472 7507 2988 F972 0231"            /* .bD��r.ru.)��r.1 */
	$"078F F7FF 02AE 9296 F972 033C 0747 7CFA"            /* .���.����r.<.G|� */
	$"7204 5107 0790 80FA 7203 3E07 3891 FA72"            /* r.Q..���r.>.8��r */
	$"0462 0753 29A0 F972 0351 075A 84FA 7203"            /* .b.S)��r.Q.Z��r. */
	$"6807 2B85 FA72 0575 0707 7697 82FA 7202"            /* h.+��r.u..v���r. */
	$"3E07 ACFB FF00 FF03 1103 FFC9 7A94 F95A"            /* >.���.�...��z��Z */
	$"0347 0017 73FA 5A04 4A00 9629 84F9 5A03"            /* .G..s�Z.J.�)��Z. */
	$"2000 3A77 FA5A 073A 007A FFFF A987 66FA"            /*  .:w�Z.:.z����f� */
	$"5A02 3E00 C8FE FF01 7C81 F95A 0309 005B"            /* Z.>.���.|��Z.�.[ */
	$"6BFA 5A04 2B00 C836 83F9 5A01 005F FAFF"            /* k�Z.+.�6��Z.._�� */
	$"0187 7AFA 5A03 5D00 0A85 FD5A FD5A 022E"            /* .�z�Z.].�Z�Z.. */
	$"0073 F6FF 0191 8EF9 5A03 1300 666B FA5A"            /* .s��.���Z...fk�Z */
	$"043A 0012 5968 FA5A 023E 00C8 F8FF 017F"            /* .:..Yh�Z.>.���.. */
	$"83F9 5A06 0948 FFFF C872 86F9 5A02 5D00"            /* ��Z.�H���r��Z.]. */
	$"53F8 5A02 0C1A 67F9 5A03 1600 2B88 F95A"            /* S�Z...g�Z...+��Z */
	$"0409 006C 6B5A FB5A 052B 005F FF5B 7AF9"            /* .�.lkZ�Z.+._�[z� */
	$"5AFF 0000 84F9 5A04 2E00 5F34 7DFA 5A03"            /* Z�..��Z..._4}�Z. */
	$"5D00 1A73 F95A 0220 0096 F7FF 02A1 8185"            /* ]..s�Z. .���.��� */
	$"F95A 032E 0038 65FA 5A04 3E00 007F 6BFA"            /* �Z...8e�Z.>...k� */
	$"5A03 2B00 2B81 FA5A 044A 0052 1992 F95A"            /* Z.+.+��Z.J.R.��Z */
	$"013E 0001 486F FA5A 034A 001F 80FA 5A05"            /* .>..Ho�Z.J..��Z. */
	$"5D00 0070 876D FA5A 022B 00AA F9FF 02C9"            /* ]..p�m�Z.+.���.� */
	$"7D96 F95D 0349 001B 76FA 5D04 4E00 972C"            /* }��].I..v�].N.�, */
	$"86F9 5D03 2200 3C7A FA5D 073D 007C FFFF"            /* ��].".<z�].=.|�� */
	$"AB8A 69FA 5D02 4200 C9FE FF01 8083 F95D"            /* ��i�].B.���.���] */
	$"030B 005D 6EFE 5DFD 5D04 2F00 C83A 85F9"            /* ...]n�]�]./.�:�� */
	$"5D01 0062 FAFF 018B 7CFA 5D03 6100 0C88"            /* ]..b��.�|�].a..� */
	$"F95D 0231 0076 F6FF 0194 90F9 5D03 1500"            /* �].1.v��.���]... */
	$"696E FA5D 043D 0015 5B6C FA5D 0242 00C9"            /* in�].=..[l�].B.� */
	$"F8FF 0182 85F9 5D06 0B4A FFFF C876 88FC"            /* ��.���]..J���v�� */
	$"5DFE 5D02 6100 57F8 5D02 0F1C 6BF9 5D03"            /* ]�].a.W�]...k�]. */
	$"1A00 2E8B F95D 030B 006E 6EFA 5D05 2F00"            /* ...��]...nn�]./. */
	$"62FF 5E7C F95D 0200 0286 F95D 0431 0062"            /* b�^|�]...��].1.b */
	$"3680 FA5D 0361 001C 76F9 5D02 2200 97F7"            /* 6��].a..v�].".�� */
	$"FF02 A383 87F9 5D05 3000 3A68 5D5D FC5D"            /* �.����].0.:h]]�] */
	$"0442 0000 816D FA5D 032F 002E 83FA 5D04"            /* .B..�m�]./..��]. */
	$"4E00 541C 95F9 5D03 4200 4C72 FA5D 034E"            /* N.T.��].B.Lr�].N */
	$"0021 83FA 5D05 6100 0071 8A70 FA5D 022F"            /* .!��].a..q�p�]./ */
	$"00AA F9FF 02CD 8DA1 F96F 0359 0728 85FA"            /* .���.͍��o.Y.(�� */
	$"6F04 6107 993D 94F9 6F05 3007 4988 6F6F"            /* o.a.�=��o.0.I�oo */
	$"FC6F 074C 0783 FFFF B397 7AFA 6F02 5107"            /* �o.L.�����z�o.Q. */
	$"CCFE FF01 8E91 F96F 0316 0769 7DFA 6F04"            /* ���.���o...i}�o. */
	$"3D07 CC46 94F9 6F01 076C FAFF 0198 8CFA"            /* =.�F��o..l��.��� */
	$"6F03 7207 1996 F96F 023E 077D F6FF 01A0"            /* o.r..��o.>.}��.� */
	$"9CF9 6F03 2107 787D FA6F 024C 0722 0167"            /* ��o.!.x}�o.L.".g */
	$"7CFA 6F02 5107 CCF8 FF01 9094 F96F 0616"            /* |�o.Q.���.���o.. */
	$"50FF FFCC 8696 F96F 0273 0762 F86F 021B"            /* P��̆��o.s.b�o.. */
	$"297B F96F 0325 0738 97F9 6F03 1607 7C7F"            /* ){�o.%.8��o...|. */
	$"FA6F 053D 076C FF6E 8CF9 6F02 070C 94F9"            /* �o.=.l�n��o...�� */
	$"6F04 3E07 6C44 8EFB 6F04 6F72 0729 86F9"            /* o.>.lD��o.or.)�� */
	$"6F02 3007 99F7 FF02 AD91 95F9 6F03 3E07"            /* o.0.���.����o.>. */
	$"4779 FA6F 0451 0707 907D FA6F 033D 0738"            /* Gy�o.Q..�}�o.=.8 */
	$"91FA 6F04 6107 5C29 A0F9 6F03 5107 5A82"            /* ��o.a.\)��o.Q.Z� */
	$"FA6F 0361 072B 90FA 6F05 7207 0776 9780"            /* �o.a.+��o.r..v�� */
	$"FA6F 023D 07AC FBFF 00FF 0311 03FF C879"            /* �o.=.���.�...��y */
	$"92F9 5703 3F00 1771 FA57 0448 0096 2083"            /* ��W.?..q�W.H.� � */
	$"F957 031F 003A 76FA 5707 3800 83FF FFA9"            /* �W...:v�W.8.���� */
	$"8664 FA57 023D 00C8 FEFF 017C 80F9 5703"            /* �d�W.=.���.|��W. */
	$"0900 5B68 FA57 042A 00C8 3682 F957 0100"            /* �.[h�W.*.�6��W.. */
	$"5FFA FF01 8779 FA57 035B 000A 84FD 57FD"            /* _��.�y�W.[.�W� */
	$"5702 2E00 7AF6 FF01 918E F957 0313 0067"            /* W...z��.���W...g */
	$"67FA 5704 3800 1259 66FA 5702 3D00 C8F8"            /* g�W.8..Yf�W.=.�� */
	$"FF01 7F82 F957 0609 48FF FFC9 7285 F957"            /* �..��W.�H���r��W */
	$"025B 0053 F857 0219 1A65 F957 0316 002B"            /* .[.S�W...e�W...+ */
	$"87F9 5704 0900 6B68 57FB 5705 2A00 5FFF"            /* ��W.�.khW�W.*._� */
	$"5A79 F957 FF00 0083 F957 042E 0066 347C"            /* Zy�W�..��W...f4| */
	$"FA57 035B 0011 77F9 5702 1F00 96F7 FF02"            /* �W.[..w�W...���. */
	$"A180 84F9 5703 3600 3663 FA57 043D 0009"            /* ����W.6.6c�W.=.� */
	$"7F67 FA57 032A 002B 80FA 5704 4800 5B19"            /* .g�W.*.+��W.H.[. */
	$"91F9 5701 3D00 0148 6CFA 5703 4800 1F80"            /* ��W.=..Hl�W.H..� */
	$"FA57 055B 0010 7087 6BFA 5702 2A00 AAF9"            /* �W.[..p�k�W.*.�� */
	$"FF02 C97B 95F9 5B03 4400 1B75 FA5B 044D"            /* �.�{��[.D..u�[.M */
	$"0097 2485 F95B 0322 003C 79FA 5B07 3B00"            /* .�$��[.".<y�[.;. */
	$"85FF FFAB 8867 FA5B 0240 00C9 FEFF 017F"            /* �����g�[.@.���.. */
	$"82F9 5B03 0B00 5D6C FE5B FD5B 042E 00C8"            /* ��[...]l�[�[...� */
	$"3985 F95B 0100 62FA FF01 8A7C FA5B 035E"            /* 9��[..b��.�|�[.^ */
	$"000C 86F9 5B02 3100 7CF6 FF01 9490 F95B"            /* ..��[.1.|��.���[ */
	$"0315 0069 6BFA 5B04 3B00 155B 69FA 5B02"            /* ...ik�[.;..[i�[. */
	$"4000 C9F8 FF01 8185 F95B 060B 4AFF FFC9"            /* @.���.���[..J��� */
	$"7687 FC5B FE5B 025F 0057 F85B FF1C 0068"            /* v��[�[._.W�[�..h */
	$"F95B 031A 002E 8AF9 5B03 0B00 6E6D FA5B"            /* �[....��[...nm�[ */
	$"052E 0062 FF5D 7CF9 5BFF 0000 85F9 5B04"            /* ...b�]|�[�..��[. */
	$"3100 6836 80FA 5B03 5E00 1379 F95B 0222"            /* 1.h6��[.^..y�[." */
	$"0097 F7FF 02A2 8287 F95B 053A 003A 675B"            /* .���.����[.:.:g[ */
	$"5BFC 5B04 4000 0B81 6CFA 5B03 2E00 2E83"            /* [�[.@..�l�[....� */
	$"FA5B 044D 005D 1C94 F95B 0340 004C 70FA"            /* �[.M.].��[.@.Lp� */
	$"5B03 4D00 2182 FA5B 055E 0013 718A 6EFA"            /* [.M.!��[.^..q�n� */
	$"5B02 2E00 AAF9 FF02 CD8B A1F9 6D03 5307"            /* [...���.͋��m.S. */
	$"2884 FA6D 045E 0799 3394 F96D 0530 0749"            /* (��m.^.�3��m.0.I */
	$"876D 6DFC 6D07 4A07 8BFF FFB3 9679 FA6D"            /* �mm�m.J.�����y�m */
	$"0250 07CC FEFF 018E 90F9 6D03 1607 697C"            /* .P.���.���m...i| */
	$"FA6D 043D 07CC 4692 F96D 0107 6CFA FF01"            /* �m.=.�F��m..l��. */
	$"978B FA6D 0371 0719 94F9 6D02 3E07 83F6"            /* ���m.q..��m.>.�� */
	$"FF01 A09C F96D 0320 0778 7BFA 6D02 4A07"            /* �.���m. .x{�m.J. */
	$"2201 677A FA6D 0250 07CC F8FF 0190 92F9"            /* ".gz�m.P.���.��� */
	$"6D06 1650 FFFF CD86 96F9 6D02 7207 62F8"            /* m..P��͆��m.r.b� */
	$"6D02 2829 79F9 6D03 2507 3897 F96D 0316"            /* m.()y�m.%.8��m.. */
	$"077B 7CFA 6D05 3D07 6CFF 6E8B F96D FF07"            /* .{|�m.=.l�n��m�. */
	$"0094 F96D 043E 0771 448D FB6D 046D 7107"            /* .��m.>.qD��m.mq. */
	$"1F88 F96D 0230 0799 F7FF 02AC 9095 F96D"            /* .��m.0.���.����m */
	$"0349 0747 78FA 6D04 5007 1790 7BFA 6D03"            /* .I.Gx�m.P..�{�m. */
	$"3D07 3890 FA6D 045E 0764 28A0 F96D 0350"            /* =.8��m.^.d(��m.P */
	$"075A 80FA 6D03 5E07 2B90 FA6D 0571 0720"            /* .Z��m.^.+��m.q.  */
	$"7697 7FFA 6D02 3D07 ACFB FF00 FF03 1103"            /* v�.�m.=.���.�... */
	$"FFC7 7691 F953 0348 0012 6FFA 5304 4600"            /* ��v��S.H..o�S.F. */
	$"9620 81F9 5303 1E00 3A73 FA53 0735 0096"            /* � ��S...:s�S.5.� */
	$"FFFF A884 62FA 5302 3C00 C8FE FF01 7A7F"            /* ����b�S.<.���.z. */
	$"F953 0309 005B 66FA 5304 2900 C836 81F9"            /* �S.�.[f�S.).�6�� */
	$"5301 005F FAFF 0185 77FA 5303 5800 0182"            /* S.._��.�w�S.X..� */
	$"FD53 FD53 022C 008A F6FF 0190 8DF9 5303"            /* �S�S.,.���.���S. */
	$"1200 6364 FA53 0435 0012 5964 FA53 023C"            /* ..cd�S.5..Yd�S.< */
	$"00C8 F8FF 017C 81F9 5306 0948 FFFF D570"            /* .���.|��S.�H���p */
	$"84F9 5302 5900 4DF8 5302 1F1A 62F9 5303"            /* ��S.Y.M�S...b�S. */
	$"1600 2A85 F953 0409 0069 6653 FB53 0529"            /* ..*��S.�.ifS�S.) */
	$"005F FF5A 77F9 53FF 0000 80F9 5304 2C00"            /* ._�Zw�S�..��S.,. */
	$"7A33 7BFA 5303 5800 0A82 F953 021E 00A8"            /* z3{�S.X.�S...� */
	$"F7FF 029F 7C82 F953 0338 0036 61FA 5304"            /* ��.�|��S.8.6a�S. */
	$"3C00 127D 65FA 5303 2900 2B7F FA53 0446"            /* <..}e�S.).+.�S.F */
	$"005B 1B90 F953 012E 0001 4868 FA53 0346"            /* .[.��S....Hh�S.F */
	$"001E 7DFA 5305 5800 1270 8668 FA53 0229"            /* ..}�S.X..p�h�S.) */
	$"00AA F9FF 02C8 7994 F957 034C 0015 72FA"            /* .���.�y��W.L..r� */
	$"5704 4900 9724 83F9 5703 2100 3C77 FA57"            /* W.I.�$��W.!.<w�W */
	$"0739 0097 FFFF AA87 64FA 5702 3F00 C9FE"            /* .9.�����d�W.?.�� */
	$"FF01 7D81 F957 030B 005D 68FE 57FD 5704"            /* �.}��W...]h�W�W. */
	$"2C00 C839 83F9 5701 0062 FAFF 0188 7AFA"            /* ,.�9��W..b��.�z� */
	$"5703 5B00 0384 F957 022F 008B F6FF 0192"            /* W.[..��W./.���.� */
	$"8FF9 5703 1400 6567 FA57 0439 0015 5B66"            /* ��W...eg�W.9..[f */
	$"FA57 023F 00C9 F8FF 0180 83F9 5706 0B4A"            /* �W.?.���.���W..J */
	$"FFFF D673 86FC 57FE 5702 5C00 50F8 5702"            /* ���s��W�W.\.P�W. */
	$"211C 65F9 5703 1A00 2C87 F957 030B 006C"            /* !.e�W...,��W...l */
	$"69FA 5705 2C00 62FF 5D79 F957 FF00 0082"            /* i�W.,.b�]y�W�..� */
	$"F957 042F 007C 367D FA57 035B 000C 85F9"            /* �W./.|6}�W.[..�� */
	$"5702 2100 A9F7 FF02 A080 85F9 5705 3A00"            /* W.!.���.����W.:. */
	$"3A63 5757 FC57 043F 0015 8168 FA57 032C"            /* :cWW�W.?..�h�W., */
	$"002E 81FA 5704 4900 5D1D 92F9 5703 3100"            /* ..��W.I.].��W.1. */
	$"4A6B FA57 0349 0020 80FA 5705 5B00 1571"            /* Jk�W.I. ��W.[..q */
	$"886C FA57 022C 00AA F9FF 02CC 88A0 F969"            /* �l�W.,.���.̈��i */
	$"035E 0722 83FA 6904 5C07 9933 91F9 6905"            /* .^."��i.\.�3��i. */
	$"2F07 4986 6969 FC69 0748 0799 FFFF B395"            /* /.I�ii�i.H.����� */
	$"76FA 6902 4F07 CCFE FF01 8D8F F969 0316"            /* v�i.O.���.���i.. */
	$"0769 7AFA 6904 3C07 CC46 91F9 6901 076C"            /* .iz�i.<.�F��i..l */
	$"FAFF 0196 8AFA 6903 6F07 0F92 F969 023D"            /* ��.���i.o..��i.= */
	$"078F F6FF 019F 9CF9 6903 1F07 7278 FA69"            /* .���.���i...rx�i */
	$"0248 0722 0167 78FA 6902 4F07 CCF8 FF01"            /* .H.".gx�i.O.���. */
	$"8E91 F969 0616 50FF FFD7 8495 F969 0270"            /* ���i..P��ׄ��i.p */
	$"075C F869 022E 2977 F969 0325 0736 95F9"            /* .\�i..)w�i.%.6�� */
	$"6903 1607 7A7A FA69 053C 076C FF6D 88F9"            /* i...zz�i.<.l�m�� */
	$"69FF 0700 90F9 6904 3D07 8344 8CFB 6904"            /* i�..��i.=.�D��i. */
	$"696F 0717 92F9 6902 2F07 AEF7 FF02 AA8E"            /* io..��i./.���.�� */
	$"92F9 6903 4A07 4775 FA69 044F 0722 8F79"            /* ��i.J.Gu�i.O."�y */
	$"FA69 033C 0738 8FFA 6904 5C07 642A 9FF9"            /* �i.<.8��i.\.d*�� */
	$"6903 4007 597B FA69 035C 072B 8EFA 6905"            /* i.@.Y{�i.\.+��i. */
	$"6F07 2276 967C FA69 023C 07AC FBFF 00FF"            /* o."v�|�i.<.���.� */
	$"0311 03FF C773 90F9 5003 4700 096D FA50"            /* ...��s��P.G.�m�P */
	$"0444 0096 2080 F950 031D 003A 72FA 5007"            /* .D.� ��P...:r�P. */
	$"3300 96FF FFA8 835E FA50 023B 00C8 FEFF"            /* 3.�����^�P.;.��� */
	$"0179 7CF9 5003 0900 5B63 FA50 0428 00C8"            /* .y|�P.�.[c�P.(.� */
	$"3680 F950 0100 5FFA FF01 8576 FA50 0355"            /* 6��P.._��.�v�P.U */
	$"0000 80FD 50FD 5002 2B00 96F6 FF01 8F8D"            /* ..��P�P.+.���.�� */
	$"F950 0311 0059 62FA 5004 3300 1258 61FA"            /* �P...Yb�P.3..Xa� */
	$"5002 3B00 C8F8 FF01 7C80 F950 0609 48FF"            /* P.;.���.|��P.�H� */
	$"FFD5 6E82 F950 0252 003F F850 021F 1A5F"            /* ��n��P.R.?�P..._ */
	$"F950 0316 0034 84F9 5004 0900 6864 50FB"            /* �P...4��P.�.hdP� */
	$"5005 2800 5FFF 5976 F950 FF00 0078 F950"            /* P.(._�Yv�P�..x�P */
	$"042B 007A 3379 FA50 0355 000A 81F9 5002"            /* .+.z3y�P.U.�P. */
	$"1D00 ADF7 FF02 9E7A 81F9 5003 4000 2E5D"            /* ..���.�z��P.@..] */
	$"FA50 043B 0012 7C63 FA50 0328 002B 7DFA"            /* �P.;..|c�P.(.+}� */
	$"5004 4400 5B2F 8FF9 5001 2800 0147 66FA"            /* P.D.[/��P.(..Gf� */
	$"5003 4400 1E7C FA50 0555 0012 7085 66FA"            /* P.D..|�P.U..p�f� */
	$"5002 2800 AAF9 FF02 C877 92F9 5403 4C00"            /* P.(.���.�w��T.L. */
	$"0B70 FA54 0448 0097 2482 F954 0320 003C"            /* .p�T.H.�$��T. .< */
	$"76FA 5407 3600 97FF FFA9 8663 FA54 023E"            /* v�T.6.�����c�T.> */
	$"00C9 FEFF 017C 80F9 5403 0B00 5D67 FE54"            /* .���.|��T...]g�T */
	$"FD54 042B 00C8 3983 F954 0100 62FA FF01"            /* �T.+.�9��T..b��. */
	$"8879 FA54 035A 0000 82F9 5402 2F00 97F6"            /* �y�T.Z..��T./.�� */
	$"FF01 928F F954 0313 005B 65FA 5404 3600"            /* �.���T...[e�T.6. */
	$"155A 65FA 5402 3E00 C9F8 FF01 7F82 F954"            /* .Ze�T.>.���..��T */
	$"060B 4AFF FFD5 7185 FC54 FE54 0257 0043"            /* ..J���q��T�T.W.C */
	$"F854 0221 1C63 F954 031A 0036 86F9 5403"            /* �T.!.c�T...6��T. */
	$"0B00 6C67 FA54 052B 0062 FF5C 79F9 54FF"            /* ..lg�T.+.b�\y�T� */
	$"0000 7BF9 5404 2F00 7C35 7CFA 5403 5A00"            /* ..{�T./.|5|�T.Z. */
	$"0C83 F954 0220 00AE F7FF 029F 7C83 F954"            /* .��T. .���.�|��T */
	$"0544 0030 6254 54FC 5404 3E00 1580 66FA"            /* .D.0bTT�T.>..�f� */
	$"5403 2B00 2E80 FA54 0448 005D 3291 F954"            /* T.+..��T.H.]2��T */
	$"032B 004A 69FA 5403 4800 207F FA54 055A"            /* .+.Ji�T.H. .�T.Z */
	$"0015 7187 69FA 5402 2B00 AAF9 FF02 CB87"            /* ..q�i�T.+.���.ˇ */
	$"9FF9 6703 5E07 1681 FA67 045B 0799 3390"            /* ��g.^..��g.[.�3� */
	$"F967 052E 0749 8467 67FC 6707 4607 99FF"            /* �g...I�gg�g.F.�� */
	$"FFB2 9475 FA67 024E 07CC FEFF 018C 8EF9"            /* ���u�g.N.���.��� */
	$"6703 1607 6878 FA67 043B 07CC 4690 F967"            /* g...hx�g.;.�F��g */
	$"0107 6CFA FF01 9688 FA67 036D 0707 90F9"            /* ..l��.���g.m..�� */
	$"6702 3C07 99F6 FF01 9E9B F967 031F 0767"            /* g.<.���.���g...g */
	$"76FA 6702 4607 2201 6676 FA67 024E 07CC"            /* v�g.F.".fv�g.N.� */
	$"F8FF 018E 90F9 6706 1650 FFFF D783 94F9"            /* ��.���g..P��׃�� */
	$"6702 6907 51F8 6702 2E29 75F9 6703 2507"            /* g.i.Q�g..)u�g.%. */
	$"4394 F967 0316 0779 78FA 6705 3B07 6CFF"            /* C��g...yx�g.;.l� */
	$"6D87 F967 FF07 008B F967 043C 0783 438B"            /* m��g�..��g.<.�C� */
	$"FB67 0467 6D07 1791 F967 022E 07B5 F7FF"            /* �g.gm..��g...��� */
	$"02AA 8C91 F967 0354 073B 73FA 6704 4E07"            /* .����g.T.;s�g.N. */
	$"228E 77FA 6703 3B07 388E FA67 045B 0764"            /* "�w�g.;.8��g.[.d */
	$"449E F967 033B 0759 7AFA 6703 5B07 2A8D"            /* D��g.;.Yz�g.[.*� */
	$"FA67 056D 0722 7696 7AFA 6702 3B07 ACFB"            /* �g.m."v�z�g.;.�� */
	$"FF00 FF03 3903 FFC5 718F F94D 034F 0003"            /* �.�.9.��q��M.O.. */
	$"6CFA 4D04 4300 9620 88F9 4D03 1D00 3A71"            /* l�M.C.� ��M...:q */
	$"FA4D 0731 0096 FFFF A683 5CFA 4D02 3A00"            /* �M.1.�����\�M.:. */
	$"C8FE FF01 797C F94D 0309 005B 61FA 4D04"            /* ���.y|�M.�.[a�M. */
	$"2700 C835 7FF9 4D04 0057 CECE D3FE D902"            /* '.�5.�M..W�����. */
	$"D884 75FA 4D03 5300 007B FD4D FD4D 022B"            /* ؄u�M.S..{�M�M.+ */
	$"009B F6FF 018F 8CF9 4D03 1000 5A5F FA4D"            /* .���.���M...Z_�M */
	$"0431 0017 585E FA4D 053A 00B5 CECE D7FE"            /* .1..X^�M.:.����� */
	$"D904 DFFF FF7B 7FF9 4D06 0948 FFFF CC6D"            /* �.���{.�M.�H���m */
	$"81F8 4D01 0046 F84D 021F 1A5E F94D 0316"            /* ��M..F�M...^�M.. */
	$"0038 83F9 4D04 0900 6162 4DFB 4D05 2700"            /* .8��M.�.abM�M.'. */
	$"5FFF 5975 F94D FF00 0081 F94D 042B 0091"            /* _�Yu�M�..��M.+.� */
	$"3379 FA4D 0353 0000 7FF9 4D02 1D00 ADF7"            /* 3y�M.S...�M...�� */
	$"FF02 9C79 7FF9 4D03 4200 285B FA4D 043A"            /* �.�y.�M.B.([�M.: */
	$"0012 7C61 FA4D 0327 002B 7CFA 4D04 4300"            /* ..|a�M.'.+|�M.C. */
	$"5B29 8FF9 4D01 2700 0147 64FA 4D03 3500"            /* [)��M.'..Gd�M.5. */
	$"127A FA4D 0553 0012 7084 64FA 4D05 2700"            /* .z�M.S..p�d�M.'. */
	$"9ACE CED6 FED9 04DE FFC7 7591 F951 0352"            /* ������.���u��Q.R */
	$"0006 6FFA 5104 4600 9724 8BF9 5103 2000"            /* ..o�Q.F.�$��Q. . */
	$"3C75 FA51 0734 0097 FFFF A986 61FA 5102"            /* <u�Q.4.�����a�Q. */
	$"3D00 C9FE FF01 7C7F F951 030B 005D 65FE"            /* =.���.|.�Q...]e� */
	$"51FD 5104 2A00 C839 82F9 5104 0059 CFCF"            /* Q�Q.*.�9��Q..Y�� */
	$"D4FE D902 D887 78FA 5103 5800 007D F951"            /* ���.؇x�Q.X..}�Q */
	$"022E 009C F6FF 0191 8EF9 5103 1300 5C63"            /* ...���.���Q...\c */
	$"FA51 0434 001B 5A63 FA51 053D 00B7 CFCF"            /* �Q.4..Zc�Q.=.��� */
	$"D8FE D904 DFFF FF7F 82F9 5106 0B4A FFFF"            /* ���.���.��Q..J�� */
	$"CC70 84FC 51FD 5101 0049 F851 0221 1C62"            /* �p��Q�Q..I�Q.!.b */
	$"F951 031A 003A 85F9 5103 0B00 6365 FA51"            /* �Q...:��Q...ce�Q */
	$"052A 0062 FF5C 78F9 51FF 0000 83F9 5104"            /* .*.b�\x�Q�..��Q. */
	$"2E00 9235 7BFA 5103 5800 0081 F951 0220"            /* ..�5{�Q.X..��Q.  */
	$"00AE F7FF 029E 7B82 F951 0545 002A 5F51"            /* .���.�{��Q.E.*_Q */
	$"51FC 5104 3D00 157F 64FA 5103 2A00 2E80"            /* Q�Q.=...d�Q.*..� */
	$"FA51 0446 005D 2C91 F951 032A 0049 67FA"            /* �Q.F.],��Q.*.Ig� */
	$"5103 3900 147C FA51 0558 0015 7186 67FA"            /* Q.9..|�Q.X..q�g� */
	$"5105 2A00 9BCF CFD7 FED9 04DE FFCB 859E"            /* Q.*.������.��˅� */
	$"F964 0366 0710 80FA 6404 5907 9933 98F9"            /* �d.f..��d.Y.�3�� */
	$"6405 2E07 4984 6464 FC64 0745 0799 FFFF"            /* d...I�dd�d.E.��� */
	$"B294 72FA 6402 4E07 CCFE FF01 8C8E F964"            /* ��r�d.N.���.���d */
	$"0316 0768 76FA 6404 3A07 CC45 90F9 6404"            /* ...hv�d.:.�E��d. */
	$"0764 D3D3 D6FD DB01 9587 FA64 036B 0707"            /* .d�����.���d.k.. */
	$"8DF9 6402 3C07 A0F6 FF01 9E9B F964 031E"            /* ��d.<.���.���d.. */
	$"0768 75FA 6402 4507 2901 6673 FA64 054E"            /* .hu�d.E.).fs�d.N */
	$"07BD D3D3 D9FE DB04 E0FF FF8D 90F9 6406"            /* .������.������d. */
	$"1650 FFFF CF82 92F8 6401 0759 F864 022E"            /* .P��ς��d..Y�d.. */
	$"2973 F964 0325 0747 92F9 6403 1607 6F76"            /* )s�d.%.G��d...ov */
	$"FA64 053A 076C FF6D 87F9 64FF 0700 91F9"            /* �d.:.l�m��d�..�� */
	$"6404 3C07 9643 8BFB 6404 646B 0708 8FF9"            /* d.<.�C��d.dk..�� */
	$"6402 2E07 B5F7 FF02 A98B 8FF9 6403 5507"            /* d...���.����d.U. */
	$"3571 FA64 044E 0722 8E76 FA64 033A 0738"            /* 5q�d.N."�v�d.:.8 */
	$"8EFA 6404 5907 643D 9EF9 6403 3A07 5878"            /* ��d.Y.d=��d.:.Xx */
	$"FA64 034A 0720 8BFA 6405 6B07 2276 9579"            /* �d.J. ��d.k."v�y */
	$"FA64 083A 07A0 D3D3 D8DB DBDC 00DF 033A"            /* �d.:.�������.�.: */
	$"03FF C56E 8DF9 4903 4D3D 3464 FA49 043F"            /* .��n��I.M=4d�I.? */
	$"0096 3291 F949 031C 0039 6FFA 4907 2F00"            /* .�2��I...9o�I./. */
	$"96FF FFA6 825A FA49 0239 00C8 FEFF 0178"            /* �����Z�I.9.���.x */
	$"7AF9 4903 0900 5A5E FA49 0426 00C8 357D"            /* z�I.�.Z^�I.&.�5} */
	$"F949 0A0D 273E 546B 6C6C 431D 7F73 FA49"            /* �I�.'>TkllC..s�I */
	$"0351 0000 77FD 49FD 4902 2A00 ADF6 FF01"            /* .Q..w�I�I.*.���. */
	$"8E8C F949 030F 0053 5CFA 4904 2F00 2957"            /* ���I...S\�I./.)W */
	$"5CFA 490D 3D17 3248 5F6B 6C63 2597 FFFF"            /* \�I.=.2H_klc%��� */
	$"797D F949 0609 48FF FFB9 6B80 F849 011C"            /* y}�I.�H���k��I.. */
	$"50F8 4902 3138 55F9 4903 1600 3681 F949"            /* P�I.18U�I...6��I */
	$"0427 385F 5749 FB49 0526 005F FF58 72F9"            /* .'8_WI�I.&._�Xr� */
	$"49FF 0000 79F9 4904 2A00 9632 77FA 4903"            /* I�..y�I.*.�2w�I. */
	$"5100 0078 F949 021C 00C8 F7FF 029A 757C"            /* Q..x�I...���.�u| */
	$"F949 0347 3D46 59FA 4904 3900 127A 5DFA"            /* �I.G=FY�I.9..z]� */
	$"4903 2600 2A7B FA49 043F 0066 208E F949"            /* I.&.*{�I.?.f ��I */
	$"0126 0001 4562 FA49 032F 0011 76FA 4905"            /* .&..Eb�I./..v�I. */
	$"5100 1270 8362 FA49 0D2B 1630 4A5D 6B6C"            /* Q..p�b�I.+.0J]kl */
	$"682A 96FF C771 8FF9 4E03 5140 3868 FA4E"            /* h*���q��N.Q@8h�N */
	$"0444 0097 3494 F94E 031F 003B 72FA 4E07"            /* .D.�4��N...;r�N. */
	$"3200 97FF FFA8 845D FA4E 023C 00C9 FEFF"            /* 2.�����]�N.<.��� */
	$"017B 7DF9 4E03 0B00 5C62 FE4E FD4E 0429"            /* .{}�N...\b�N�N.) */
	$"00C8 3881 F94E 0A10 2A42 586E 6F6F 4620"            /* .�8��N�.*BXnooF  */
	$"8177 FA4E 0354 0000 7AF9 4E02 2C00 AEF6"            /* �w�N.T..z�N.,.�� */
	$"FF01 918E F94E 0312 0055 61FA 4E04 3200"            /* �.���N...Ua�N.2. */
	$"2C59 5FFA 4E0D 401A 344C 636E 6F66 2898"            /* ,Y_�N.@.4Lcnof(� */
	$"FFFF 7C80 F94E 060B 4AFF FFBA 6E83 FC4E"            /* ��|��N..J���n��N */
	$"FD4E 011E 53F8 4E02 333C 5AF9 4E03 1A00"            /* �N..S�N.3<Z�N... */
	$"3983 F94E 032A 3B63 5BFA 4E05 2900 62FF"            /* 9��N.*;c[�N.).b� */
	$"5B76 F94E FF00 007C F94E 042C 0097 347A"            /* [v�N�..|�N.,.�4z */
	$"FA4E 0354 0000 7BF9 4E02 1F00 C9F7 FF02"            /* �N.T..{�N...���. */
	$"9B78 80F9 4E05 4C40 495C 4E4E FC4E 043C"            /* �x��N.L@I\NN�N.< */
	$"0015 7D62 FA4E 0329 002C 7DFA 4E04 4400"            /* ..}b�N.).,}�N.D. */
	$"6824 90F9 4E03 2900 4865 FA4E 0332 0014"            /* h$��N.).He�N.2.. */
	$"79FA 4E05 5400 1571 8565 FA4E 0D2F 1933"            /* y�N.T..q�e�N./.3 */
	$"4D61 6E6F 6C2E 97FF CB83 9BF9 6203 6552"            /* Manol.��˃��b.eR */
	$"4679 FA62 0457 0799 42A0 F962 052C 0748"            /* Fy�b.W.�B��b.,.H */
	$"8262 62FC 6207 4307 99FF FFB0 9270 FA62"            /* �bb�b.C.�����p�b */
	$"024C 07CC FEFF 018B 8CF9 6203 1607 6873"            /* .L.���.���b...hs */
	$"FA62 0439 07CC 458F F962 0A1C 3651 6980"            /* �b.9.�E��b�.6Qi� */
	$"8181 5530 9086 FA62 0368 0707 8AF9 6202"            /* ��U0���b.h..��b. */
	$"3B07 B5F6 FF01 9E9B F962 031D 0763 72FA"            /* ;.���.���b...cr� */
	$"6202 4307 3E01 6571 FA62 0D51 2644 5B76"            /* b.C.>.eq�b.Q&D[v */
	$"8081 7835 9AFF FF8C 8EF9 6206 1650 FFFF"            /* ��x5������b..P�� */
	$"C080 91F8 6201 2C66 F862 0243 4E6C F962"            /* ����b.,f�b.CNl�b */
	$"0325 0746 91F9 6203 3B4C 756E FA62 0539"            /* .%.F��b.;Lun�b.9 */
	$"076C FF6C 85F9 62FF 0700 8AF9 6204 3B07"            /* .l�l��b�..��b.;. */
	$"9943 88FB 6204 6268 0707 8AF9 6202 2C07"            /* �C��b.bh..��b.,. */
	$"CCF7 FF02 A688 8DF9 6203 5E50 596F FA62"            /* ���.����b.^PYo�b */
	$"044C 0722 8D73 FA62 0339 0736 8CFA 6204"            /* .L."�s�b.9.6��b. */
	$"5707 6D33 9CF9 6203 3907 5876 FA62 0343"            /* W.m3��b.9.Xv�b.C */
	$"0720 87FA 6205 6807 2276 9477 FA62 083F"            /* . ��b.h."v�w�b.? */
	$"2642 5C73 8181 7D3B 0099 02AB 04FF D24E"            /* &B\s��};.�.�.��N */
	$"2A3F EF46 043D 0096 3B90 F946 031B 0038"            /* *?�F.=.�;��F...8 */
	$"6DFA 4607 2C00 98FF FFA5 8158 FA46 0238"            /* m�F.,.�����X�F.8 */
	$"00C8 FEFF 0177 79F9 4603 0900 595C FA46"            /* .���.wy�F.�.Y\�F */
	$"0425 00C8 347C F246 0300 1263 72FA 4603"            /* .%.�4|�F...cr�F. */
	$"4E00 007A FD46 FD46 0229 00AD F6FF 018E"            /* N..z�F�F.).���.� */
	$"8BF9 4603 0F00 4859 FA46 042C 0029 575A"            /* ��F...HY�F.,.)WZ */
	$"F346 063B 0096 FFFF 797C F946 0709 48FF"            /* �F.;.���y|�F.�H� */
	$"FFBA 6678 55E4 4604 450B 0026 5AF4 46FC"            /* ��fxU�F.E..&Z�F� */
	$"4606 4E1E 005F FF58 71F9 46FF 0000 72F9"            /* F.N.._�Xq�F�..r� */
	$"4604 2900 A232 76FA 4603 4E00 006C F946"            /* F.).�2v�F.N..l�F */
	$"021B 00C8 F7FF 03AC 3C2B 43EF 4604 3800"            /* ...���.�<+C�F.8. */
	$"146C 5BFA 4603 2500 2979 FA46 043D 0070"            /* .l[�F.%.)y�F.=.p */
	$"208D F946 0125 0001 455D FA46 032C 0011"            /*  ��F.%..E]�F.,.. */
	$"75FA 4605 4E00 2A70 835F F346 073D 0096"            /* u�F.N.*p�_�F.=.� */
	$"FFD3 512E 44EF 4A04 4200 973D 92F9 4A03"            /* ��Q.D�J.B.�=��J. */
	$"1E00 3B70 FA4A 0730 0099 FFFF A884 5BFA"            /* ..;p�J.0.�����[� */
	$"4A02 3B00 C9FE FF01 7A7C F94A 030B 005B"            /* J.;.���.z|�J...[ */
	$"5FFE 4AFD 4A04 2800 C838 80F2 4A03 0015"            /* _�J�J.(.�8��J... */
	$"6775 FA4A 0352 0000 7DF9 4A02 2C00 AEF6"            /* gu�J.R..}�J.,.�� */
	$"FF01 908D F94A 0311 004A 5CFA 4A04 3000"            /* �.���J...J\�J.0. */
	$"2C59 5DF3 4A06 3F00 97FF FF7C 7FF9 4A07"            /* ,Y]�J.?.���|.�J. */
	$"0B4A FFFF BB69 7B5A FD4A E84A 0449 0F00"            /* .J���i{Z�J�J.I.. */
	$"285D EF4A 0652 2000 62FF 5B75 F94A FF00"            /* (]�J.R .b�[u�J�. */
	$"0075 F94A 042C 00A3 3478 FA4A 0352 0000"            /* .u�J.,.�4x�J.R.. */
	$"6FF9 4A02 1E00 C9F7 FF03 AC40 2F46 F44A"            /* o�J...���.�@/F�J */
	$"FC4A 043B 0017 6E5F FA4A 0328 002B 7CFA"            /* �J.;..n_�J.(.+|� */
	$"4A04 4200 7124 8FF9 4A03 2800 4861 FA4A"            /* J.B.q$��J.(.Ha�J */
	$"0330 0013 78FA 4A05 5200 2C71 8563 F34A"            /* .0..x�J.R.,q�c�J */
	$"0742 0097 FFD5 643F 57EF 5E04 5507 9949"            /* .B.���d?W�^.U.�I */
	$"9FF9 5E05 2C07 4781 5E5E FC5E 0740 079C"            /* ��^.,.G�^^�^.@.� */
	$"FFFF B092 6EFA 5E02 4C07 CCFE FF01 8A8B"            /* ����n�^.L.���.�� */
	$"F95E 0316 0767 71FA 5E04 3807 CC45 8EF2"            /* �^...gq�^.8.�E�� */
	$"5E03 0722 7885 FA5E 0366 0707 8BF9 5E02"            /* ^.."x��^.f..��^. */
	$"3B07 B5F6 FF01 9C9A F95E 031D 0759 6FFA"            /* ;.���.���^...Yo� */
	$"5E02 4007 3E01 656F F35E 0650 0799 FFFF"            /* ^.@.>.eo�^.P.��� */
	$"8C8D F95E 0716 50FF FFC1 7C8B 6CE4 5E04"            /* ���^..P���|�l�^. */
	$"5D19 0734 6EEF 5E06 652C 076C FF6C 84F9"            /* ]..4n�^.e,.l�l�� */
	$"5EFF 0700 82F9 5E04 3B07 A943 87FB 5E04"            /* ^�..��^.;.�C��^. */
	$"5E66 0707 80F9 5E02 2C07 CCF7 FF03 B453"            /* ^f..��^.,.���.�S */
	$"405B EF5E 044C 0725 7D71 FA5E 0338 0736"            /* @[�^.L.%}q�^.8.6 */
	$"8BFA 5E04 5507 7632 9BF9 5E03 3807 5772"            /* ��^.U.v2��^.8.Wr */
	$"FA5E 0340 071F 87FA 5E05 6607 3676 9475"            /* �^.@..��^.f.6v�u */
	$"F35E 0155 0700 9902 CBFF FF05 CA3B 1320"            /* �^.U..�.���.�;.  */
	$"3848 F244 043C 0096 3990 F944 031B 0038"            /* 8H�D.<.�9��D...8 */
	$"6CFA 4407 2B00 ADFF FFA5 8155 FA44 0238"            /* l�D.+.�����U�D.8 */
	$"00C8 FEFF 0177 79F9 4403 0900 595A FA44"            /* .���.wy�D.�.YZ�D */
	$"0425 00C8 347C F244 0300 1247 71FA 4403"            /* .%.�4|�D...Gq�D. */
	$"4D00 0072 FD44 FD44 0229 00C1 F6FF 018D"            /* M..r�D�D.).���.� */
	$"8BF9 4403 0D00 4857 FA44 042B 0029 5758"            /* ��D...HW�D.+.)WX */
	$"F344 063B 0096 FFFF 787B F944 0109 48FE"            /* �D.;.���x{�D.�H� */
	$"FF04 843B 2E2F 47E8 4408 4839 0A00 5728"            /* �.�;./G�D.H9�.W( */
	$"1C30 45F6 44FD 4407 461F 0028 CDFF 5870"            /* .0E�D�D.F..(��Xp */
	$"F944 FF00 0069 F944 0429 00AD 3275 FA44"            /* �D�..i�D.).�2u�D */
	$"034D 0000 71F9 4402 1B00 CEF6 FF04 AC29"            /* .M..q�D...���.�) */
	$"1228 3FF1 4404 3800 2E69 5AFA 4403 2500"            /* .(?�D.8..iZ�D.%. */
	$"2979 FA44 043C 0070 208C F944 0116 0001"            /* )y�D.<.p ��D.... */
	$"3F5A FA44 032B 0011 73FA 4405 4D00 2E70"            /* ?Z�D.+..s�D.M..p */
	$"825E F344 0A3C 0096 FFFF CB3E 1622 3B4D"            /* �^�D�<.����>.";M */
	$"F247 0440 0097 3B92 F947 031E 003A 6FFA"            /* �G.@.�;��G...:o� */
	$"4707 2F00 AEFF FFA8 8359 FA47 023B 00C9"            /* G./.�����Y�G.;.� */
	$"FEFF 017A 7BF9 4703 0B00 5B5D FE47 FD47"            /* ��.z{�G...[]�G�G */
	$"0428 00C8 387F F247 0300 154A 75FA 4703"            /* .(.�8.�G...Ju�G. */
	$"5000 0075 F947 022B 00C2 F6FF 018F 8DF9"            /* P..u�G.+.���.��� */
	$"4703 1100 4A5B FA47 042F 002C 595B F347"            /* G...J[�G./.,Y[�G */
	$"063E 0097 FFFF 7B7F F947 010B 4AFE FF06"            /* .>.���{.�G..J��. */
	$"863E 3132 4C47 47EA 4708 4D3C 0C00 582A"            /* �>12LGG�G.M<..X* */
	$"1F33 49F2 4707 4A21 002A CEFF 5B73 F947"            /* .3I�G.J!.*��[s�G */
	$"FF00 006C F947 042B 00AE 3478 FA47 0350"            /* �..l�G.+.�4x�G.P */
	$"0000 75F9 4702 1E00 CFF6 FF04 AD2C 152A"            /* ..u�G...���.�,.* */
	$"43F6 47FC 4704 3B00 306C 5DFA 4703 2800"            /* C�G�G.;.0l]�G.(. */
	$"2B7B FA47 0440 0071 248E F947 0319 0043"            /* +{�G.@.q$��G...C */
	$"5DFA 4703 2F00 1377 FA47 0550 0030 7184"            /* ]�G./..w�G.P.0q� */
	$"62F3 470A 4000 97FF FFCE 4C22 314D 61F2"            /* b�G�@.����L"1Ma� */
	$"5C04 5307 9947 9FF9 5C05 2B07 4780 5C5C"            /* \.S.�G��\.+.G�\\ */
	$"FC5C 073F 07B5 FFFF B091 6CFA 5C02 4A07"            /* �\.?.�����l�\.J. */
	$"CCFE FF01 8A8B F95C 0316 0767 70FA 5C04"            /* ���.���\...gp�\. */
	$"3807 CC45 8DF2 5C03 0722 5A84 FA5C 0365"            /* 8.�E��\.."Z��\.e */
	$"0707 81F9 5C02 3A07 C7F6 FF01 9C9A F95C"            /* ..��\.:.���.���\ */
	$"031C 0759 6DFA 5C02 3F07 3E01 656E F35C"            /* ...Ym�\.?.>.en�\ */
	$"064F 0799 FFFF 8B8D F95C 0116 50FE FF04"            /* .O.������\..P��. */
	$"9451 3F43 5FE8 5C07 614F 1907 6133 2E45"            /* �Q?C_�\.aO..a3.E */
	$"F15C 075D 2C07 33CF FF6C 83F9 5CFF 0700"            /* �\.],.3��l��\�.. */
	$"78F9 5C04 3A07 B542 86FB 5C04 5C65 0707"            /* x�\.:.�B��\.\e.. */
	$"83F9 5C02 2B07 D2F6 FF04 B43B 2138 55F1"            /* ��\.+.���.�;!8U� */
	$"5C04 4A07 3A7A 6FFA 5C03 3807 368A FA5C"            /* \.J.:zo�\.8.6��\ */
	$"0453 0776 329B F95C 0326 0751 70FA 5C03"            /* .S.v2��\.&.Qp�\. */
	$"3F07 1F86 FA5C 0565 073A 7692 73F3 5C01"            /* ?..��\.e.:v�s�\. */
	$"5307 0099 02FC FEFF 07CB 5B08 0007 1F27"            /* S..�.���.�[....' */
	$"32F5 3A04 3200 962C 84F9 3A03 1500 365B"            /* 2�:.2.�,��:...6[ */
	$"FA3A 0725 00AD FFFF A47F 48FA 3A02 2B00"            /* �:.%.����.H�:.+. */
	$"C8FE FF01 756E F93A 0306 0055 49FA 3A04"            /* ���.un�:...UI�:. */
	$"1D00 C834 6DF2 3A03 0012 2F65 FA3A 033F"            /* ..�4m�:.../e�:.? */
	$"0000 5FFD 3AFD 3A02 2000 C8F6 FF01 8C7D"            /* .._�:�:. .���.�} */
	$"F93A 030B 0040 4CFA 3A04 2500 2955 4AF3"            /* �:...@L�:.%.)UJ� */
	$"3A06 3000 96FF FF77 6FF9 3A01 0648 FEFF"            /* :.0.���wo�:..H�� */
	$"07E0 790B 0007 2738 4AEE 400E 4543 3412"            /* .�y...'8J�@.EC4. */
	$"0000 63FF D934 0000 1A3A 4AF9 400B 4045"            /* ..c��4...:J�@.@E */
	$"3522 0000 25CD FFFF 5767 F93A FF00 0053"            /* 5"..%���Wg�:�..S */
	$"F93A 0420 00B3 3167 FA3A 033F 0000 64F9"            /* �:. .�1g�:.?..d� */
	$"3A01 1500 F4FF 07B9 4700 0011 1B30 2FF5"            /* :...��.�G....0/� */
	$"3A04 2B00 2E68 4AFA 3A03 1D00 2966 FA3A"            /* :.+..hJ�:...)f�: */
	$"0432 0070 3485 F93A 0110 0001 364E FA3A"            /* .2.p4��:....6N�: */
	$"0325 0010 67FA 3A05 3F00 2E70 7F4E F33A"            /* .%..g�:.?..p.N�: */
	$"0232 0096 FEFF 07CB 5C0A 0009 222A 35F5"            /* .2.���.�\�.�"*5� */
	$"3E04 3500 972F 86F9 3E03 1900 395E FA3E"            /* >.5.�/��>...9^�> */
	$"0728 00AE FFFF A582 4CFA 3E02 2F00 C9FE"            /* .(.�����L�>./.�� */
	$"FF01 7870 F93E 0308 0058 4EFE 3EFD 3E04"            /* �.xp�>...XN�>�>. */
	$"2000 C836 6FF2 3E03 0015 3268 FA3E 0344"            /*  .�6o�>...2h�>.D */
	$"0000 63F9 3E02 2400 C9F6 FF01 8F80 F93E"            /* ..c�>.$.���.���> */
	$"030D 0043 4FFA 3E04 2800 2C58 4EF3 3E06"            /* ...CO�>.(.,XN�>. */
	$"3300 97FF FF7A 72F9 3E01 084A FEFF 06E0"            /* 3.���zr�>..J��.� */
	$"7A0D 0009 2A3B 004E EE45 0E49 4638 1400"            /* z..�*;.N�E.IF8.. */
	$"0065 FFDB 3600 001D 3D4F F845 0A49 3926"            /* .e��6...=O�E�I9& */
	$"0000 27CD FFFF 5A6B F93E FF00 0057 F93E"            /* ..'���Zk�>�..W�> */
	$"0424 00B4 346B FA3E 0344 0000 66F9 3E01"            /* .$.�4k�>.D..f�>. */
	$"1900 F4FF 07BA 4802 0013 1D33 32FA 3EFC"            /* ..��.�H....32�>� */
	$"3E04 2F00 306C 4EFA 3E03 2000 2B69 FA3E"            /* >./.0lN�>. .+i�> */
	$"0435 0071 3687 F93E 0313 0039 51FA 3E03"            /* .5.q6��>...9Q�>. */
	$"2800 1369 FA3E 0544 0030 7182 51F3 3E02"            /* (..i�>.D.0q�Q�>. */
	$"3500 97FE FF07 CD64 1507 142E 3A46 F552"            /* 5.���.�d....:F�R */
	$"0448 0799 3994 F952 0526 0746 6E52 52FC"            /* .H.�9��R.&.FnRR� */
	$"5207 3907 B5FF FFAF 905F FA52 023E 07CC"            /* R.9.�����_�R.>.� */
	$"FEFF 0187 81F9 5203 1307 645F FA52 042F"            /* ��.���R...d_�R./ */
	$"07CC 447F F252 0307 223F 7AFA 5203 5707"            /* .�D.�R.."?z�R.W. */
	$"076F F952 0231 07CC F6FF 019B 8EF9 5203"            /* .o�R.1.���.���R. */
	$"1A07 5162 FA52 0239 073E 0164 61F3 5206"            /* ..Qb�R.9.>.da�R. */
	$"4407 99FF FF8A 81F9 5201 1350 FEFF 07E1"            /* D.������R..P��.� */
	$"8117 0714 3B4D 63EE 5A0E 5E5B 471F 0707"            /* �...;Mc�Z.^[G... */
	$"6DFF DC3F 0807 2A4F 63F8 5A0A 5D4A 3208"            /* m��?..*Oc�Z�]J2. */
	$"0731 CFFF FF6B 7AF9 52FF 0700 65F9 5204"            /* .1���kz�R�..e�R. */
	$"3107 B942 7AFB 5204 5257 0707 73F9 5201"            /* 1.�Bz�R.RW..s�R. */
	$"2607 F4FF 07BE 510C 071F 2A44 45F5 5204"            /* &.��.�Q...*DE�R. */
	$"3E07 3A79 61FA 5203 2F07 3579 FA52 0448"            /* >.:ya�R./.5y�R.H */
	$"0776 4496 F952 031F 0746 64FA 5203 3907"            /* .vD��R...Fd�R.9. */
	$"1F7B FA52 0557 073A 7690 63F3 5201 4807"            /* .{�R.W.:v�c�R.H. */
	$"0099 0268 FCFF 03D9 7C3C 15F3 0004 0812"            /* .�.h��.�|<.�.... */
	$"9E3E 24F7 1200 1AF7 1204 B3FF FF9E 34F7"            /* �>$�...�..����4� */
	$"1200 CAFE FF01 591A F712 001A F712 02CA"            /* ..���.Y.�...�..� */
	$"2517 F112 0227 2A15 F712 0019 FD12 FB12"            /* %.�..'*.�...�.�. */
	$"00D4 F6FF 017C 21F7 1200 19F7 1201 3F1F"            /* .���.|!�...�..?. */
	$"F012 049E FFFF 5219 F812 0058 FCFF 02D9"            /* �..���R.�..X��.� */
	$"851C FE00 0113 17FD 12FF 1B04 0700 0619"            /* �.�....�.�...... */
	$"16FC 1206 1D01 0000 0761 BDFD FF01 A247"            /* .�.......a���.�G */
	$"FE00 0106 1BFC 1200 1B00 07FE 0001 3EAD"            /* �....�.....�..>� */
	$"FDFF 0140 16F7 1200 1AF7 1202 CA21 14F7"            /* ��.@.�...�..�!.� */
	$"1200 17F7 12F2 FF03 CD6C 360A F300 0310"            /* ...�.��.�l6��... */
	$"123F 20F7 1200 1AF7 1202 7B45 26F7 1200"            /* .? �...�..{E&�.. */
	$"19F7 1201 1614 F812 023F 7B2C F012 009E"            /* .�....�..?{,�..� */
	$"FCFF 03DB 7D3E 19F3 0004 0A15 9F42 27F7"            /* ��.�}>.�..�.�B'� */
	$"1500 1DF7 1504 B4FF FFA0 38F7 1500 CBFE"            /* ...�..����8�..�� */
	$"FF01 5C1C F715 001D FD15 FB15 02CA 281A"            /* �.\.�...�.�..�(. */
	$"F115 022A 2E19 F715 001B F715 00D4 F6FF"            /* �..*..�...�..��� */
	$"0180 25F7 1500 1CF7 1501 4321 F015 049F"            /* .�%�...�..C!�..� */
	$"FFFF 551B F815 005A FCFF 04DB 861E 0000"            /* ��U.�..Z��.ۆ... */
	$"0200 151A FD15 061E 1D09 0008 1C1A FC15"            /* ....�....�....�. */
	$"061F 0300 000A 63BD FDFF 06A3 4801 0000"            /* .....�c���.�H... */
	$"081D FC15 011D 09FE 0001 40AF FDFF 0145"            /* ..�...��..@���.E */
	$"1AF7 1500 1CF7 1502 CB25 16F7 1500 1BF7"            /* .�...�..�%.�...� */
	$"15F2 FF03 CE6E 390D F800 FC00 0312 1542"            /* .��.�n9.�.�....B */
	$"24F7 1500 1DF7 1502 7C47 29F7 1500 1BF7"            /* $�...�..|G)�...� */
	$"1501 1A16 F815 0242 7C30 F015 009F FCFF"            /* ....�..B|0�..��� */
	$"03DC 8446 24F3 0704 1522 A24E 35F7 2200"            /* .܄F$�..."�N5�". */
	$"2BFE 22FA 2204 B9FF FFAA 48F7 2200 CEFE"            /* +�"�".����H�".�� */
	$"FF01 6E2A F722 002B F722 02CE 3628 F122"            /* �.n*�".+�".�6(�" */
	$"023A 3D26 F722 0029 F722 00D6 F6FF 018D"            /* .:=&�".)�".���.� */
	$"33F7 2200 29F7 2200 5400 30F0 2204 A2FF"            /* 3�".)�".T.0�".�� */
	$"FF68 29F8 2200 62FC FF02 DC8E 28FE 0701"            /* �h)�".b��.܎(�.. */
	$"2127 FD22 062A 2914 0712 2726 FC22 062B"            /* !'�".*)...'&�".+ */
	$"0D07 0713 69C1 FDFF 06A9 510B 0707 122A"            /* ....i���.�Q....* */
	$"FC22 012A 14FE 0701 49B4 FDFF 0157 28F7"            /* �".*.�..I���.W(� */
	$"2200 2AF7 2202 CE34 24FB 22FD 2200 29F7"            /* ".*�".�4$�"�".)� */
	$"22F2 FF03 D275 4019 F307 031F 224E 33F7"            /* "��.�u@.�..."N3� */
	$"2200 2BF7 2202 8354 38F7 2200 29F7 2201"            /* ".+�".�T8�".)�". */
	$"2824 F822 024E 833F F022 00A2 00DF F8FF"            /* ($�".N�?�".�.��� */
	$"06D6 B3AA B4BA BABD FECF 00D6 95FF AEFF"            /* .ֳ�������.֕��� */
	$"03CE AD83 5FFB 4705 5B71 8175 5D49 FC47"            /* .έ�_�G.[q�u]I�G */
	$"0454 7898 B3D9 F9FF 04D1 AF8E 6F4E FC47"            /* .Tx�����.ѯ�oN�G */
	$"0050 036D 8EB2 CEB9 FF06 CFAF AAB8 BABA"            /* .P.m��ι�.ϯ���� */
	$"C0FE CF00 DBD8 FFCD FF06 D6B4 AAB5 BBBB"            /* ���.�����.ִ���� */
	$"BEFE CF00 D6C0 FF83 FF01 CFAD 0184 62FB"            /* ���.�����.ϭ.�b� */
	$"4905 5C72 8376 5E4C FC49 0457 7A99 B4D9"            /* I.\r�v^L�I.Wz��� */
	$"F9FF 04D2 B08F 7050 FC49 0451 6E8F B2CF"            /* ��.Ұ�pP�I.Qn��� */
	$"B9FF 08CF B0AA B9BB BBC1 CFCF 01CF DBA4"            /* ��.ϰ�������.�ۤ */
	$"FF06 D8B8 ACB8 C1C1 C2FE D300 D8EB FF81"            /* �.ظ�������.���� */
	$"FFD8 FF03 D3B2 8B68 FB53 0564 788A 7A66"            /* ���.Ӳ�h�S.dx�zf */
	$"54FC 5304 5E80 9FB8 DBF9 FF04 D4B4 9677"            /* T�S.^������.Դ�w */
	$"59FC 5304 5B73 96B6 D3DB FFDF FF06 D3B4"            /* Y�S.[s�������.Ӵ */
	$"ACBE C1C1 C5FE D300 DCAE FF00 FF00 00FF"            /* �������.ܮ�.�..� */
};

