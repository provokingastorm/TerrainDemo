//Maya ASCII 8.5 scene
//Name: walrus.ma
//Last modified: Mon, Oct 08, 2007 01:08:05 PM
//Codeset: 1252
requires maya "8.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 8.5";
fileInfo "version" "8.5";
fileInfo "cutIdentifier" "200612162224-692032";
fileInfo "osv" "Microsoft Windows XP Service Pack 2 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1812214755748149 1.7113179102931024 -2.1029997003454488 ;
	setAttr ".r" -type "double3" -23.138352722309548 -203.80000000000513 0 ;
	setAttr ".rpt" -type "double3" 7.9954105659375598e-019 -3.8518598887744717e-033 
		-1.4763102597407704e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 2.8829746885774736;
	setAttr ".ow" 3.4162751376784453;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.3426145936546241 0.58405430611020259 0.19117837338770483 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "walrus";
	setAttr ".t" -type "double3" 0.14407648593615474 0.26900413575015347 0.19117841403066721 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.34093787786685792 0.34093787786685792 0.34093787786685792 ;
createNode mesh -n "walrusShape" -p "walrus";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0:27]" "f[29:63]" "f[65:107]" "f[109:112]" "f[114:121]" "f[146:161]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[108]" "f[113]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 3 "f[28]" "f[64]" "f[122:145]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 184 ".uvst[0].uvsp[0:183]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5 
		0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.125 0 
		0.375 0 0.375 0.25 0.125 0.25 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.625 0.5 
		0.625 0.75 0.625 0.75 0.625 0.5 0.625 0.5 0.625 0.75 0.625 0.75 0.625 0.5 0.375 0.25 
		0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.25 0.625 
		0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.25 0.625 0.25 
		0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.625 0.125 0.125 
		0.375 0.625 0.375 0.125 0.375 0.125 0.625 0.125 0.625 0.625 0.875 0.125 0.625 0.625 
		0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.375 0.625 
		0.375 0.625 0.375 0.625 0.375 0.125 0.375 0.25 0.125 0.25 0.375 0.5 0.375 0.5 0.375 
		0.625 0.375 0.75 0.375 0.75 0.125 0 0.375 0 0.375 0.625 0.375 0.625 0.375 0.75 0.375 
		0.75 0.125 0 0.375 0 0.375 0.125 0.125 0.125 0.125 0.125 0.375 0.125 0.375 0.25 0.125 
		0.25 0.375 0.5 0.375 0.5 0.375 0.625 0.375 0.625 0.125 0.125 0.375 0.125 0.375 0.25 
		0.125 0.25 0.375 0.5 0.375 0.5 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 
		0.75 0.375 0.75 0.125 0 0.375 0 0.375 0.125 0.125 0.125 0.625 0.5 0.375 0.5 0.375 
		0.625 0.375 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.625 0.625 0.5 0.625 0.5 
		0.625 0.5 0.625 0.625 0.625 0.625 0.625 0.5 0.625 0.625 0.625 0.625 0.625 0.75 0.625 
		0.75 0.625 0.5 0.625 0.625 0.625 0.625 0.625 0.5 0.625 0.625 0.625 0.625 0.625 0.75 
		0.625 0.75 0.625 0.5 0.625 0.625 0.625 0.625 0.625 0.5 0.625 0.625 0.625 0.625 0.625 
		0.75 0.625 0.75 0.625 0.5 0.625 0.625 0.625 0.625 0.625 0.5 0.625 0.625 0.625 0.625 
		0.625 0.75 0.625 0.75 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 
		0.75 0.625 1 0.375 1 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.5 0.625 
		0.5 0.625 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 112 ".pt";
	setAttr ".pt[8]" -type "float3" 3.5762787e-007 0 1.1920929e-007 ;
	setAttr ".pt[11:20]" -type "float3" 3.5762787e-007 0 1.1920929e-007  5.9604645e-008 
		0 -5.9604645e-008  -2.9802322e-008 0 -7.0780516e-008  -2.9802322e-008 0 -7.0780516e-008  
		5.9604645e-008 0 -5.9604645e-008  5.9604645e-008 0 -5.9604645e-008  -3.5762787e-007 
		0 1.7881393e-007  -3.5762787e-007 0 1.7881393e-007  5.9604645e-008 0 -5.9604645e-008  
		0 0 0 ;
	setAttr ".pt[23:33]" -type "float3" -4.4408921e-016 0 -0.39764452  -4.4408921e-016 
		0 -0.39764452  -4.4408921e-016 0 -0.39764452  3.5762787e-007 0 -5.9604645e-008  3.5762787e-007 
		0 -5.9604645e-008  -1.1920929e-007 0.048958469 -3.3527613e-007  -1.1920929e-007 -0.048958469 
		-3.3527613e-007  -2.3841858e-007 0 4.1723251e-007  -2.3841858e-007 0 4.1723251e-007  
		0 0 -4.1723251e-007  0 0 -4.1723251e-007 ;
	setAttr ".pt[38:41]" -type "float3" 0 -3.7252903e-008 -2.9802322e-007  0 
		-3.7252903e-008 -2.9802322e-007  0 0 8.9406967e-008  0 0 8.9406967e-008 ;
	setAttr ".pt[46:49]" -type "float3" 0 2.6077032e-008 -2.9802322e-008  0 
		2.6077032e-008 -2.9802322e-008  0 0 1.1175871e-007  0 0 1.1175871e-007 ;
	setAttr ".pt[54:58]" -type "float3" 0 0 7.4505806e-008  0 0 7.4505806e-008  
		0 -7.4505806e-008 5.9604645e-008  0 -7.4505806e-008 5.9604645e-008  -4.4408921e-016 
		-5.2536206e-017 -0.49666935 ;
	setAttr ".pt[64:72]" -type "float3" -2.9802322e-008 1.323489e-023 -7.0780516e-008  
		3.5762787e-007 1.323489e-023 -5.9604645e-008  -1.1920929e-007 1.323489e-023 -1.7881393e-007  
		-5.9604645e-007 1.323489e-023 -2.9802322e-007  -1.1920929e-007 1.323489e-023 -3.3527613e-007  
		-3.5762787e-007 1.323489e-023 1.7881393e-007  5.9604645e-008 1.323489e-023 -5.9604645e-008  
		-2.9802322e-008 -1.4083099e-016 -0.099024653  2.3841858e-007 -1.4083099e-016 -0.099024773 ;
	setAttr ".pt[94:148]" -type "float3" -0.46872553 0 -0.0016266874  -0.46872553 
		0 -0.0016266874  -0.46872553 0 -0.0016266874  -0.46872553 0 -0.0016266874  -0.46872553 
		0 -0.0016266874  -0.46872553 0 -0.0016266874  -0.46872553 0 -0.0016266874  -0.46872553 
		0 -0.0016266874  -0.46872553 0 -0.0016266874  -0.46872553 0 -0.0016266874  -0.46872553 
		0 -0.0016266874  -0.46872553 0 -0.0016266874  2.3841858e-007 0 -1.4901161e-007  0 
		0 1.1920929e-007  2.9802322e-008 -1.4083099e-016 -0.09902519  0 0 1.1920929e-007  
		2.3841858e-007 0 -1.4901161e-007  1.1920929e-007 0 -2.3841858e-007  -4.7683716e-007 
		0 3.5762787e-007  -4.7683716e-007 1.323489e-023 2.3841858e-007  -4.7683716e-007 0 
		3.5762787e-007  1.1920929e-007 0 -2.3841858e-007  1.7881393e-007 0 -1.4901161e-007  
		1.7881393e-007 0 -1.4901161e-007  -2.3841858e-007 0 -1.1920929e-007  -2.3841858e-007 
		0 -1.1920929e-007  1.7881393e-007 0 -1.4901161e-007  3.5762787e-007 0 3.2782555e-007  
		1.7881393e-007 0 -1.4901161e-007  3.5762787e-007 0 3.2782555e-007  1.1920929e-007 
		0 5.364418e-007  -1.1920929e-007 0 -5.9604645e-007  0 0 -1.7881393e-007  -4.7683716e-007 
		0 1.7881393e-007  1.7881393e-007 0 -2.3841858e-007  -2.3841858e-007 0 -2.3841858e-007  
		2.9802322e-007 0 -2.3841858e-007  0 0 -2.3841858e-007  -1.7881393e-007 0 -4.7683716e-007  
		-1.1920929e-007 0 -5.9604645e-007  2.3841858e-007 0 4.7683716e-007  -4.1723251e-007 
		0 4.7683716e-007  5.9604645e-008 0 3.5762787e-007  -5.9604645e-008 0 -7.1525574e-007  
		5.364418e-007 0 5.9604645e-007  -3.5762787e-007 0 7.1525574e-007  -5.9604645e-008 
		0 -1.1920929e-006  3.9488077e-007 0 2.3841858e-007  2.9802322e-007 0 0  -9.0897083e-007 
		0 -4.7683716e-007  7.4505806e-009 0 2.3841858e-007  -3.5762787e-007 0 7.1525574e-007  
		4.6938658e-007 0 -2.3841858e-007  4.1723251e-007 0 4.7683716e-007  0 0 0 ;
	setAttr ".pt[152:163]" -type "float3" 0 1.8626451e-008 -8.9406967e-008  0 
		2.9802322e-008 0  0 1.1175871e-008 -5.9604645e-008  0 -1.4901161e-008 -1.1920929e-007  
		1.7881393e-007 0 5.0663948e-007  -2.3841858e-007 0 -2.3841858e-007  -3.5762787e-007 
		0 -6.2584877e-007  -3.5762787e-007 0 8.9406967e-008  5.9604645e-008 0 0  -3.5762787e-007 
		0 -1.1920929e-007  -4.7683716e-007 0 -1.4901161e-007  0 0 -3.8743019e-007 ;
	setAttr -s 164 ".vt[0:163]"  -0.5 -0.93052667 0.50000012 0.5 -0.93052667 
		0.50000012 -0.5 0.93052661 0.50000012 0.5 0.93052661 0.50000012 -0.5 0.93052661 -0.50000006 
		0.857575 0.93052661 -0.50000006 -0.5 -0.93052667 -0.49999994 0.857575 -0.93052667 
		-0.49999994 -0.66683292 0.67272484 -1.1701925 0.80068791 0.61775577 -0.97947568 0.80068791 
		-0.61775607 -0.97947568 -0.66683292 -0.6727249 -1.1701925 -0.065385237 0.3113465 
		-1.5077115 0.7399016 0.3682009 -1.5077115 0.7399016 -0.36820108 -1.5077115 -0.065385237 
		-0.31134668 -1.5077115 0.52786386 0.31134641 -2.3610146 0.75064564 0.31134641 -2.3610146 
		0.75064564 -0.31134668 -2.3610146 0.52786386 -0.31134668 -2.3610146 -2.512044 -0.5 
		0.075696237 -2.512044 -0.5 0.49870062 -2.512044 0.50000006 0.49870062 -2.512044 0.50000006 
		0.075696237 -2.512044 0.50000006 -0.40377939 -2.512044 -0.5 -0.40377939 1.3003507 
		0.31134641 -1.6550626 1.3003507 -0.31134668 -1.6550626 1.3110945 -0.31134668 -2.3539581 
		1.3110945 0.31134641 -2.3539581 1.4906651 0.34348705 -1.8843586 1.4906651 -0.3434875 
		-1.8843586 1.6904429 -0.3434875 -1.9321226 1.6904429 0.34348705 -1.9321226 -0.21771531 
		0.93052661 0.24778858 0.31561798 0.93052661 0.24778858 0.50632465 0.93052661 -0.28554505 
		-0.21771531 0.93052661 -0.28554505 -0.21771559 -0.93052667 -0.28554496 0.50632465 
		-0.93052667 -0.28554496 0.31561798 -0.93052667 0.24778858 -0.21771559 -0.93052667 
		0.24778858 -0.21771531 1.3205029 0.51287621 0.31561798 1.3205029 0.51287621 0.50632465 
		1.3205029 -0.02045737 -0.21771531 1.3205029 -0.02045737 -0.21771559 -1.3205031 -0.020457283 
		0.50632465 -1.3205031 -0.020457283 0.31561798 -1.3205031 0.51287621 -0.21771559 -1.3205031 
		0.51287621 -0.67725569 1.6072079 0.43897906 -0.25645998 1.6072079 0.43897906 -0.10599405 
		1.6072079 0.308355 -0.67725569 1.6072079 0.308355 -0.67725587 -1.6072081 0.30835509 
		-0.10599405 -1.6072081 0.30835509 -0.25645998 -1.6072081 0.43897906 -0.67725587 -1.6072081 
		0.43897906 -2.512044 2.7798688e-008 -0.40377939 -2.512044 2.7798688e-008 0.49870062 
		-0.5 -5.9614074e-008 0.50000012 0.5 -5.9614074e-008 0.50000012 0.857575 -5.9614074e-008 
		-0.50000006 0.80068791 -5.9614074e-008 -0.97947568 0.7399016 -1.0332046e-007 -1.5077115 
		1.3003507 -5.9614074e-008 -1.6550626 1.4365127 -5.9614074e-008 -1.8843586 1.5958664 
		-5.9614074e-008 -2.0758424 1.3110945 -5.9614074e-008 -2.3539581 0.75064564 -5.9614074e-008 
		-2.3610146 0.52786386 -5.9614074e-008 -2.3610146 -0.065385237 -5.9614074e-008 -1.5077115 
		-0.66683292 -5.9614074e-008 -1.1701925 -3.5238369 2.7798688e-008 0.061218668 -3.5238369 
		2.7798688e-008 0.26733109 -3.5238369 0.43475533 0.26733109 -3.5238369 0.43475533 
		0.061218668 -3.5238369 0.43475533 -0.17240986 -3.5238369 2.7798688e-008 -0.17240986 
		-3.5238369 -0.43475547 0.061218668 -3.5238369 -0.43475547 -0.17240986 -3.5238369 
		-0.43475547 0.26733109 -3.8358233 -0.020637034 0.055179145 -3.8358233 -0.4245021 
		0.055179145 -3.8358233 -0.020637034 -0.075891137 -3.8358233 -0.4245021 -0.075891137 
		-3.8358233 -0.4245021 0.17081243 -3.8358233 -0.020637034 0.17081243 -3.8358228 0.03137872 
		0.055179235 -3.8358228 0.03137872 0.17081243 -3.8358228 0.43524361 0.17081243 -3.8358228 
		0.43524361 0.055179235 -3.8358228 0.43524361 -0.075891137 -3.8358228 0.03137872 -0.075891137 
		-4.2128868 0.019915584 0.051936481 -4.2128868 0.019915584 0.12223182 -4.2128868 0.44670674 
		0.12223182 -4.2128868 0.44670674 0.051936481 -4.2128868 0.44670674 -0.020824941 -4.2128868 
		0.019915584 -0.020824941 -4.2128868 -0.0091738543 0.051936395 -4.2128868 -0.4359653 
		0.051936395 -4.2128868 -0.0091738105 -0.020824941 -4.2128868 -0.4359653 -0.020824941 
		-4.2128868 -0.43596533 0.12223182 -4.2128868 -0.009173898 0.12223182 0.74527359 0.40960115 
		-1.9343631 0.23123932 0.37533188 -1.9343631 0.23123932 -5.9614074e-008 -1.9343631 
		0.23123932 -0.37533206 -1.9343631 0.74527359 -0.40960154 -1.9343631 1.3057225 -0.37533206 
		-2.0045104 1.5958015 -0.37533206 -1.8525903 1.4373848 -5.9614074e-008 -2.0016394 
		1.5958015 0.37533179 -1.8525903 1.3057225 0.37533179 -2.0045104 1.3491501 0.23774347 
		-1.7138574 1.3491501 0.082070209 -1.7138574 1.4443072 0.082070209 -1.8285058 1.4443072 
		0.25381377 -1.8285058 1.3491501 -0.082070418 -1.7138574 1.4443072 -0.082070418 -1.8285054 
		1.3491501 -0.23774384 -1.7138574 1.4443072 -0.25381419 -1.8285054 1.577096 0.27828848 
		-1.4202427 1.577096 0.1653949 -1.3482234 1.6662406 0.15048429 -1.5250757 1.6662406 
		0.27503192 -1.6045299 1.5776494 -0.17307432 -1.3538158 1.6656868 -0.15934986 -1.5290873 
		1.5776494 -0.28495926 -1.4201063 1.6656868 -0.28278482 -1.602221 1.6631532 0.29186282 
		-1.1566303 1.6631532 0.1983462 -1.0969725 1.7491596 0.19104408 -1.1835817 1.7491596 
		0.2942144 -1.2493979 1.6631528 -0.20397444 -1.0996934 1.7491592 -0.19716871 -1.1866082 
		1.6631528 -0.29782078 -1.1552963 1.7491592 -0.3007029 -1.2479509 1.7921964 0.32475424 
		-0.43493077 1.7921964 0.2873475 -0.41106752 1.8265992 0.28442669 -0.44571164 1.8265992 
		0.3256948 -0.47203854 1.792196 -0.28904095 -0.41002145 1.8265989 -0.28631872 -0.44478673 
		1.792196 -0.32657942 -0.43226248 1.8265989 -0.32773232 -0.46932366 -1.6506183 1.8221517 
		0.43897906 -1.0523138 2.0439534 0.43897906 -0.90184784 2.0439534 0.308355 -1.6506183 
		1.8221517 0.308355 -1.6506187 -1.822152 0.30835509 -0.90184784 -2.0439537 0.30835509 
		-1.0523138 -2.0439537 0.43897906 -1.6506187 -1.822152 0.43897906 0.82143879 -0.36497003 
		-2.1232977 0.91858327 -0.35902998 -2.1354568 0.82236987 -0.34793919 -2.1972506 0.91951442 
		-0.34793919 -2.1960278 0.82143879 0.36496961 -2.1232984 0.82236987 0.34793881 -2.1972513 
		0.91858327 0.35902947 -2.1354575 0.91951442 0.34793881 -2.1960285;
	setAttr -s 324 ".ed";
	setAttr ".ed[0:165]"  0 1 1 2 3 1 4 5 
		1 6 7 1 0 60 1 1 61 1 2 4 
		1 3 5 1 5 62 1 6 0 1 7 1 
		1 4 8 1 5 9 1 8 9 1 7 10 
		1 9 63 1 6 11 1 11 10 1 8 72 
		1 8 12 1 9 13 1 12 13 1 10 14 
		1 13 64 1 11 15 1 15 14 1 12 71 
		1 12 107 1 13 106 1 16 17 1 14 110 
		1 17 69 1 15 109 1 19 18 1 16 70 
		1 6 20 1 0 21 1 20 21 1 2 22 
		1 21 59 1 4 23 1 22 23 1 8 24 
		1 23 24 1 11 25 1 24 58 1 20 25 
		1 13 26 1 14 27 1 26 65 1 18 28 
		0 27 111 1 17 29 0 29 68 1 26 115 
		1 26 30 1 27 31 1 30 66 1 28 32 
		1 31 112 1 29 33 1 33 67 1 30 114 
		1 2 34 1 3 35 1 34 35 1 5 36 
		1 35 36 1 4 37 1 37 36 1 34 37 
		1 6 38 1 7 39 1 38 39 1 1 40 
		1 39 40 1 0 41 1 41 40 1 38 41 
		1 34 42 1 35 43 1 42 43 1 36 44 
		1 43 44 1 37 45 1 45 44 1 42 45 
		1 38 46 1 39 47 1 46 47 1 40 48 
		1 47 48 1 41 49 1 49 48 1 46 49 
		1 42 50 1 43 51 1 50 51 1 44 52 
		1 51 52 1 45 53 1 53 52 1 50 53 
		1 46 54 1 47 55 1 54 55 1 48 56 
		1 55 56 1 49 57 1 57 56 1 54 57 
		1 58 25 1 59 22 1 60 2 1 59 60 
		1 61 3 1 60 61 1 62 7 1 61 62 
		1 63 10 1 62 63 1 64 14 1 63 64 
		1 65 27 1 64 65 1 66 31 1 65 66 
		1 67 32 1 66 113 1 68 28 1 67 68 
		1 69 18 1 68 69 1 70 19 1 69 70 
		1 71 15 1 70 108 1 72 11 1 71 72 
		1 72 58 1 59 74 1 73 74 1 22 75 
		1 74 75 1 23 76 1 75 76 1 24 77 
		1 76 77 1 58 78 1 77 78 1 78 73 
		1 20 79 1 25 80 1 78 80 1 79 80 
		1 21 81 1 79 81 1 81 74 1 73 82 
		1 79 83 1 78 84 1 84 82 1 80 85 
		1 84 85 1 83 85 1 81 86 1;
	setAttr ".ed[166:323]" 83 86 1 74 87 1 86 87 
		1 82 87 1 73 88 1 74 89 1 88 89 
		1 75 90 1 89 90 1 76 91 1 90 91 
		1 77 92 1 91 92 1 78 93 1 92 93 
		1 93 88 1 88 94 1 89 95 1 94 95 
		1 90 96 1 95 96 1 91 97 1 96 97 
		1 97 94 1 92 98 1 97 98 1 93 99 
		1 98 99 1 99 94 1 82 100 1 83 101 
		1 100 101 1 84 102 1 102 100 1 85 103 
		1 102 103 1 101 103 1 86 104 1 101 104 
		1 87 105 1 104 105 1 100 105 1 106 17 
		1 107 16 1 106 107 1 108 71 1 107 108 
		1 109 19 1 108 109 1 110 18 1 109 110 
		1 111 28 1 110 111 1 112 32 1 111 112 
		1 113 67 1 112 113 1 114 33 1 113 114 
		1 115 29 1 114 115 1 115 106 1 26 116 
		1 65 117 1 116 117 1 66 118 1 117 118 
		1 30 119 1 119 118 1 116 119 1 65 120 
		1 66 121 1 120 121 1 27 122 1 120 122 
		1 31 123 1 122 123 1 121 123 1 116 124 
		1 117 125 1 124 125 1 118 126 1 125 126 
		1 119 127 1 127 126 1 124 127 1 120 128 
		1 121 129 1 128 129 1 122 130 1 128 130 
		1 123 131 1 130 131 1 129 131 1 124 132 
		1 125 133 1 132 133 1 126 134 1 133 134 
		1 127 135 1 135 134 1 132 135 1 128 136 
		1 129 137 1 136 137 1 130 138 1 136 138 
		1 131 139 1 138 139 1 137 139 1 132 140 
		1 133 141 1 140 141 1 134 142 1 141 142 
		1 135 143 1 143 142 1 140 143 1 136 144 
		1 137 145 1 144 145 1 138 146 1 144 146 
		1 139 147 1 146 147 1 145 147 1 50 148 
		1 51 149 1 148 149 1 52 150 1 149 150 
		1 53 151 1 151 150 1 148 151 1 54 152 
		1 55 153 1 152 153 1 56 154 1 153 154 
		1 57 155 1 155 154 1 152 155 1 110 156 
		1 111 157 1 156 157 1 18 158 1 156 158 
		1 28 159 1 158 159 1 157 159 1 106 160 
		1 17 161 1 160 161 1 115 162 1 162 160 
		1 29 163 1 162 163 1 161 163 1;
	setAttr -s 162 ".fc[0:161]" -type "polyFaces" 
		f 4 116 115 -2 -114 
		mu 0 4 70 71 3 2 
		f 4 294 296 -299 -300 
		mu 0 4 168 169 170 171 
		f 4 29 31 134 -35 
		mu 0 4 22 23 80 81 
		f 4 302 304 -307 -308 
		mu 0 4 172 173 174 175 
		f 4 118 -9 -8 -116 
		mu 0 4 71 73 11 3 
		f 4 184 186 188 189 
		mu 0 4 110 111 112 113 
		f 4 2 12 -14 -12 
		mu 0 4 4 5 15 14 
		f 4 8 120 -16 -13 
		mu 0 4 5 72 74 15 
		f 4 -4 16 17 -15 
		mu 0 4 7 6 17 16 
		f 4 -190 191 193 194 
		mu 0 4 117 114 115 116 
		f 4 13 20 -22 -20 
		mu 0 4 14 15 19 18 
		f 4 15 122 -24 -21 
		mu 0 4 15 74 75 19 
		f 4 -18 24 25 -23 
		mu 0 4 16 17 21 20 
		f 4 -19 19 26 138 
		mu 0 4 83 14 18 82 
		f 4 21 28 210 -28 
		mu 0 4 18 19 126 127 
		f 4 57 128 224 -63 
		mu 0 4 38 77 133 134 
		f 4 -26 32 216 -31 
		mu 0 4 20 21 129 130 
		f 4 -27 27 212 211 
		mu 0 4 82 18 127 128 
		f 4 9 36 -38 -36 
		mu 0 4 12 0 27 26 
		f 4 113 38 -113 114 
		mu 0 4 70 2 28 69 
		f 4 6 40 -42 -39 
		mu 0 4 2 13 29 28 
		f 4 11 42 -44 -41 
		mu 0 4 4 14 31 30 
		f 4 18 139 -46 -43 
		mu 0 4 14 83 66 31 
		f 4 -17 35 46 -45 
		mu 0 4 17 6 33 32 
		f 4 23 124 -50 -48 
		mu 0 4 19 75 76 34 
		f 4 30 218 -52 -49 
		mu 0 4 20 130 131 35 
		f 4 -32 52 53 132 
		mu 0 4 80 23 37 79 
		f 4 227 -29 47 54 
		mu 0 4 135 126 19 34 
		f 4 278 280 -283 -284 
		mu 0 4 160 161 162 163 
		f 4 51 220 -60 -57 
		mu 0 4 35 131 132 39 
		f 4 -54 60 61 130 
		mu 0 4 79 37 41 78 
		f 4 -55 55 62 226 
		mu 0 4 135 34 38 134 
		f 4 1 64 -66 -64 
		mu 0 4 2 3 43 42 
		f 4 7 66 -68 -65 
		mu 0 4 3 5 44 43 
		f 4 -3 68 69 -67 
		mu 0 4 5 4 45 44 
		f 4 -7 63 70 -69 
		mu 0 4 4 2 42 45 
		f 4 3 72 -74 -72 
		mu 0 4 6 7 47 46 
		f 4 10 74 -76 -73 
		mu 0 4 7 9 48 47 
		f 4 -1 76 77 -75 
		mu 0 4 9 8 49 48 
		f 4 -10 71 78 -77 
		mu 0 4 8 6 46 49 
		f 4 65 80 -82 -80 
		mu 0 4 42 43 51 50 
		f 4 67 82 -84 -81 
		mu 0 4 43 44 52 51 
		f 4 -70 84 85 -83 
		mu 0 4 44 45 53 52 
		f 4 -71 79 86 -85 
		mu 0 4 45 42 50 53 
		f 4 73 88 -90 -88 
		mu 0 4 46 47 55 54 
		f 4 75 90 -92 -89 
		mu 0 4 47 48 56 55 
		f 4 -78 92 93 -91 
		mu 0 4 48 49 57 56 
		f 4 -79 87 94 -93 
		mu 0 4 49 46 54 57 
		f 4 81 96 -98 -96 
		mu 0 4 50 51 59 58 
		f 4 83 98 -100 -97 
		mu 0 4 51 52 60 59 
		f 4 -86 100 101 -99 
		mu 0 4 52 53 61 60 
		f 4 -87 95 102 -101 
		mu 0 4 53 50 58 61 
		f 4 89 104 -106 -104 
		mu 0 4 54 55 63 62 
		f 4 91 106 -108 -105 
		mu 0 4 55 56 64 63 
		f 4 -94 108 109 -107 
		mu 0 4 56 57 65 64 
		f 4 -95 103 110 -109 
		mu 0 4 57 54 62 65 
		f 4 -198 -200 201 -203 
		mu 0 4 121 118 119 120 
		f 4 204 206 -208 197 
		mu 0 4 122 123 124 125 
		f 4 4 -115 -40 -37 
		mu 0 4 0 70 69 27 
		f 4 0 5 -117 -5 
		mu 0 4 0 1 71 70 
		f 4 -11 -118 -119 -6 
		mu 0 4 1 10 73 71 
		f 4 -121 117 14 -120 
		mu 0 4 74 72 7 16 
		f 4 -123 119 22 -122 
		mu 0 4 75 74 16 20 
		f 4 -125 121 48 -124 
		mu 0 4 76 75 20 35 
		f 4 -287 288 290 -292 
		mu 0 4 164 165 166 167 
		f 4 -129 125 59 222 
		mu 0 4 133 77 39 132 
		f 4 -130 -131 127 -59 
		mu 0 4 36 79 78 40 
		f 4 -132 -133 129 -51 
		mu 0 4 24 80 79 36 
		f 4 -135 131 -34 -134 
		mu 0 4 81 80 24 25 
		f 4 -136 -212 214 -33 
		mu 0 4 21 82 128 129 
		f 4 -138 -139 135 -25 
		mu 0 4 17 83 82 21 
		f 4 -140 137 44 -112 
		mu 0 4 66 83 17 32 
		f 4 112 142 -144 -141 
		mu 0 4 69 28 85 84 
		f 4 41 144 -146 -143 
		mu 0 4 28 29 86 85 
		f 4 43 146 -148 -145 
		mu 0 4 30 31 88 87 
		f 4 45 148 -150 -147 
		mu 0 4 31 66 89 88 
		f 4 111 152 -154 -149 
		mu 0 4 66 32 90 89 
		f 4 -47 151 154 -153 
		mu 0 4 32 33 91 90 
		f 4 37 155 -157 -152 
		mu 0 4 26 27 93 92 
		f 4 39 140 -158 -156 
		mu 0 4 27 69 84 93 
		f 4 -151 160 161 -159 
		mu 0 4 68 89 95 94 
		f 4 153 162 -164 -161 
		mu 0 4 89 90 96 95 
		f 4 -155 159 164 -163 
		mu 0 4 90 91 97 96 
		f 4 156 165 -167 -160 
		mu 0 4 92 93 99 98 
		f 4 157 167 -169 -166 
		mu 0 4 93 84 100 99 
		f 4 -142 158 169 -168 
		mu 0 4 84 67 101 100 
		f 4 141 171 -173 -171 
		mu 0 4 67 84 103 102 
		f 4 143 173 -175 -172 
		mu 0 4 84 85 104 103 
		f 4 145 175 -177 -174 
		mu 0 4 85 86 105 104 
		f 4 147 177 -179 -176 
		mu 0 4 87 88 107 106 
		f 4 149 179 -181 -178 
		mu 0 4 88 89 108 107 
		f 4 150 170 -182 -180 
		mu 0 4 89 68 109 108 
		f 4 172 183 -185 -183 
		mu 0 4 102 103 111 110 
		f 4 174 185 -187 -184 
		mu 0 4 103 104 112 111 
		f 4 176 187 -189 -186 
		mu 0 4 104 105 113 112 
		f 4 178 190 -192 -188 
		mu 0 4 106 107 115 114 
		f 4 180 192 -194 -191 
		mu 0 4 107 108 116 115 
		f 4 181 182 -195 -193 
		mu 0 4 108 109 117 116 
		f 4 -162 198 199 -196 
		mu 0 4 94 95 119 118 
		f 4 163 200 -202 -199 
		mu 0 4 95 96 120 119 
		f 4 -165 196 202 -201 
		mu 0 4 96 97 121 120 
		f 4 166 203 -205 -197 
		mu 0 4 98 99 123 122 
		f 4 168 205 -207 -204 
		mu 0 4 99 100 124 123 
		f 4 -170 195 207 -206 
		mu 0 4 100 101 125 124 
		f 4 -211 208 -30 -210 
		mu 0 4 127 126 23 22 
		f 4 -213 209 34 136 
		mu 0 4 128 127 22 81 
		f 4 -215 -137 133 -214 
		mu 0 4 129 128 81 25 
		f 4 -217 213 33 -216 
		mu 0 4 130 129 25 24 
		f 4 -311 312 314 -316 
		mu 0 4 176 177 178 179 
		f 4 -221 217 58 -220 
		mu 0 4 132 131 36 40 
		f 4 -222 -223 219 -128 
		mu 0 4 78 133 132 40 
		f 4 -225 221 -62 -224 
		mu 0 4 134 133 78 41 
		f 4 -226 -227 223 -61 
		mu 0 4 37 135 134 41 
		f 4 -319 -321 322 -324 
		mu 0 4 180 181 182 183 
		f 4 49 229 -231 -229 
		mu 0 4 34 76 137 136 
		f 4 126 231 -233 -230 
		mu 0 4 76 77 138 137 
		f 4 -58 233 234 -232 
		mu 0 4 77 38 139 138 
		f 4 -56 228 235 -234 
		mu 0 4 38 34 136 139 
		f 4 -127 236 238 -238 
		mu 0 4 77 76 141 140 
		f 4 123 239 -241 -237 
		mu 0 4 76 35 142 141 
		f 4 56 241 -243 -240 
		mu 0 4 35 39 143 142 
		f 4 -126 237 243 -242 
		mu 0 4 39 77 140 143 
		f 4 230 245 -247 -245 
		mu 0 4 136 137 145 144 
		f 4 232 247 -249 -246 
		mu 0 4 137 138 146 145 
		f 4 -235 249 250 -248 
		mu 0 4 138 139 147 146 
		f 4 -236 244 251 -250 
		mu 0 4 139 136 144 147 
		f 4 -239 252 254 -254 
		mu 0 4 140 141 149 148 
		f 4 240 255 -257 -253 
		mu 0 4 141 142 150 149 
		f 4 242 257 -259 -256 
		mu 0 4 142 143 151 150 
		f 4 -244 253 259 -258 
		mu 0 4 143 140 148 151 
		f 4 246 261 -263 -261 
		mu 0 4 144 145 153 152 
		f 4 248 263 -265 -262 
		mu 0 4 145 146 154 153 
		f 4 -251 265 266 -264 
		mu 0 4 146 147 155 154 
		f 4 -252 260 267 -266 
		mu 0 4 147 144 152 155 
		f 4 -255 268 270 -270 
		mu 0 4 148 149 157 156 
		f 4 256 271 -273 -269 
		mu 0 4 149 150 158 157 
		f 4 258 273 -275 -272 
		mu 0 4 150 151 159 158 
		f 4 -260 269 275 -274 
		mu 0 4 151 148 156 159 
		f 4 262 277 -279 -277 
		mu 0 4 152 153 161 160 
		f 4 264 279 -281 -278 
		mu 0 4 153 154 162 161 
		f 4 -267 281 282 -280 
		mu 0 4 154 155 163 162 
		f 4 -268 276 283 -282 
		mu 0 4 155 152 160 163 
		f 4 -271 284 286 -286 
		mu 0 4 156 157 165 164 
		f 4 272 287 -289 -285 
		mu 0 4 157 158 166 165 
		f 4 274 289 -291 -288 
		mu 0 4 158 159 167 166 
		f 4 -276 285 291 -290 
		mu 0 4 159 156 164 167 
		f 4 97 293 -295 -293 
		mu 0 4 58 59 169 168 
		f 4 99 295 -297 -294 
		mu 0 4 59 60 170 169 
		f 4 -102 297 298 -296 
		mu 0 4 60 61 171 170 
		f 4 -103 292 299 -298 
		mu 0 4 61 58 168 171 
		f 4 105 301 -303 -301 
		mu 0 4 62 63 173 172 
		f 4 107 303 -305 -302 
		mu 0 4 63 64 174 173 
		f 4 -110 305 306 -304 
		mu 0 4 64 65 175 174 
		f 4 -111 300 307 -306 
		mu 0 4 65 62 172 175 
		f 4 -219 308 310 -310 
		mu 0 4 131 130 177 176 
		f 4 215 311 -313 -309 
		mu 0 4 130 24 178 177 
		f 4 50 313 -315 -312 
		mu 0 4 24 36 179 178 
		f 4 -218 309 315 -314 
		mu 0 4 36 131 176 179 
		f 4 -209 316 318 -318 
		mu 0 4 23 126 181 180 
		f 4 -228 319 320 -317 
		mu 0 4 126 135 182 181 
		f 4 225 321 -323 -320 
		mu 0 4 135 37 183 182 
		f 4 -53 317 323 -322 
		mu 0 4 37 23 180 183 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".dr" 3;
