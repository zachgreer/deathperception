//Maya ASCII 2014 scene
//Name: mdl_scenery.ma
//Last modified: Tue, Dec 10, 2013 09:15:13 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9559764610041146 2.9562163568530817 -10.324459941116906 ;
	setAttr ".r" -type "double3" -14.399999999997782 168.79999999999245 0 ;
	setAttr ".rpt" -type "double3" -1.4535260234080611e-017 -1.2925607474255669e-018 
		1.1940265502390706e-018 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 10.866289593459392;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.088321657444666801 0.25388002395629883 -2.9651222116694237e-017 ;
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
	setAttr ".t" -type "double3" -0.19630702303877134 0.25388002395629883 -4.3512150157574672 ;
	setAttr ".r" -type "double3" 0 180.00088826111215 0 ;
	setAttr ".rp" -type "double3" 1.0097419586828951e-028 0 0 ;
	setAttr ".rpt" -type "double3" -2.8225495450251394e-016 0 1.799305244762127e-016 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 0.86602540378443893;
	setAttr ".ow" 14.281875884090407;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -5.4013083509139598e-013 0 2.2204460492503131e-016 ;
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
createNode transform -n "mountain_range";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0.026808761337725695 0.25388002395629883 -2.9651222116694237e-017 ;
	setAttr ".sp" -type "double3" 0.026808761337725695 0.25388002395629883 -2.9651222116694237e-017 ;
createNode transform -n "mountain_begin" -p "mountain_range";
	setAttr ".rp" -type "double3" 4.6512015340325013 0 0 ;
	setAttr ".sp" -type "double3" 4.6512015340325013 0 0 ;
createNode mesh -n "mountain_beginShape" -p "mountain_begin";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "mountain_segment_one" -p "mountain_range";
	setAttr ".rp" -type "double3" 2.8967691610889501 0 0 ;
	setAttr ".sp" -type "double3" 2.8967691610889501 0 0 ;
createNode mesh -n "mountain_segment_oneShape" -p "mountain_segment_one";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "mountain_segment_two" -p "mountain_range";
	setAttr ".rp" -type "double3" 1.0492013103422595 0 0 ;
	setAttr ".sp" -type "double3" 1.0492013103422595 0 0 ;
createNode mesh -n "mountain_segment_twoShape" -p "mountain_segment_two";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "mountain_segment_three" -p "mountain_range";
	setAttr ".rp" -type "double3" -0.9208853104484418 0 0 ;
	setAttr ".sp" -type "double3" -0.9208853104484418 0 0 ;
createNode mesh -n "mountain_segment_threeShape" -p "mountain_segment_three";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "mountain_end" -p "mountain_range";
	setAttr ".rp" -type "double3" -3.697648224602327 0 0 ;
	setAttr ".sp" -type "double3" -3.697648224602327 0 0 ;
createNode mesh -n "mountain_endShape" -p "mountain_end";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "skyline";
	setAttr ".rp" -type "double3" 0.026898715323243394 0.072473360057603686 -0.019633330583962261 ;
	setAttr ".sp" -type "double3" 0.026898715323243394 0.072473360057603686 -0.019633330583962261 ;
createNode transform -n "building_0" -p "skyline";
	setAttr ".t" -type "double3" 4.7386905096414269 -0.0870507220610649 3.9578687248250273e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.39307750720635465 0.82272038121385338 0.82272038121385338 ;
	setAttr ".rp" -type "double3" 0 5.0704058177198148e-033 0 ;
	setAttr ".rpt" -type "double3" 0 -5.0704058177198162e-033 5.0704058177198162e-033 ;
	setAttr ".sp" -type "double3" 0 6.1629758220391547e-033 0 ;
	setAttr ".spt" -type "double3" 0 -1.0925700043193398e-033 0 ;
createNode mesh -n "building_0_window_Shape0" -p "building_0";
	setAttr -k off ".v";
	setAttr -s 7 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[2]" -type "float3" -0.099814773 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.099814773 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.5879354e-009 0 0 ;
	setAttr ".pt[12]" -type "float3" -6.6174449e-024 0 0 ;
	setAttr ".pt[13]" -type "float3" -5.5879354e-009 0 0 ;
	setAttr ".pt[16]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".pt[17]" -type "float3" 1.323489e-023 0 0 ;
	setAttr ".pt[18]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[20]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 0 ;
createNode transform -n "building_12" -p "skyline";
	setAttr ".t" -type "double3" -4.6018261659181761 -0.015641963114484781 3.4732135200077063e-018 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.63768121735647332 1 0.95787057539705522 ;
	setAttr ".rp" -type "double3" -5.6637469590412464e-016 2.5766401504164598e-034 0 ;
	setAttr ".rpt" -type "double3" 0 -2.5766401504164602e-034 2.5766401504164602e-034 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 2.5766401504164598e-034 0 ;
	setAttr ".spt" -type "double3" 3.2180372379600064e-016 0 0 ;
createNode mesh -n "building_12_doorShape" -p "building_12";
	setAttr -k off ".v";
	setAttr -s 6 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "building_9" -p "skyline";
	setAttr ".t" -type "double3" -2.1104574274122339 -0.26324858565545972 -0.022162299586706655 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.39307750720635465 0.82272038121385338 0.47280299964028366 ;
	setAttr ".rp" -type "double3" -3.4912295917020476e-016 2.8543847189125191e-018 0 ;
	setAttr ".rpt" -type "double3" 0 -2.8543847189125199e-018 2.8543847189125199e-018 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 3.4694469519536142e-018 0 ;
	setAttr ".spt" -type "double3" 5.3905546052992052e-016 -6.1506223304109498e-019 
		0 ;
createNode mesh -n "building_9_window_Shape0" -p "building_9";
	setAttr -k off ".v";
	setAttr -s 14 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[2]" -type "float3" -0.099814773 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.099814773 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.5879354e-009 0 0 ;
	setAttr ".pt[12]" -type "float3" -6.6174449e-024 0 0 ;
	setAttr ".pt[13]" -type "float3" -5.5879354e-009 0 0 ;
	setAttr ".pt[16]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".pt[17]" -type "float3" 1.323489e-023 0 0 ;
	setAttr ".pt[18]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[20]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_2" -p "skyline";
	setAttr ".t" -type "double3" 3.5800320567181716 -0.015641963114484791 3.4732135200077063e-018 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.63768121735647332 1 0.95787057539705522 ;
	setAttr ".rp" -type "double3" 0 -4.2814997270643764e-035 -3.3232811481773682e-018 ;
	setAttr ".rpt" -type "double3" 0 3.323281148177369e-018 3.323281148177369e-018 ;
	setAttr ".sp" -type "double3" 0 -4.2814997270643764e-035 -3.4694469519536142e-018 ;
	setAttr ".spt" -type "double3" 0 0 1.4616580377624616e-019 ;
createNode mesh -n "building_2_doorShape" -p "building_2";
	setAttr -k off ".v";
	setAttr -s 48 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_3" -p "skyline";
	setAttr ".t" -type "double3" 2.7277722432666542 -0.23504313232844048 -0.039266661167924502 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.52502359438003243 ;
	setAttr ".rp" -type "double3" 4.4408920985006262e-016 -6.9388939039072284e-018 0 ;
	setAttr ".rpt" -type "double3" 0 6.9388939039072299e-018 -6.9388939039072299e-018 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-016 -6.9388939039072284e-018 0 ;
createNode mesh -n "building_3_doorShape" -p "building_3";
	setAttr -k off ".v";
	setAttr -s 24 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_4" -p "skyline";
	setAttr ".t" -type "double3" 1.6315017267766989 0.07353881900805305 -0.039266661167924502 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1 1.1421159731655117 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-016 -6.9388939039072284e-018 
		0 ;
	setAttr ".rpt" -type "double3" 0 6.9388939039072299e-018 -6.9388939039072299e-018 ;
	setAttr ".sp" -type "double3" -2.2204460492503131e-016 -6.9388939039072284e-018 
		0 ;
createNode mesh -n "building_4_doorShape" -p "building_4";
	setAttr -k off ".v";
	setAttr -s 16 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_1" -p "skyline";
	setAttr ".t" -type "double3" 4.1882129242704949 -0.14792045513038382 3.2844939019756884e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.46312748272667464 1 0.6984199580224415 ;
	setAttr ".rp" -type "double3" 0 2.6611932917551644e-033 1.9385047956356247e-017 ;
	setAttr ".rpt" -type "double3" 0 -1.9385047956356253e-017 -1.9385047956356247e-017 ;
	setAttr ".sp" -type "double3" 0 2.6611932917551644e-033 2.7755575615628914e-017 ;
	setAttr ".spt" -type "double3" 0 0 -8.3705276592726684e-018 ;
createNode mesh -n "building_1_doorShape" -p "building_1";
	setAttr -k off ".v";
	setAttr -s 42 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_5" -p "skyline";
	setAttr ".t" -type "double3" 0.69819947725087417 -0.13766470255102764 3.0567704490064901e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.63768121735647332 1 0.71963668871237596 ;
	setAttr ".rp" -type "double3" 0 -1.0401268099740536e-033 0 ;
	setAttr ".rpt" -type "double3" 0 1.0401268099740538e-033 -1.0401268099740538e-033 ;
	setAttr ".sp" -type "double3" 0 -1.0401268099740536e-033 0 ;
createNode mesh -n "building_5_doorShape" -p "building_5";
	setAttr -k off ".v";
	setAttr -s 36 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_6" -p "skyline";
	setAttr ".t" -type "double3" -0.075849299970129902 -0.015641963114484785 3.4732135200077055e-018 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.63768121735647332 1 0.95787057539705522 ;
	setAttr ".rp" -type "double3" -8.8496046235019475e-018 -7.6697787896710018e-035 
		0 ;
	setAttr ".rpt" -type "double3" 0 7.6697787896710039e-035 -7.6697787896710039e-035 ;
	setAttr ".sp" -type "double3" -1.3877787807814457e-017 -7.6697787896710018e-035 
		0 ;
	setAttr ".spt" -type "double3" 5.02818318431251e-018 0 0 ;
createNode mesh -n "building_6_doorShape" -p "building_6";
	setAttr -k off ".v";
	setAttr -s 30 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_7" -p "skyline";
	setAttr ".t" -type "double3" -0.77348912490238586 -0.14792045513038377 3.2844939019756878e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.46312748272667464 1 0.6984199580224415 ;
	setAttr ".rp" -type "double3" 0 0 -1.9385047956356247e-017 ;
	setAttr ".rpt" -type "double3" 0 1.938504795635625e-017 1.938504795635625e-017 ;
	setAttr ".sp" -type "double3" 0 0 -2.7755575615628914e-017 ;
	setAttr ".spt" -type "double3" 0 0 8.3705276592726684e-018 ;
createNode mesh -n "building_7_doorShape" -p "building_7";
	setAttr -k off ".v";
	setAttr -s 24 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_8" -p "skyline";
	setAttr ".t" -type "double3" -1.4759579321745937 -0.015641963114484788 3.4732135200077063e-018 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.63768121735647332 1 0.95787057539705522 ;
	setAttr ".rp" -type "double3" -2.8318734795206232e-016 -7.6697787896710018e-035 
		0 ;
	setAttr ".rpt" -type "double3" 0 7.6697787896710039e-035 -7.6697787896710039e-035 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 -7.6697787896710018e-035 
		0 ;
	setAttr ".spt" -type "double3" 1.6090186189800032e-016 0 0 ;
createNode mesh -n "building_8_doorShape" -p "building_8";
	setAttr -k off ".v";
	setAttr -s 18 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_10" -p "skyline";
	setAttr ".t" -type "double3" -2.9243426300299582 0.07353881900805305 -0.039266661167924509 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1 1.1421159731655117 ;
	setAttr ".rp" -type "double3" 4.4408920985006262e-016 -6.9388939039072284e-018 0 ;
	setAttr ".rpt" -type "double3" 0 6.9388939039072299e-018 -6.9388939039072299e-018 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-016 -6.9388939039072284e-018 0 ;
createNode mesh -n "building_10_doorShape" -p "building_10";
	setAttr -k off ".v";
	setAttr -s 8 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_11" -p "skyline";
	setAttr ".t" -type "double3" -3.8988024610622629 -0.13766470255102767 3.0567704490064901e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.63768121735647332 1 0.71963668871237596 ;
	setAttr ".rp" -type "double3" 0 1.3609074006970163e-033 0 ;
	setAttr ".rpt" -type "double3" 0 -1.3609074006970166e-033 1.3609074006970166e-033 ;
	setAttr ".sp" -type "double3" 0 1.3609074006970163e-033 0 ;
createNode mesh -n "building_11_doorShape" -p "building_11";
	setAttr -k off ".v";
	setAttr -s 12 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_0_window_0" -p "skyline";
	setAttr ".t" -type "double3" 4.8638141254482186 -0.19142210526314529 -0.012350652610127352 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818595 0.091455601190818595 ;
createNode transform -n "building_0_window_1" -p "skyline";
	setAttr ".t" -type "double3" 4.8678965506721266 -0.013434846458375629 -0.012350652610127364 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818608 0.091455601190818608 ;
createNode transform -n "building_0_window_2" -p "skyline";
	setAttr ".t" -type "double3" 4.8678924494361162 0.14597994995560518 -0.012350652610127378 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818622 0.091455601190818622 ;
createNode transform -n "building_0_window_3" -p "skyline";
	setAttr ".t" -type "double3" 4.6308359256010672 -0.19142210526314529 -0.012350652610127352 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818595 0.091455601190818595 ;
createNode transform -n "building_0_window_4" -p "skyline";
	setAttr ".t" -type "double3" 4.6349183508249752 -0.013434846458375643 -0.012350652610127362 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818622 0.091455601190818622 ;
createNode transform -n "building_0_window_5" -p "skyline";
	setAttr ".t" -type "double3" 4.6349142495889639 0.14597994995560518 -0.012350652610127376 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818636 0.091455601190818636 ;
createNode transform -n "building_0_door" -p "skyline";
	setAttr ".t" -type "double3" 4.739716337610556 -0.44537402917678631 -0.012350652610127244 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818636 0.091455601190818636 ;
createNode mesh -n "building_0_doorShape" -p "building_0_door";
	setAttr -k off ".v";
	setAttr -s 7 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[2]" -type "float3" -0.099814773 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.099814773 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.5879354e-009 0 0 ;
	setAttr ".pt[12]" -type "float3" -6.6174449e-024 0 0 ;
	setAttr ".pt[13]" -type "float3" -5.5879354e-009 0 0 ;
	setAttr ".pt[16]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".pt[17]" -type "float3" 1.323489e-023 0 0 ;
	setAttr ".pt[18]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[20]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_12_window_0" -p "skyline";
	setAttr ".t" -type "double3" -4.441693926029215 0.25939612733203687 -5.7597510612525219e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_12_window_1" -p "skyline";
	setAttr ".t" -type "double3" -4.7673196666491346 0.25939612733203687 -5.7597510612525219e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_12_window_2" -p "skyline";
	setAttr ".t" -type "double3" -4.7673196666491346 -0.08218841522789902 1.8249494188693286e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_12_window_3" -p "skyline";
	setAttr ".t" -type "double3" -4.4397512507230026 -0.082188415227898978 1.824949418869328e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_12_door" -p "skyline";
	setAttr ".t" -type "double3" -4.5941134058232302 -0.43830202094867571 9.7322599079391407e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.068966794870880074 0.10815246394865433 0.10359606287310688 ;
createNode transform -n "building_9_window_0" -p "skyline";
	setAttr ".t" -type "double3" -1.9853338116054422 -0.32322899234204466 -0.034512952196834056 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818595 0.052557932882526755 ;
createNode transform -n "building_9_window_1" -p "skyline";
	setAttr ".t" -type "double3" -1.9812513863815338 -0.22094283074667226 -0.034512952196834049 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818608 0.052557932882526762 ;
createNode transform -n "building_9_window_2" -p "skyline";
	setAttr ".t" -type "double3" -1.981255487617545 -0.12932993813743529 -0.034512952196834049 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818622 0.052557932882526769 ;
createNode transform -n "building_9_window_3" -p "skyline";
	setAttr ".t" -type "double3" -2.218312011452594 -0.32322899234204466 -0.034512952196834056 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818595 0.052557932882526755 ;
createNode transform -n "building_9_window_4" -p "skyline";
	setAttr ".t" -type "double3" -2.2142295862286852 -0.22094283074667229 -0.034512952196834049 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818622 0.052557932882526769 ;
createNode transform -n "building_9_window_5" -p "skyline";
	setAttr ".t" -type "double3" -2.2142336874646964 -0.12932993813743529 -0.034512952196834049 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818636 0.052557932882526776 ;
createNode transform -n "building_9_door" -p "skyline";
	setAttr ".t" -type "double3" -2.1094315994431048 -0.46917071705492791 -0.034512952196833972 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.0436954529838018 0.091455601190818636 0.052557932882526776 ;
createNode mesh -n "building_9_doorShape" -p "building_9_door";
	setAttr -k off ".v";
	setAttr -s 7 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[2]" -type "float3" -0.099814773 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.099814773 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.5879354e-009 0 0 ;
	setAttr ".pt[12]" -type "float3" -6.6174449e-024 0 0 ;
	setAttr ".pt[13]" -type "float3" -5.5879354e-009 0 0 ;
	setAttr ".pt[16]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".pt[17]" -type "float3" 1.323489e-023 0 0 ;
	setAttr ".pt[18]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[20]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_2_window_0" -p "skyline";
	setAttr ".t" -type "double3" 3.7401642966071327 0.25939612733203687 -5.7597510612525206e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_2_window_1" -p "skyline";
	setAttr ".t" -type "double3" 3.414538555987213 0.25939612733203687 -5.7597510612525206e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_2_window_2" -p "skyline";
	setAttr ".t" -type "double3" 3.414538555987213 -0.082188415227899034 1.824949418869329e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_2_window_3" -p "skyline";
	setAttr ".t" -type "double3" 3.7421069719133446 -0.082188415227898992 1.8249494188693283e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_2_door" -p "skyline";
	setAttr ".t" -type "double3" 3.5877448168131179 -0.43830202094867571 9.7322599079391407e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.068966794870880074 0.10815246394865433 0.10359606287310688 ;
createNode transform -n "building_3_window_0" -p "skyline";
	setAttr ".t" -type "double3" 3.0473255843829303 -0.10776008422482578 -0.039266661167924523 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.080082992023588415 ;
createNode transform -n "building_3_window_1" -p "skyline";
	setAttr ".t" -type "double3" 3.0473255843829299 -0.26251489168867592 -0.039266661167924516 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.080082992023588415 ;