createNode lightLinker -n "lightLinker1";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/jrosent1/Desktop/walrus.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode lambert -n "lambert4";
	setAttr ".c" -type "float3" 0.80199999 0.80199999 0.80199999 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode phong -n "phong1";
	setAttr ".c" -type "float3" 0.147 0.147 0.147 ;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode lambert -n "lambert5";
	setAttr ".c" -type "float3" 0.54799998 0.39843625 0.319484 ;
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 2048\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 2048\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 2048\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 2048\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 2048\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 2048\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 2048\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 2048\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" (localizedPanelLabel(\"Web Browser\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 2048\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 2048\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 2 -size 12 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId3.id" "walrusShape.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "walrusShape.iog.og[0].gco";
connectAttr "groupId4.id" "walrusShape.iog.og[1].gid";
connectAttr "phong1SG.mwc" "walrusShape.iog.og[1].gco";
connectAttr "groupId5.id" "walrusShape.iog.og[2].gid";
connectAttr "lambert4SG.mwc" "walrusShape.iog.og[2].gco";
connectAttr "groupId2.id" "walrusShape.ciog.cog[0].cgid";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "lambert2SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "lambert3SG.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr "lambert4SG.msg" "lightLinker1.lnk[4].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr "phong1SG.msg" "lightLinker1.lnk[5].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr "lambert5SG.msg" "lightLinker1.lnk[6].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "lambert2SG.msg" "lightLinker1.slnk[2].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[3].sllk";
connectAttr "lambert3SG.msg" "lightLinker1.slnk[3].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[4].sllk";
connectAttr "lambert4SG.msg" "lightLinker1.slnk[4].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[5].sllk";
connectAttr "phong1SG.msg" "lightLinker1.slnk[5].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[6].sllk";
connectAttr "lambert5SG.msg" "lightLinker1.slnk[6].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "groupId5.msg" "lambert4SG.gn" -na;
connectAttr "walrusShape.iog.og[2]" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "groupId4.msg" "phong1SG.gn" -na;
connectAttr "walrusShape.iog.og[1]" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo4.sg";
connectAttr "phong1.msg" "materialInfo4.m";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "walrusShape.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "groupId3.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo5.sg";
connectAttr "lambert5.msg" "materialInfo5.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "walrusShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
// End of walrus.ma