createNode transform -n "building_3_window_2" -p "skyline";
	setAttr ".t" -type "double3" 2.7345007728683068 -0.10776008422482578 -0.039266661167924523 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.080082992023588415 ;
createNode transform -n "building_3_window_3" -p "skyline";
	setAttr ".t" -type "double3" 2.7345007728683068 -0.26251489168867592 -0.039266661167924516 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.080082992023588415 ;
createNode transform -n "building_3_window_4" -p "skyline";
	setAttr ".t" -type "double3" 2.4022087959810965 -0.10776008422482575 -0.03926666116792453 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.080082992023588415 ;
createNode transform -n "building_3_window_5" -p "skyline";
	setAttr ".t" -type "double3" 2.4022087959810965 -0.26251489168867581 -0.039266661167924523 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.080082992023588415 ;
createNode transform -n "building_3_door" -p "skyline";
	setAttr ".t" -type "double3" 2.7345007728683068 -0.45029880516962462 -0.039266661167924509 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.10446859631170936 0.15253217737414898 0.080082992023588428 ;
createNode transform -n "building_4_window_0" -p "skyline";
	setAttr ".t" -type "double3" 1.9510550678929748 0.35042542735942295 -0.039266661167924558 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_4_window_1" -p "skyline";
	setAttr ".t" -type "double3" 1.9510550678929748 0.013777818717515787 -0.039266661167924509 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_4_window_2" -p "skyline";
	setAttr ".t" -type "double3" 1.6382302563783515 0.35042542735942295 -0.039266661167924558 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_4_window_3" -p "skyline";
	setAttr ".t" -type "double3" 1.6382302563783515 0.013777818717515787 -0.039266661167924509 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_4_window_4" -p "skyline";
	setAttr ".t" -type "double3" 1.3059382794911412 0.350425427359423 -0.039266661167924564 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_4_window_5" -p "skyline";
	setAttr ".t" -type "double3" 1.3059382794911412 0.013777818717515974 -0.039266661167924516 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_4_door" -p "skyline";
	setAttr ".t" -type "double3" 1.6382302563783515 -0.39472002668575118 -0.039266661167924453 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.10446859631170936 0.15253217737414898 0.17420943620073076 ;
createNode transform -n "building_1_window_0" -p "skyline";
	setAttr ".t" -type "double3" 4.3045118509828075 0.052620303212262187 -1.1684054437802119e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.086786384678927964 0.18739199878178422 0.13087831192291516 ;
createNode transform -n "building_1_window_1" -p "skyline";
	setAttr ".t" -type "double3" 4.0680202851978144 0.052620303212262187 -1.1684054437802119e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.086786384678927964 0.18739199878178422 0.13087831192291516 ;
createNode transform -n "building_1_window_2" -p "skyline";
	setAttr ".t" -type "double3" 4.0680202851978144 -0.19644201063628025 4.3618888642411634e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.086786384678927964 0.18739199878178422 0.13087831192291516 ;
createNode transform -n "building_1_window_3" -p "skyline";
	setAttr ".t" -type "double3" 4.3059227539541238 -0.19644201063628025 4.3618888642411634e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.086786384678927964 0.18739199878178422 0.13087831192291516 ;
createNode transform -n "building_1_door" -p "skyline";
	setAttr ".t" -type "double3" 4.1938144553653807 -0.45609801839664743 1.0127410430197312e-016 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.050088378379227777 0.10815246394865433 0.075535839331042839 ;
createNode transform -n "building_5_window_0" -p "skyline";
	setAttr ".t" -type "double3" 0.85833171713983536 0.068968120047855491 -1.5313998968448173e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.13485415749451682 ;
createNode transform -n "building_5_window_1" -p "skyline";
	setAttr ".t" -type "double3" 0.53270597651991536 0.068968120047855491 -1.5313998968448173e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.13485415749451682 ;
createNode transform -n "building_5_window_2" -p "skyline";
	setAttr ".t" -type "double3" 0.53270597651991536 -0.18766025484639187 4.16689471474978e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.13485415749451682 ;
createNode transform -n "building_5_window_3" -p "skyline";
	setAttr ".t" -type "double3" 0.86027439244604742 -0.18766025484639184 4.1668947147497794e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.13485415749451682 ;
createNode transform -n "building_5_door" -p "skyline";
	setAttr ".t" -type "double3" 0.70591223734582031 -0.45520414084591188 1.0107562361436874e-016 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.068966794870880074 0.10815246394865433 0.077830481032094279 ;
createNode transform -n "building_6_window_0" -p "skyline";
	setAttr ".t" -type "double3" 0.084282939918831318 0.25939612733203687 -5.7597510612525219e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_6_window_1" -p "skyline";
	setAttr ".t" -type "double3" -0.24134280070108866 0.25939612733203687 -5.7597510612525219e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_6_window_2" -p "skyline";
	setAttr ".t" -type "double3" -0.24134280070108866 -0.08218841522789902 1.8249494188693286e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_6_window_3" -p "skyline";
	setAttr ".t" -type "double3" 0.086225615225043295 -0.082188415227898992 1.824949418869328e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_6_door" -p "skyline";
	setAttr ".t" -type "double3" -0.068136539875183755 -0.43830202094867571 9.7322599079391395e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.068966794870880074 0.10815246394865433 0.10359606287310688 ;
createNode transform -n "building_7_window_0" -p "skyline";
	setAttr ".t" -type "double3" -0.65719019819007352 0.052620303212262243 -1.1684054437802107e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.086786384678927964 0.18739199878178422 0.13087831192291516 ;
createNode transform -n "building_7_window_1" -p "skyline";
	setAttr ".t" -type "double3" -0.89368176397506616 0.052620303212262243 -1.1684054437802107e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.086786384678927964 0.18739199878178422 0.13087831192291516 ;
createNode transform -n "building_7_window_2" -p "skyline";
	setAttr ".t" -type "double3" -0.89368176397506616 -0.1964420106362802 4.3618888642411646e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.086786384678927964 0.18739199878178422 0.13087831192291516 ;
createNode transform -n "building_7_window_3" -p "skyline";
	setAttr ".t" -type "double3" -0.65577929521875666 -0.1964420106362802 4.3618888642411646e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.086786384678927964 0.18739199878178422 0.13087831192291516 ;
createNode transform -n "building_7_door" -p "skyline";
	setAttr ".t" -type "double3" -0.76788759380749971 -0.45609801839664738 1.0127410430197314e-016 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.050088378379227777 0.10815246394865433 0.075535839331042839 ;
createNode transform -n "building_8_window_0" -p "skyline";
	setAttr ".t" -type "double3" -1.3158256922856324 0.25939612733203687 -5.7597510612525219e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_8_window_1" -p "skyline";
	setAttr ".t" -type "double3" -1.6414514329055525 0.25939612733203687 -5.7597510612525219e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_8_window_2" -p "skyline";
	setAttr ".t" -type "double3" -1.6414514329055525 -0.082188415227899034 1.8249494188693286e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_8_window_3" -p "skyline";
	setAttr ".t" -type "double3" -1.3138830169794204 -0.082188415227898992 1.824949418869328e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.17949728169791196 ;
createNode transform -n "building_8_door" -p "skyline";
	setAttr ".t" -type "double3" -1.4682451720796477 -0.43830202094867571 9.7322599079391407e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.068966794870880074 0.10815246394865433 0.10359606287310688 ;
createNode transform -n "building_10_window_0" -p "skyline";
	setAttr ".t" -type "double3" -2.6047892889136826 0.35042542735942295 -0.039266661167924564 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_10_window_1" -p "skyline";
	setAttr ".t" -type "double3" -2.6047892889136826 0.013777818717515787 -0.039266661167924516 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_10_window_2" -p "skyline";
	setAttr ".t" -type "double3" -2.9176141004283056 0.35042542735942295 -0.039266661167924564 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_10_window_3" -p "skyline";
	setAttr ".t" -type "double3" -2.9176141004283056 0.013777818717515787 -0.039266661167924516 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_10_window_4" -p "skyline";
	setAttr ".t" -type "double3" -3.249906077315516 0.350425427359423 -0.039266661167924571 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_10_window_5" -p "skyline";
	setAttr ".t" -type "double3" -3.249906077315516 0.013777818717515974 -0.039266661167924523 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.15253217737414893 0.15253217737414895 0.17420943620073073 ;
createNode transform -n "building_10_door" -p "skyline";
	setAttr ".t" -type "double3" -2.9176141004283056 -0.39472002668575118 -0.03926666116792446 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.10446859631170936 0.15253217737414898 0.17420943620073076 ;
createNode transform -n "building_11_window_0" -p "skyline";
	setAttr ".t" -type "double3" -3.7386702211733018 0.068968120047855463 -1.5313998968448173e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.13485415749451682 ;
createNode transform -n "building_11_window_1" -p "skyline";
	setAttr ".t" -type "double3" -4.0642959617932215 0.068968120047855463 -1.5313998968448173e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.13485415749451682 ;
createNode transform -n "building_11_window_2" -p "skyline";
	setAttr ".t" -type "double3" -4.0642959617932215 -0.1876602548463919 4.16689471474978e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.13485415749451682 ;
createNode transform -n "building_11_window_3" -p "skyline";
	setAttr ".t" -type "double3" -3.7367275458670899 -0.18766025484639187 4.1668947147497794e-017 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.11949635790603114 0.18739199878178422 0.13485415749451682 ;
createNode transform -n "building_11_door" -p "skyline";
	setAttr ".t" -type "double3" -3.8910897009673167 -0.45520414084591188 1.0107562361436874e-016 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.068966794870880074 0.10815246394865433 0.077830481032094279 ;
parent -s -nc -r -add "|skyline|building_0|building_0_window_Shape0" "building_0_window_0" ;
parent -s -nc -r -add "|skyline|building_0|building_0_window_Shape0" "building_0_window_1" ;
parent -s -nc -r -add "|skyline|building_0|building_0_window_Shape0" "building_0_window_2" ;
parent -s -nc -r -add "|skyline|building_0|building_0_window_Shape0" "building_0_window_3" ;
parent -s -nc -r -add "|skyline|building_0|building_0_window_Shape0" "building_0_window_4" ;
parent -s -nc -r -add "|skyline|building_0|building_0_window_Shape0" "building_0_window_5" ;
parent -s -nc -r -add "|skyline|building_12|building_12_doorShape" "building_12_window_0" ;
parent -s -nc -r -add "|skyline|building_12|building_12_doorShape" "building_12_window_1" ;
parent -s -nc -r -add "|skyline|building_12|building_12_doorShape" "building_12_window_2" ;
parent -s -nc -r -add "|skyline|building_12|building_12_doorShape" "building_12_window_3" ;
parent -s -nc -r -add "|skyline|building_12|building_12_doorShape" "building_12_door" ;
parent -s -nc -r -add "|skyline|building_9|building_9_window_Shape0" "building_9_window_0" ;
parent -s -nc -r -add "|skyline|building_9|building_9_window_Shape0" "building_9_window_1" ;
parent -s -nc -r -add "|skyline|building_9|building_9_window_Shape0" "building_9_window_2" ;
parent -s -nc -r -add "|skyline|building_9|building_9_window_Shape0" "building_9_window_3" ;
parent -s -nc -r -add "|skyline|building_9|building_9_window_Shape0" "building_9_window_4" ;
parent -s -nc -r -add "|skyline|building_9|building_9_window_Shape0" "building_9_window_5" ;
parent -s -nc -r -add "|skyline|building_2|building_2_doorShape" "building_2_window_0" ;
parent -s -nc -r -add "|skyline|building_2|building_2_doorShape" "building_2_window_1" ;
parent -s -nc -r -add "|skyline|building_2|building_2_doorShape" "building_2_window_2" ;
parent -s -nc -r -add "|skyline|building_2|building_2_doorShape" "building_2_window_3" ;
parent -s -nc -r -add "|skyline|building_2|building_2_doorShape" "building_2_door" ;
parent -s -nc -r -add "|skyline|building_3|building_3_doorShape" "building_3_window_0" ;
parent -s -nc -r -add "|skyline|building_3|building_3_doorShape" "building_3_window_1" ;
parent -s -nc -r -add "|skyline|building_3|building_3_doorShape" "building_3_window_2" ;
parent -s -nc -r -add "|skyline|building_3|building_3_doorShape" "building_3_window_3" ;
parent -s -nc -r -add "|skyline|building_3|building_3_doorShape" "building_3_window_4" ;
parent -s -nc -r -add "|skyline|building_3|building_3_doorShape" "building_3_window_5" ;
parent -s -nc -r -add "|skyline|building_3|building_3_doorShape" "building_3_door" ;
parent -s -nc -r -add "|skyline|building_4|building_4_doorShape" "building_4_window_0" ;
parent -s -nc -r -add "|skyline|building_4|building_4_doorShape" "building_4_window_1" ;
parent -s -nc -r -add "|skyline|building_4|building_4_doorShape" "building_4_window_2" ;
parent -s -nc -r -add "|skyline|building_4|building_4_doorShape" "building_4_window_3" ;
parent -s -nc -r -add "|skyline|building_4|building_4_doorShape" "building_4_window_4" ;
parent -s -nc -r -add "|skyline|building_4|building_4_doorShape" "building_4_window_5" ;
parent -s -nc -r -add "|skyline|building_4|building_4_doorShape" "building_4_door" ;
parent -s -nc -r -add "|skyline|building_1|building_1_doorShape" "building_1_window_0" ;
parent -s -nc -r -add "|skyline|building_1|building_1_doorShape" "building_1_window_1" ;
parent -s -nc -r -add "|skyline|building_1|building_1_doorShape" "building_1_window_2" ;
parent -s -nc -r -add "|skyline|building_1|building_1_doorShape" "building_1_window_3" ;
parent -s -nc -r -add "|skyline|building_1|building_1_doorShape" "building_1_door" ;
parent -s -nc -r -add "|skyline|building_5|building_5_doorShape" "building_5_window_0" ;
parent -s -nc -r -add "|skyline|building_5|building_5_doorShape" "building_5_window_1" ;
parent -s -nc -r -add "|skyline|building_5|building_5_doorShape" "building_5_window_2" ;
parent -s -nc -r -add "|skyline|building_5|building_5_doorShape" "building_5_window_3" ;
parent -s -nc -r -add "|skyline|building_5|building_5_doorShape" "building_5_door" ;
parent -s -nc -r -add "|skyline|building_6|building_6_doorShape" "building_6_window_0" ;
parent -s -nc -r -add "|skyline|building_6|building_6_doorShape" "building_6_window_1" ;
parent -s -nc -r -add "|skyline|building_6|building_6_doorShape" "building_6_window_2" ;
parent -s -nc -r -add "|skyline|building_6|building_6_doorShape" "building_6_window_3" ;
parent -s -nc -r -add "|skyline|building_6|building_6_doorShape" "building_6_door" ;
parent -s -nc -r -add "|skyline|building_7|building_7_doorShape" "building_7_window_0" ;
parent -s -nc -r -add "|skyline|building_7|building_7_doorShape" "building_7_window_1" ;
parent -s -nc -r -add "|skyline|building_7|building_7_doorShape" "building_7_window_2" ;
parent -s -nc -r -add "|skyline|building_7|building_7_doorShape" "building_7_window_3" ;
parent -s -nc -r -add "|skyline|building_7|building_7_doorShape" "building_7_door" ;
parent -s -nc -r -add "|skyline|building_8|building_8_doorShape" "building_8_window_0" ;
parent -s -nc -r -add "|skyline|building_8|building_8_doorShape" "building_8_window_1" ;
parent -s -nc -r -add "|skyline|building_8|building_8_doorShape" "building_8_window_2" ;
parent -s -nc -r -add "|skyline|building_8|building_8_doorShape" "building_8_window_3" ;
parent -s -nc -r -add "|skyline|building_8|building_8_doorShape" "building_8_door" ;
parent -s -nc -r -add "|skyline|building_10|building_10_doorShape" "building_10_window_0" ;
parent -s -nc -r -add "|skyline|building_10|building_10_doorShape" "building_10_window_1" ;
parent -s -nc -r -add "|skyline|building_10|building_10_doorShape" "building_10_window_2" ;
parent -s -nc -r -add "|skyline|building_10|building_10_doorShape" "building_10_window_3" ;
parent -s -nc -r -add "|skyline|building_10|building_10_doorShape" "building_10_window_4" ;
parent -s -nc -r -add "|skyline|building_10|building_10_doorShape" "building_10_window_5" ;
parent -s -nc -r -add "|skyline|building_10|building_10_doorShape" "building_10_door" ;
parent -s -nc -r -add "|skyline|building_11|building_11_doorShape" "building_11_window_0" ;
parent -s -nc -r -add "|skyline|building_11|building_11_doorShape" "building_11_window_1" ;
parent -s -nc -r -add "|skyline|building_11|building_11_doorShape" "building_11_window_2" ;
parent -s -nc -r -add "|skyline|building_11|building_11_doorShape" "building_11_window_3" ;
parent -s -nc -r -add "|skyline|building_11|building_11_doorShape" "building_11_door" ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyPlane -n "polyPlane1";
	setAttr ".cuv" 2;
createNode polyPlane -n "polyPlane2";
	setAttr ".cuv" 2;
createNode polyPlane -n "polyPlane3";
	setAttr ".cuv" 2;
createNode polyPlane -n "polyPlane4";
	setAttr ".cuv" 2;
createNode polyPlane -n "polyPlane5";
	setAttr ".cuv" 2;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.204446\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"building_11\" \n"
		+ "                -opaqueContainers 0\n                -dropTargetNode \"skyline\" \n                -dropNode \"building_11_door\" \n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.204446\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"building_11\" \n                -opaqueContainers 0\n                -dropTargetNode \"skyline\" \n                -dropNode \"building_11_door\" \n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane6";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyPlane -n "polyPlane7";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 55 ".tk[66:120]" -type "float3"  0 -2.0476918e-018 -0.011073276
		 0 -2.0476918e-018 -0.011073276 0 -2.339066e-018 -0.009894005 0 -3.2598886e-018 -0.006167185
		 0 -3.7262634e-018 -0.0042796358 0 -3.7262634e-018 -0.0042796358 0 -3.7262634e-018
		 -0.0042796358 0 -3.7262634e-018 -0.0042796358 0 -3.2598886e-018 -0.006167185 0 -2.339066e-018
		 -0.009894005 0 -2.0476918e-018 -0.011073276 0 -8.2635054e-018 -0.044686455 0 -1.0055658e-017
		 -0.03743311 0 -1.390099e-017 -0.021870008 0 -1.7529534e-017 -0.0071842968 0 -1.8992735e-017
		 -0.0012623381 0 -1.8992735e-017 -0.0012623381 0 -1.8992735e-017 -0.0012623381 0 -1.8992735e-017
		 -0.0012623381 0 -1.7529534e-017 -0.0071842968 0 -1.390099e-017 -0.021870008 0 -1.0055658e-017
		 -0.03743311 0 -1.7472741e-017 -0.08250352 0 -2.2828112e-017 -0.060828868 0 -3.0114301e-017
		 -0.03133963 0 -3.6226362e-017 -0.0066024652 0 -3.8593968e-017 0.0029798881 0 -3.8593968e-017
		 0.0029798881 0 -3.8593968e-017 0.0029798881 0 -3.8593968e-017 0.0029798881 0 -3.6226362e-017
		 -0.0066024652 0 -3.0114301e-017 -0.03133963 0 -2.2828112e-017 -0.060828868 0 -2.4927453e-017
		 -0.11393578 0 -3.1625891e-017 -0.086825415 0 -4.0184328e-017 -0.052187014 0 -4.7205699e-017
		 -0.0237696 0 -4.9903035e-017 -0.012852727 0 -4.9903035e-017 -0.012852727 0 -4.9903035e-017
		 -0.012852727 0 -4.9903035e-017 -0.012852727 0 -4.7205699e-017 -0.0237696 0 -4.0184328e-017
		 -0.052187014 0 -3.1625891e-017 -0.086825415 0 -2.7430449e-017 -0.12747124 0 -3.4128886e-017
		 -0.10036086 0 -4.2687324e-017 -0.06572248 0 -4.9708694e-017 -0.037305053 0 -5.2406031e-017
		 -0.026388176 0 -5.2406031e-017 -0.026388176 0 -5.2406031e-017 -0.026388176 0 -5.2406031e-017
		 -0.026388176 0 -4.9708694e-017 -0.037305053 0 -4.2687324e-017 -0.06572248 0 -3.4128886e-017
		 -0.10036086;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 4.6512015340325013 0 0 1;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 55 ".tk[66:120]" -type "float3"  0 5.2318657e-019 -0.0015277996
		 0 8.19741e-019 -0.0023937926 0 5.2318657e-019 -0.0015277996 0 -2.3745838e-019 -0.0081841499
		 0 -1.089611e-018 -0.025571365 0 -1.4511184e-018 -0.034055337 0 -1.0178572e-019 -0.027914114
		 0 1.4925408e-018 -0.012232771 0 2.0520283e-018 -0.0048666373 0 2.3417249e-018 -0.0055536898
		 0 3.118649e-018 -0.0073962593 0 4.9168174e-018 -0.014358005 0 5.8976795e-018 -0.017222296
		 0 5.4157624e-018 -0.037059274 0 3.8010926e-018 -0.091729827 0 8.2608935e-019 -0.14012825
		 0 2.9875884e-018 -0.16288942 0 9.8235349e-018 -0.15604405 0 1.3743002e-017 -0.11375554
		 0 1.2160425e-017 -0.05378129 0 1.0944183e-017 -0.029748686 0 1.2747777e-017 -0.033392806
		 0 1.2503774e-017 -0.038995434 0 1.5292103e-017 -0.06031058 0 1.7134684e-017 -0.14335586
		 0 1.4130088e-017 -0.25045893 0 6.2035163e-018 -0.31304201 0 5.7897899e-018 -0.33390686
		 0 1.5697557e-017 -0.32149959 0 2.8057937e-017 -0.269692 0 2.883998e-017 -0.17192124
		 0 2.3413595e-017 -0.084695406 0 2.5573008e-017 -0.078009784 0 2.1203056e-017 -0.074030533
		 0 2.5919604e-017 -0.12782706 0 2.4713111e-017 -0.24046852 0 9.8441185e-018 -0.3309592
		 0 -6.8502024e-018 -0.38139373 0 -9.2341538e-018 -0.40235454 0 4.5699458e-018 -0.39015803
		 0 2.4443326e-017 -0.34301174 0 3.5494042e-017 -0.25482395 0 3.492116e-017 -0.15093772
		 0 3.6316716e-017 -0.11945651 0 2.6898904e-017 -0.10054477 0 3.0703369e-017 -0.16300024
		 0 2.1491719e-017 -0.25563896 0 4.6878373e-019 -0.33344418 0 -1.4980228e-017 -0.39538881
		 0 -1.8982139e-017 -0.41451204 0 -9.748321e-018 -0.38688129 0 1.4713037e-017 -0.33902487
		 0 3.3688681e-017 -0.26548186 0 3.9349313e-017 -0.17721356 0 4.0537429e-017 -0.1374172;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 2.5167884674722183 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 2.8967691610889501 0 0 1;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 109 ".tk";
	setAttr ".tk[0]" -type "float3" 8.9406967e-008 0 0 ;
	setAttr ".tk[1]" -type "float3" 2.3841858e-007 0 0 ;
	setAttr ".tk[2]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[3]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[4]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[5]" -type "float3" -4.4703484e-008 0 0 ;
	setAttr ".tk[6]" -type "float3" 4.4703484e-008 0 0 ;
	setAttr ".tk[7]" -type "float3" -3.7252903e-008 0 0 ;
	setAttr ".tk[8]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".tk[11]" -type "float3" 8.9406967e-008 0 0 ;
	setAttr ".tk[12]" -type "float3" 2.3841858e-007 0 0 ;
	setAttr ".tk[13]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[14]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[15]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[16]" -type "float3" -4.4703484e-008 0 0 ;
	setAttr ".tk[17]" -type "float3" 4.4703484e-008 0 0 ;
	setAttr ".tk[18]" -type "float3" -3.7252903e-008 0 0 ;
	setAttr ".tk[19]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".tk[22]" -type "float3" 8.9406967e-008 0 0 ;
	setAttr ".tk[23]" -type "float3" 2.3841858e-007 0 0 ;
	setAttr ".tk[24]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[25]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[26]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[27]" -type "float3" -4.4703484e-008 0 0 ;
	setAttr ".tk[28]" -type "float3" 4.4703484e-008 0 0 ;
	setAttr ".tk[29]" -type "float3" -3.7252903e-008 0 0 ;
	setAttr ".tk[30]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".tk[33]" -type "float3" 8.9406967e-008 0 0 ;
	setAttr ".tk[34]" -type "float3" 2.3841858e-007 0 0 ;
	setAttr ".tk[35]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[36]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[37]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[38]" -type "float3" -4.4703484e-008 0 0 ;
	setAttr ".tk[39]" -type "float3" 4.4703484e-008 0 0 ;
	setAttr ".tk[40]" -type "float3" -3.7252903e-008 0 0 ;
	setAttr ".tk[41]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".tk[44]" -type "float3" 8.9406967e-008 0 0 ;
	setAttr ".tk[45]" -type "float3" 2.3841858e-007 0 0 ;
	setAttr ".tk[46]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[47]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[48]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[49]" -type "float3" -4.4703484e-008 0 0 ;
	setAttr ".tk[50]" -type "float3" 4.4703484e-008 0 0 ;
	setAttr ".tk[51]" -type "float3" -3.7252903e-008 0 0 ;
	setAttr ".tk[52]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".tk[55]" -type "float3" 8.9406967e-008 0 0 ;
	setAttr ".tk[56]" -type "float3" 2.3841858e-007 0 0 ;
	setAttr ".tk[57]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[58]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[59]" -type "float3" 1.7881393e-007 0 0 ;
	setAttr ".tk[60]" -type "float3" -4.4703484e-008 0 0 ;
	setAttr ".tk[61]" -type "float3" 4.4703484e-008 0 0 ;
	setAttr ".tk[62]" -type "float3" -3.7252903e-008 0 0 ;
	setAttr ".tk[63]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".tk[66]" -type "float3" 8.9406967e-008 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[67]" -type "float3" 2.3841858e-007 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[68]" -type "float3" 1.7881393e-007 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[69]" -type "float3" 1.7881393e-007 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[70]" -type "float3" 1.7881393e-007 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[71]" -type "float3" -4.4703484e-008 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[72]" -type "float3" 4.4703484e-008 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[73]" -type "float3" -3.7252903e-008 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[74]" -type "float3" -1.1641532e-010 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[75]" -type "float3" 0 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[76]" -type "float3" 0 1.639838e-018 -0.0073851738 ;
	setAttr ".tk[77]" -type "float3" 8.9406967e-008 9.3821001e-018 -0.039895728 ;
	setAttr ".tk[78]" -type "float3" 2.3841858e-007 8.6001869e-018 -0.038135417 ;
	setAttr ".tk[79]" -type "float3" 1.7881393e-007 7.3169874e-018 -0.047414057 ;
	setAttr ".tk[80]" -type "float3" 1.7881393e-007 6.6774552e-018 -0.062734008 ;
	setAttr ".tk[81]" -type "float3" 1.7881393e-007 6.6915226e-018 -0.070475869 ;
	setAttr ".tk[82]" -type "float3" -4.4703484e-008 6.6774552e-018 -0.062734008 ;
	setAttr ".tk[83]" -type "float3" -5.9604645e-008 6.6451513e-018 -0.044961307 ;
	setAttr ".tk[84]" -type "float3" -7.4505806e-009 6.6196072e-018 -0.030904673 ;
	setAttr ".tk[85]" -type "float3" -1.8626451e-009 6.6176045e-018 -0.029803041 ;
	setAttr ".tk[86]" -type "float3" 0 6.6176045e-018 -0.029803041 ;
	setAttr ".tk[87]" -type "float3" 0 6.6176045e-018 -0.029803041 ;
	setAttr ".tk[88]" -type "float3" 8.9406967e-008 2.4426223e-017 -0.10218001 ;
	setAttr ".tk[89]" -type "float3" 2.3841858e-007 2.4354528e-017 -0.13013826 ;
	setAttr ".tk[90]" -type "float3" 1.7881393e-007 2.1172037e-017 -0.16538298 ;
	setAttr ".tk[91]" -type "float3" 1.7881393e-007 1.5920547e-017 -0.18793815 ;
	setAttr ".tk[92]" -type "float3" 1.7881393e-007 1.3225031e-017 -0.19460644 ;
	setAttr ".tk[93]" -type "float3" 2.682209e-007 1.3194826e-017 -0.17798702 ;
	setAttr ".tk[94]" -type "float3" 5.9604645e-008 1.3118485e-017 -0.13598089 ;
	setAttr ".tk[95]" -type "float3" -7.4505806e-008 1.3032745e-017 -0.088804424 ;
	setAttr ".tk[96]" -type "float3" 3.7252903e-008 1.2981116e-017 -0.060395949 ;
	setAttr ".tk[97]" -type "float3" 0 1.2977573e-017 -0.058445793 ;
	setAttr ".tk[98]" -type "float3" 0 1.2977573e-017 -0.058445793 ;
	setAttr ".tk[99]" -type "float3" 8.9406967e-008 3.8932285e-017 -0.1720501 ;
	setAttr ".tk[100]" -type "float3" 2.3841858e-007 3.7982608e-017 -0.22211725 ;
	setAttr ".tk[101]" -type "float3" 1.7881393e-007 3.0800868e-017 -0.26700738 ;
	setAttr ".tk[102]" -type "float3" 1.7881393e-007 2.2176433e-017 -0.29467988 ;
	setAttr ".tk[103]" -type "float3" 1.7881393e-007 1.8599724e-017 -0.30446801 ;
	setAttr ".tk[104]" -type "float3" 2.682209e-007 1.8557933e-017 -0.28146932 ;
	setAttr ".tk[105]" -type "float3" 0 1.8449694e-017 -0.22191538 ;
	setAttr ".tk[106]" -type "float3" -2.0861626e-007 1.8319599e-017 -0.15033108 ;
	setAttr ".tk[107]" -type "float3" -2.2351742e-008 1.8221651e-017 -0.096439242 ;
	setAttr ".tk[108]" -type "float3" 9.3132257e-010 1.8195308e-017 -0.081944384 ;
	setAttr ".tk[109]" -type "float3" 0 1.8195308e-017 -0.081944384 ;
	setAttr ".tk[110]" -type "float3" 8.9406967e-008 4.4036005e-017 -0.19832054 ;
	setAttr ".tk[111]" -type "float3" 2.3841858e-007 3.9986007e-017 -0.2452376 ;
	setAttr ".tk[112]" -type "float3" 1.7881393e-007 2.9925849e-017 -0.28734627 ;
	setAttr ".tk[113]" -type "float3" 1.7881393e-007 2.2014012e-017 -0.3231391 ;
	setAttr ".tk[114]" -type "float3" 1.7881393e-007 2.065788e-017 -0.34303477 ;
	setAttr ".tk[115]" -type "float3" 2.682209e-007 2.0612414e-017 -0.31802213 ;
	setAttr ".tk[116]" -type "float3" -1.1920929e-007 2.0494081e-017 -0.25291258 ;
	setAttr ".tk[117]" -type "float3" 5.9604645e-008 2.0349844e-017 -0.17354943 ;
	setAttr ".tk[118]" -type "float3" 0 2.0236959e-017 -0.11143441 ;
	setAttr ".tk[119]" -type "float3" 0 2.0199765e-017 -0.090971656 ;
	setAttr ".tk[120]" -type "float3" 0 2.0199765e-017 -0.090971656 ;
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 1.1946278281942899 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 1.0492013103422595 0 0 1;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 66 ".tk[55:120]" -type "float3"  0 1.9305169e-018 -0.0086942753
		 0 1.9305169e-018 -0.0086942753 0 1.9305169e-018 -0.0086942753 0 1.9305169e-018 -0.0086942753
		 0 1.9305169e-018 -0.0086942753 0 1.9305169e-018 -0.0086942753 0 1.9305169e-018 -0.0086942753
		 0 1.9305169e-018 -0.0086942753 0 1.9305169e-018 -0.0086942753 0 1.9305169e-018 -0.0086942753
		 0 1.9305169e-018 -0.0086942753 0 7.7906558e-018 -0.035085995 0 7.7906558e-018 -0.035085995
		 0 7.7906558e-018 -0.035085995 0 7.7161459e-018 -0.036439393 0 7.7161459e-018 -0.036439393
		 0 7.7161459e-018 -0.036439393 0 7.7161459e-018 -0.036439393 0 7.7161459e-018 -0.036439393
		 0 7.7906558e-018 -0.035085995 0 7.7906558e-018 -0.035085995 0 7.7906558e-018 -0.035085995
		 0 1.4952428e-017 -0.074720412 0 1.3207465e-017 -0.10641641 0 1.1271015e-017 -0.14159116
		 0 1.0453193e-017 -0.15644658 0 1.0453193e-017 -0.15644658 0 1.0453193e-017 -0.15644658
		 0 1.0411229e-017 -0.1562843 0 7.9109527e-018 -0.14661579 0 4.904372e-018 -0.11697149
		 0 7.1770921e-018 -0.079365045 0 1.6946957e-017 -0.061586682 0 1.8137191e-017 -0.15611273
		 0 1.3554401e-017 -0.23935701 0 9.5503312e-018 -0.31208932 0 7.976458e-018 -0.34067792
		 0 7.976458e-018 -0.34067792 0 6.051696e-018 -0.33323491 0 -7.20556e-019 -0.30704677
		 0 -9.6223414e-018 -0.27262372 0 -1.3761506e-017 -0.22194302 0 1.8084462e-018 -0.15843508
		 0 2.254778e-017 -0.10349897 0 1.7608518e-017 -0.21920754 0 1.1238721e-017 -0.334912
		 0 5.9517878e-018 -0.43094683 0 3.9118418e-018 -0.46800157 0 3.9118418e-018 -0.46800157
		 0 1.434788e-018 -0.45842287 0 -6.0857981e-018 -0.42934102 0 -1.5695016e-017 -0.39218232
		 0 -2.1214094e-017 -0.32589707 0 3.8090588e-018 -0.24730715 0 3.6611782e-017 -0.16642897
		 0 1.6554238e-017 -0.23835765 0 9.6093812e-018 -0.36450785 0 3.9118418e-018 -0.46800157
		 0 1.7230479e-018 -0.50775999 0 1.7230479e-018 -0.50775999 0 4.0659841e-019 -0.50266933
		 0 -5.4320289e-018 -0.48009148 0 -1.3447211e-017 -0.44909704 0 -2.0566177e-017 -0.37334567
		 0 -2.6662645e-018 -0.27051821 0 4.3542996e-017 -0.19610018;
createNode transformGeometry -n "transformGeometry4";
	setAttr ".txf" -type "matrix" 2.7598363957295606 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -0.9208853104484418 0 0 1;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 57 ".tk";
	setAttr ".tk[55]" -type "float3" 0 -5.1698788e-026 1.8626451e-009 ;
	setAttr ".tk[66]" -type "float3" 0 -4.1359031e-025 0 ;
	setAttr ".tk[67]" -type "float3" 0 -5.1698788e-026 1.8626451e-009 ;
	setAttr ".tk[68]" -type "float3" 0 -5.1698788e-026 1.8626451e-009 ;
	setAttr ".tk[69]" -type "float3" 0 -5.1698788e-026 1.8626451e-009 ;
	setAttr ".tk[70]" -type "float3" 0 -5.1698788e-026 1.8626451e-009 ;
	setAttr ".tk[71]" -type "float3" 0 1.3952929e-019 -0.0020440693 ;
	setAttr ".tk[72]" -type "float3" 1.3877788e-017 -7.2498265e-019 -0.0055066105 ;
	setAttr ".tk[73]" -type "float3" 0 1.4529655e-018 -0.006543573 ;
	setAttr ".tk[74]" -type "float3" 0 6.685768e-019 -0.0030110008 ;
	setAttr ".tk[75]" -type "float3" 0 -5.1698788e-026 1.8626451e-009 ;
	setAttr ".tk[76]" -type "float3" 0 4.3385532e-018 -0.019539105 ;
	setAttr ".tk[77]" -type "float3" 0 -1.6543612e-024 -1.4901161e-008 ;
	setAttr ".tk[78]" -type "float3" 0 -4.1359031e-025 0 ;
	setAttr ".tk[79]" -type "float3" 0 -4.1359031e-025 0 ;
	setAttr ".tk[80]" -type "float3" 0 1.2010023e-019 -0.00038344256 ;
	setAttr ".tk[81]" -type "float3" 0 5.4095528e-018 -0.019320851 ;
	setAttr ".tk[82]" -type "float3" 1.4323221e-017 3.1656951e-018 -0.047891419 ;
	setAttr ".tk[83]" -type "float3" 1.110223e-016 -3.3372134e-018 -0.055129539 ;
	setAttr ".tk[84]" -type "float3" 2.7755576e-017 5.9693336e-018 -0.041484505 ;
	setAttr ".tk[85]" -type "float3" 0 5.9391386e-018 -0.026747502 ;
	setAttr ".tk[86]" -type "float3" 0 4.3101276e-018 -0.019411089 ;
	setAttr ".tk[87]" -type "float3" 0 1.750833e-017 -0.078850523 ;
	setAttr ".tk[88]" -type "float3" 0 -8.2718061e-025 -2.9802322e-008 ;
	setAttr ".tk[89]" -type "float3" 0 -1.6543612e-024 -1.4901161e-008 ;
	setAttr ".tk[90]" -type "float3" 0 -1.6543612e-024 -1.4901161e-008 ;
	setAttr ".tk[91]" -type "float3" 0 3.7161527e-018 -0.011864502 ;
	setAttr ".tk[92]" -type "float3" 0 2.1847489e-017 -0.089752428 ;
	setAttr ".tk[93]" -type "float3" 6.9535158e-017 1.738503e-017 -0.18268068 ;
	setAttr ".tk[94]" -type "float3" 2.6367797e-016 -4.48709e-018 -0.17122231 ;
	setAttr ".tk[95]" -type "float3" 1.110223e-016 1.2101327e-017 -0.11298276 ;
	setAttr ".tk[96]" -type "float3" 0 1.4999843e-017 -0.067553312 ;
	setAttr ".tk[97]" -type "float3" 0 1.5260285e-017 -0.068726242 ;
	setAttr ".tk[98]" -type "float3" 0 3.4335026e-017 -0.15463123 ;
	setAttr ".tk[99]" -type "float3" 0 2.4815418e-024 -2.9802322e-008 ;
	setAttr ".tk[100]" -type "float3" 0 -8.2718061e-025 -2.9802322e-008 ;
	setAttr ".tk[101]" -type "float3" 0 -8.2718061e-025 -2.9802322e-008 ;
	setAttr ".tk[102]" -type "float3" 0 9.9882679e-018 -0.031889349 ;
	setAttr ".tk[103]" -type "float3" 0 4.0880785e-017 -0.176062 ;
	setAttr ".tk[104]" -type "float3" 1.3324474e-016 2.3119442e-017 -0.29282612 ;
	setAttr ".tk[105]" -type "float3" 4.0245585e-016 -6.5250488e-018 -0.25362217 ;
	setAttr ".tk[106]" -type "float3" 1.6653345e-016 1.5888232e-017 -0.16407797 ;
	setAttr ".tk[107]" -type "float3" 0 2.3013162e-017 -0.1036421 ;
	setAttr ".tk[108]" -type "float3" 0 2.5087142e-017 -0.11298247 ;
	setAttr ".tk[109]" -type "float3" 0 4.8139721e-017 -0.21680209 ;
	setAttr ".tk[110]" -type "float3" 0 2.4815418e-024 -2.9802322e-008 ;
	setAttr ".tk[111]" -type "float3" 0 2.4815418e-024 -2.9802322e-008 ;
	setAttr ".tk[112]" -type "float3" 0 2.4815418e-024 -2.9802322e-008 ;
	setAttr ".tk[113]" -type "float3" 0 1.529875e-017 -0.048843998 ;
	setAttr ".tk[114]" -type "float3" 0 4.9002795e-017 -0.22068895 ;
	setAttr ".tk[115]" -type "float3" 1.703513e-016 1.6060392e-017 -0.31079575 ;
	setAttr ".tk[116]" -type "float3" 4.4408921e-016 -9.0809699e-018 -0.25596082 ;
	setAttr ".tk[117]" -type "float3" 1.6653345e-016 1.6368364e-017 -0.16763537 ;
	setAttr ".tk[118]" -type "float3" 0 2.6018447e-017 -0.11717668 ;
	setAttr ".tk[119]" -type "float3" 0 2.7800822e-017 -0.12520377 ;
	setAttr ".tk[120]" -type "float3" 0 5.3442942e-017 -0.24068569 ;
createNode transformGeometry -n "transformGeometry5";
	setAttr ".txf" -type "matrix" 2.7998715735094453 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -3.697648224602327 0 0 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 94 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :hyperGraphLayout;
	setAttr -s 173 ".hyp";
	setAttr ".hyp[1].isc" yes;
	setAttr ".hyp[2].isc" yes;
	setAttr ".hyp[3].isc" yes;
	setAttr ".hyp[4].isc" yes;
	setAttr ".hyp[5].isc" yes;
	setAttr ".hyp[6].isc" yes;
	setAttr ".hyp[8].isc" yes;
	setAttr ".hyp[16].isc" yes;
	setAttr ".hyp[17].isc" yes;
	setAttr ".hyp[18].isc" yes;
	setAttr ".hyp[19].isc" yes;
	setAttr ".hyp[20].isc" yes;
	setAttr ".hyp[48].isc" yes;
	setAttr ".hyp[49].isc" yes;
	setAttr ".hyp[50].isc" yes;
	setAttr ".hyp[51].isc" yes;
	setAttr ".hyp[52].isc" yes;
	setAttr ".hyp[53].isc" yes;
	setAttr ".hyp[54].isc" yes;
	setAttr ".hyp[102].isc" yes;
	setAttr ".hyp[103].isc" yes;
	setAttr ".hyp[104].isc" yes;
	setAttr ".hyp[105].isc" yes;
	setAttr ".hyp[106].isc" yes;
	setAttr ".hyp[109].isc" yes;
	setAttr ".hyp[110].isc" yes;
	setAttr ".hyp[111].isc" yes;
	setAttr ".hyp[112].isc" yes;
	setAttr ".hyp[113].isc" yes;
	setAttr ".hyp[115].isc" yes;
	setAttr ".hyp[116].isc" yes;
	setAttr ".hyp[117].isc" yes;
	setAttr ".hyp[118].isc" yes;
	setAttr ".hyp[119].isc" yes;
	setAttr ".hyp[120].isc" yes;
	setAttr ".hyp[121].isc" yes;
	setAttr ".hyp[123].isc" yes;
	setAttr ".hyp[124].isc" yes;
	setAttr ".hyp[125].isc" yes;
	setAttr ".hyp[126].isc" yes;
	setAttr ".hyp[127].isc" yes;
	setAttr ".hyp[128].isc" yes;
	setAttr ".hyp[129].isc" yes;
	setAttr ".hyp[131].isc" yes;
	setAttr ".hyp[132].isc" yes;
	setAttr ".hyp[133].isc" yes;
	setAttr ".hyp[134].isc" yes;
	setAttr ".hyp[135].isc" yes;
	setAttr ".hyp[137].isc" yes;
	setAttr ".hyp[138].isc" yes;
	setAttr ".hyp[139].isc" yes;
	setAttr ".hyp[140].isc" yes;
	setAttr ".hyp[141].isc" yes;
	setAttr ".hyp[143].isc" yes;
	setAttr ".hyp[144].isc" yes;
	setAttr ".hyp[145].isc" yes;
	setAttr ".hyp[146].isc" yes;
	setAttr ".hyp[147].isc" yes;
	setAttr ".hyp[149].isc" yes;
	setAttr ".hyp[150].isc" yes;
	setAttr ".hyp[151].isc" yes;
	setAttr ".hyp[152].isc" yes;
	setAttr ".hyp[153].isc" yes;
	setAttr ".hyp[156].isc" yes;
	setAttr ".hyp[157].isc" yes;
	setAttr ".hyp[158].isc" yes;
	setAttr ".hyp[159].isc" yes;
	setAttr ".hyp[160].isc" yes;
	setAttr ".hyp[161].isc" yes;
	setAttr ".hyp[162].isc" yes;
	setAttr ".hyp[164].isc" yes;
	setAttr ".hyp[165].isc" yes;
	setAttr ".hyp[166].isc" yes;
	setAttr ".hyp[167].isc" yes;
	setAttr ".hyp[168].isc" yes;
connectAttr "transformGeometry1.og" "mountain_beginShape.i";
connectAttr "transformGeometry2.og" "mountain_segment_oneShape.i";
connectAttr "transformGeometry3.og" "mountain_segment_twoShape.i";
connectAttr "transformGeometry4.og" "mountain_segment_threeShape.i";
connectAttr "transformGeometry5.og" "mountain_endShape.i";
connectAttr "polyPlane6.out" "|skyline|building_0|building_0_window_Shape0.i";
connectAttr "polyPlane7.out" "|skyline|building_12|building_12_doorShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyPlane5.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "transformGeometry1.ig";
connectAttr "polyPlane1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "transformGeometry2.ig";
connectAttr "polyPlane2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "transformGeometry3.ig";
connectAttr "polyPlane3.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "transformGeometry4.ig";
connectAttr "polyPlane4.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "transformGeometry5.ig";
connectAttr "mountain_segment_oneShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain_segment_twoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain_segment_threeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain_endShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain_beginShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|skyline|building_0|building_0_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_0_window_0|building_0_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_0_window_1|building_0_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_0_window_2|building_0_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_0_window_3|building_0_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_0_window_4|building_0_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_0_window_5|building_0_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "building_0_doorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "building_0_doorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|skyline|building_12|building_12_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_12_window_0|building_12_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_12_window_1|building_12_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_12_window_2|building_12_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_12_window_3|building_12_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_12_door|building_12_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_9|building_9_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_9_window_0|building_9_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_9_window_1|building_9_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_9_window_2|building_9_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_9_window_3|building_9_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_9_window_4|building_9_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_9_window_5|building_9_window_Shape0.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "building_9_doorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|skyline|building_2|building_2_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_2_window_0|building_2_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_2_window_1|building_2_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_2_window_2|building_2_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_2_window_3|building_2_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_2_door|building_2_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_3|building_3_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_3_window_0|building_3_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_3_window_1|building_3_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_3_window_2|building_3_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_3_window_3|building_3_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_3_window_4|building_3_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_3_window_5|building_3_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_3_door|building_3_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_4|building_4_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_4_window_0|building_4_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_4_window_1|building_4_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_4_window_2|building_4_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_4_window_3|building_4_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_4_window_4|building_4_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_4_window_5|building_4_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_4_door|building_4_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_1|building_1_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_1_window_0|building_1_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_1_window_1|building_1_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_1_window_2|building_1_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_1_window_3|building_1_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_1_door|building_1_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_5|building_5_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_5_window_0|building_5_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_5_window_1|building_5_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_5_window_2|building_5_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_5_window_3|building_5_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_5_door|building_5_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_6|building_6_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_6_window_0|building_6_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_6_window_1|building_6_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_6_window_2|building_6_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_6_window_3|building_6_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_6_door|building_6_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_7|building_7_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_7_window_0|building_7_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_7_window_1|building_7_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_7_window_2|building_7_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_7_window_3|building_7_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_7_door|building_7_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_8|building_8_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_8_window_0|building_8_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_8_window_1|building_8_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_8_window_2|building_8_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_8_window_3|building_8_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_8_door|building_8_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_10|building_10_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_10_window_0|building_10_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_10_window_1|building_10_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_10_window_2|building_10_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_10_window_3|building_10_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_10_window_4|building_10_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_10_window_5|building_10_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_10_door|building_10_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_11|building_11_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_11_window_0|building_11_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_11_window_1|building_11_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_11_window_2|building_11_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_11_window_3|building_11_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|skyline|building_11_door|building_11_doorShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "building_0_window_0.msg" ":hyperGraphLayout.hyp[1].dn";
connectAttr "building_0_window_1.msg" ":hyperGraphLayout.hyp[2].dn";
connectAttr "building_0_window_2.msg" ":hyperGraphLayout.hyp[3].dn";
connectAttr "building_0_window_3.msg" ":hyperGraphLayout.hyp[4].dn";
connectAttr "building_0_window_4.msg" ":hyperGraphLayout.hyp[5].dn";
connectAttr "building_0_window_5.msg" ":hyperGraphLayout.hyp[6].dn";
connectAttr "building_0_door.msg" ":hyperGraphLayout.hyp[8].dn";
connectAttr "building_12_window_0.msg" ":hyperGraphLayout.hyp[16].dn";
connectAttr "building_12_window_1.msg" ":hyperGraphLayout.hyp[17].dn";
connectAttr "building_12_window_2.msg" ":hyperGraphLayout.hyp[18].dn";
connectAttr "building_12_window_3.msg" ":hyperGraphLayout.hyp[19].dn";
connectAttr "building_12_door.msg" ":hyperGraphLayout.hyp[20].dn";
connectAttr "building_9_window_0.msg" ":hyperGraphLayout.hyp[48].dn";
connectAttr "building_9_window_1.msg" ":hyperGraphLayout.hyp[49].dn";
connectAttr "building_9_window_2.msg" ":hyperGraphLayout.hyp[50].dn";
connectAttr "building_9_window_3.msg" ":hyperGraphLayout.hyp[51].dn";
connectAttr "building_9_window_4.msg" ":hyperGraphLayout.hyp[52].dn";
connectAttr "building_9_window_5.msg" ":hyperGraphLayout.hyp[53].dn";
connectAttr "building_9_door.msg" ":hyperGraphLayout.hyp[54].dn";
connectAttr "building_1_window_0.msg" ":hyperGraphLayout.hyp[102].dn";
connectAttr "building_1_window_1.msg" ":hyperGraphLayout.hyp[103].dn";
connectAttr "building_1_window_2.msg" ":hyperGraphLayout.hyp[104].dn";
connectAttr "building_1_window_3.msg" ":hyperGraphLayout.hyp[105].dn";
connectAttr "building_1_door.msg" ":hyperGraphLayout.hyp[106].dn";
connectAttr "building_2_window_0.msg" ":hyperGraphLayout.hyp[109].dn";
connectAttr "building_2_window_1.msg" ":hyperGraphLayout.hyp[110].dn";
connectAttr "building_2_window_2.msg" ":hyperGraphLayout.hyp[111].dn";
connectAttr "building_2_window_3.msg" ":hyperGraphLayout.hyp[112].dn";
connectAttr "building_2_door.msg" ":hyperGraphLayout.hyp[113].dn";
connectAttr "building_3_window_0.msg" ":hyperGraphLayout.hyp[115].dn";
connectAttr "building_3_window_1.msg" ":hyperGraphLayout.hyp[116].dn";
connectAttr "building_3_window_2.msg" ":hyperGraphLayout.hyp[117].dn";
connectAttr "building_3_window_3.msg" ":hyperGraphLayout.hyp[118].dn";
connectAttr "building_3_window_4.msg" ":hyperGraphLayout.hyp[119].dn";
connectAttr "building_3_window_5.msg" ":hyperGraphLayout.hyp[120].dn";
connectAttr "building_3_door.msg" ":hyperGraphLayout.hyp[121].dn";
connectAttr "building_4_window_0.msg" ":hyperGraphLayout.hyp[123].dn";
connectAttr "building_4_window_1.msg" ":hyperGraphLayout.hyp[124].dn";
connectAttr "building_4_window_2.msg" ":hyperGraphLayout.hyp[125].dn";
connectAttr "building_4_window_3.msg" ":hyperGraphLayout.hyp[126].dn";
connectAttr "building_4_window_4.msg" ":hyperGraphLayout.hyp[127].dn";
connectAttr "building_4_window_5.msg" ":hyperGraphLayout.hyp[128].dn";
connectAttr "building_4_door.msg" ":hyperGraphLayout.hyp[129].dn";
connectAttr "building_5_window_0.msg" ":hyperGraphLayout.hyp[131].dn";
connectAttr "building_5_window_1.msg" ":hyperGraphLayout.hyp[132].dn";
connectAttr "building_5_window_2.msg" ":hyperGraphLayout.hyp[133].dn";
connectAttr "building_5_window_3.msg" ":hyperGraphLayout.hyp[134].dn";
connectAttr "building_5_door.msg" ":hyperGraphLayout.hyp[135].dn";
connectAttr "building_6_window_0.msg" ":hyperGraphLayout.hyp[137].dn";
connectAttr "building_6_window_1.msg" ":hyperGraphLayout.hyp[138].dn";
connectAttr "building_6_window_2.msg" ":hyperGraphLayout.hyp[139].dn";
connectAttr "building_6_window_3.msg" ":hyperGraphLayout.hyp[140].dn";
connectAttr "building_6_door.msg" ":hyperGraphLayout.hyp[141].dn";
connectAttr "building_7_window_0.msg" ":hyperGraphLayout.hyp[143].dn";
connectAttr "building_7_window_1.msg" ":hyperGraphLayout.hyp[144].dn";
connectAttr "building_7_window_2.msg" ":hyperGraphLayout.hyp[145].dn";
connectAttr "building_7_window_3.msg" ":hyperGraphLayout.hyp[146].dn";
connectAttr "building_7_door.msg" ":hyperGraphLayout.hyp[147].dn";
connectAttr "building_8_window_0.msg" ":hyperGraphLayout.hyp[149].dn";
connectAttr "building_8_window_1.msg" ":hyperGraphLayout.hyp[150].dn";
connectAttr "building_8_window_2.msg" ":hyperGraphLayout.hyp[151].dn";
connectAttr "building_8_window_3.msg" ":hyperGraphLayout.hyp[152].dn";
connectAttr "building_8_door.msg" ":hyperGraphLayout.hyp[153].dn";
connectAttr "building_10_window_0.msg" ":hyperGraphLayout.hyp[156].dn";
connectAttr "building_10_window_1.msg" ":hyperGraphLayout.hyp[157].dn";
connectAttr "building_10_window_2.msg" ":hyperGraphLayout.hyp[158].dn";
connectAttr "building_10_window_3.msg" ":hyperGraphLayout.hyp[159].dn";
connectAttr "building_10_window_4.msg" ":hyperGraphLayout.hyp[160].dn";
connectAttr "building_10_window_5.msg" ":hyperGraphLayout.hyp[161].dn";
connectAttr "building_10_door.msg" ":hyperGraphLayout.hyp[162].dn";
connectAttr "building_11_window_0.msg" ":hyperGraphLayout.hyp[164].dn";
connectAttr "building_11_window_1.msg" ":hyperGraphLayout.hyp[165].dn";
connectAttr "building_11_window_2.msg" ":hyperGraphLayout.hyp[166].dn";
connectAttr "building_11_window_3.msg" ":hyperGraphLayout.hyp[167].dn";
connectAttr "building_11_door.msg" ":hyperGraphLayout.hyp[168].dn";
// End of mdl_scenery.ma
