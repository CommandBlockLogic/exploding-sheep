execute if score sys tick matches 361 run summon armor_stand ~-10.16 ~8.5 ~-43.0 {Rotation:[-135f],NoBasePlate:1,NoGravity:1,Tags:[ay,ani],ShowArms:1b,Pose:{Body:[343f,0f,0f],Head:[315f,0f,0f],LeftLeg:[11f,0f,0f],RightLeg:[351f,0f,0f],LeftArm:[235f,0f,0f],RightArm:[1f,73f,0f]}}
execute if score sys tick matches 361 run summon armor_stand ~-3.9399999999999995 ~8.5 ~-49.63 {Rotation:[45f],NoBasePlate:1,NoGravity:1,Tags:[ay,ani],ShowArms:1b,Pose:{Body:[360f,0f,0f],LeftLeg:[11f,0f,0f],RightLeg:[351f,68f,0f],LeftArm:[235f,11f,0f],RightArm:[212f,73f,0f]}}
execute if score sys tick matches 361 run summon minecraft:lightning_bolt ~-10.0 ~7.5 ~-48.0
execute if score sys tick matches 404 at @a[limit=1,sort=random] run particle minecraft:explosion_emitter ~ ~1 ~ 1.5 1 1.5 0 15
execute if score sys tick matches 411 at @a[limit=1,sort=random] run particle minecraft:cloud ~ ~1 ~ 1.5 1.5 1.5 0 1000
execute if score sys tick matches 411 at @a[limit=1,sort=random] run particle minecraft:flash ~ ~1 ~
execute if score sys tick matches 411 run summon armor_stand ~-9.489999999999998 ~4.5 ~-80.89 {Rotation:[105f],NoBasePlate:1b,NoGravity:1b,Tags:[ay,ani],ShowArms:1b,Pose:{Body:[348f,3f,0f],Head:[312f,19f,0f],LeftLeg:[11f,0f,0f],RightLeg:[411f,68f,0f],LeftArm:[343f,11f,0f],RightArm:[210f,73f,0f]}}
execute if score sys tick matches 411 run summon armor_stand ~-4.640000000000001 ~4.5 ~-92.82 {Rotation:[60f],NoBasePlate:1b,NoGravity:1b,Tags:[ay,ani],ShowArms:1b,Pose:{Body:[348f,3f,0f],Head:[335f,340f,0f],LeftLeg:[411f,0f,0f],RightLeg:[3f,68f,0f],LeftArm:[263f,47f,77f],RightArm:[325f,0f,0f]}}
execute if score sys tick matches ..479 run execute as @e[tag=ay] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16701501}}},{}]}
execute if score sys tick matches 420 run fill ~-8.5 ~4.5 ~-85.5 ~-4.5 ~4.5 ~-89.5 minecraft:purple_stained_glass keep
execute if score sys tick matches 420 run particle minecraft:witch ~-6.0 ~5.0 ~-87.0 1 0.3 1 0 200

execute if score sys tick matches 480 run fill ~-5.5 ~8.5 ~-50.5 ~-12.5 ~6.5 ~-46.5 air replace fire
execute if score sys tick matches 480 run summon armor_stand ~-7.98 ~5.0 ~-84.88 {HandItems:[{id:"minecraft:purple_stained_glass",Count:1b}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16701501}}},{}],Tags:[a_blue,ani,ay],Rotation:[-105f],NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Pose:{Body:[348f,3f,0f],Head:[32f,340f,0f],LeftLeg:[351f,0f,0f],RightLeg:[3f,0f,0f],LeftArm:[299f,360f,0f],RightArm:[325f,0f,0f]}}
execute if score sys tick matches 490 run data merge entity @e[tag=a_blue,limit=1] {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13942683}}},{}],LeftArm:[283f,350f,0f]}
execute if score sys tick matches 500 run data merge entity @e[tag=a_blue,limit=1] {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12103366}}},{}],LeftArm:[287f,340f,0f]}
execute if score sys tick matches 510 run data merge entity @e[tag=a_blue,limit=1] {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8092346}}},{}],LeftArm:[280f,336f,0f]}
execute if score sys tick matches 520 run data merge entity @e[tag=a_blue,limit=1] {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{}],LeftArm:[276f,333f,0f]}
#16701501
#13942683
#12103366
#8092346
#3949738
execute if score sys tick matches 480 run summon armor_stand ~-3.1899999999999995 ~5.0 ~-87.81 {HandItems:[{id:"minecraft:purple_stained_glass",Count:1b}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16701501}}},{}],Tags:[a_red,ani,ay],Rotation:[30f],NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Pose:{Body:[12f,3f,0f],Head:[16f,14f,0f],LeftLeg:[351f,0f,0f],RightLeg:[3f,0f,0f],RightArm:[280f,0f,0f]}}
execute if score sys tick matches 490 run data merge entity @e[tag=a_red,limit=1] {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16493613}}},{}],RightArm:[270f,0f,0f]}
execute if score sys tick matches 500 run data merge entity @e[tag=a_red,limit=1] {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16351261}}},{}],RightArm:[260f,0f,0f]}
execute if score sys tick matches 510 run data merge entity @e[tag=a_red,limit=1] {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13915937}}},{}],RightArm:[250f,0f,0f]}
execute if score sys tick matches 520 run data merge entity @e[tag=a_red,limit=1] {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11546150}}},{}],RightArm:[240f,0f,0f]}
#16701501
#16493613
#16351261
#13915937
#11546150
execute if score sys tick matches 540 run kill @e[tag=ani]
execute if score sys tick matches 540 run function anmie:2/init
execute if score sys tick matches 540.. run execute as @e[tag=a_red] run function anmie:2/hit
execute if score sys tick matches 540.. run execute as @e[tag=a_blue] run function anmie:2/cut
execute if score sys tick matches 560 run summon minecraft:armor_stand ~-8.100000000000001 ~3.8999999999999986 ~-98.5 {Tags:[ani,a_item],Pose:{RightArm:[90f,-10f,0f]},HandItems:[{id:"minecraft:iron_pickaxe",Count:1},{}],NoGravity:1,Invisible:1}
execute if score sys tick matches 570 run summon minecraft:armor_stand ~-8.100000000000001 ~3.8999999999999986 ~-98.5 {Tags:[ani,a_item],Pose:{RightArm:[100f,-50f,0f]},HandItems:[{id:"minecraft:iron_pickaxe",Count:1},{}],NoGravity:1,Invisible:1}
execute if score sys tick matches 580 run summon minecraft:armor_stand ~-8.100000000000001 ~3.75 ~-98.5 {Tags:[ani,a_item],Pose:{RightArm:[80f,-30f,0f]},HandItems:[{id:"minecraft:iron_pickaxe",Count:1},{}],NoGravity:1,Invisible:1}
execute if score sys tick matches 620 run summon minecraft:armor_stand ~-11.690000000000001 ~3.8000000000000007 ~-82.85 {Tags:[ani,a_item],Pose:{RightArm:[-15f,0f,0f]},HandItems:[{id:"minecraft:oak_log",Count:1},{}],NoGravity:1,Invisible:1}
execute if score sys tick matches 630 run summon minecraft:armor_stand ~-11.170000000000002 ~3.8000000000000007 ~-83.09 {Tags:[ani,a_item],Pose:{RightArm:[-15f,0f,0f]},HandItems:[{id:"minecraft:oak_log",Count:1},{}],NoGravity:1,Invisible:1}
execute if score sys tick matches 640 run summon minecraft:armor_stand ~-12.68 ~3.8000000000000007 ~-83.16 {Tags:[ani,a_item],Pose:{RightArm:[-15f,0f,0f]},HandItems:[{id:"minecraft:oak_log",Count:1},{}],NoGravity:1,Invisible:1}

execute if score sys tick matches 680 run setblock ~-7.5 ~4.5 ~-89.5 air
execute if score sys tick matches 685 run setblock ~-6.5 ~4.5 ~-85.5 air
execute if score sys tick matches 690 run setblock ~-5.5 ~4.5 ~-88.5 air
execute if score sys tick matches 695 run setblock ~-4.5 ~4.5 ~-86.5 air
execute if score sys tick matches 700 run setblock ~-7.5 ~4.5 ~-87.5 air
execute if score sys tick matches 705 run setblock ~-9.5 ~4.5 ~-87.5 air
execute if score sys tick matches 710 run setblock ~-7.5 ~4.5 ~-88.5 air
execute if score sys tick matches 715 run setblock ~-6.5 ~4.5 ~-89.5 air
execute if score sys tick matches 720 run setblock ~-8.5 ~4.5 ~-86.5 air
execute if score sys tick matches 723 run setblock ~-8.5 ~4.5 ~-87.5 air
execute if score sys tick matches 726 run setblock ~-6.5 ~4.5 ~-86.5 air
execute if score sys tick matches 729 run setblock ~-4.5 ~4.5 ~-87.5 air
execute if score sys tick matches 732 run fill ~-8.5 ~4.5 ~-85.5 ~-4.5 ~4.5 ~-89.5 minecraft:air replace minecraft:purple_stained_glass
execute if score sys tick matches 732 run setblock ~-5.5 ~4.5 ~-87.5 minecraft:purple_stained_glass
execute if score sys tick matches 732 run setblock ~-6.5 ~4.5 ~-128.5 minecraft:purple_stained_glass

execute if score sys tick matches 741 run kill @e[tag=ani]
execute if score sys tick matches 780 run fill ~-8.5 ~4.5 ~-85.5 ~-4.5 ~4.5 ~-89.5 minecraft:air replace minecraft:purple_stained_glass

execute if score sys tick matches 361 run tp @a ~-84.661999999999999 ~10.677 ~-46.815 134.000 27.100
execute if score sys tick matches 362 run tp @a ~-84.565000000000001 ~10.692 ~-46.722 133.978 27.227
execute if score sys tick matches 363 run tp @a ~-84.469000000000001 ~10.707999999999998 ~-46.629 133.955 27.353
execute if score sys tick matches 364 run tp @a ~-84.372 ~10.722999999999999 ~-46.536 133.933 27.480
execute if score sys tick matches 365 run tp @a ~-84.274999999999999 ~10.738 ~-46.443 133.910 27.606
execute if score sys tick matches 366 run tp @a ~-84.178000000000001 ~10.754000000000001 ~-46.35 133.888 27.733
execute if score sys tick matches 367 run tp @a ~-84.082000000000001 ~10.768999999999998 ~-46.257 133.865 27.859
execute if score sys tick matches 368 run tp @a ~-44.984999999999999 ~10.785 ~-46.164 133.843 27.986
execute if score sys tick matches 369 run tp @a ~-44.888000000000002 ~10.8 ~-46.071 133.820 28.112
execute if score sys tick matches 370 run tp @a ~-44.792000000000002 ~10.815999999999999 ~-45.977 133.798 28.239
execute if score sys tick matches 371 run tp @a ~-44.695 ~10.831 ~-45.884 133.776 28.365
execute if score sys tick matches 372 run tp @a ~-44.597999999999999 ~10.847000000000001 ~-45.791 133.753 28.492
execute if score sys tick matches 373 run tp @a ~-44.501000000000001 ~10.861999999999998 ~-45.698 133.731 28.618
execute if score sys tick matches 374 run tp @a ~-44.404999999999999 ~10.876999999999999 ~-45.605 133.708 28.745
execute if score sys tick matches 375 run tp @a ~-5.308 ~10.893 ~-45.512 133.686 28.871
execute if score sys tick matches 376 run tp @a ~-5.211 ~10.908000000000001 ~-45.419 133.663 28.998
execute if score sys tick matches 377 run tp @a ~-5.115 ~10.924 ~-45.326 133.641 29.124
execute if score sys tick matches 378 run tp @a ~-5.018000000000001 ~10.939 ~-45.233 133.618 29.251
execute if score sys tick matches 379 run tp @a ~-4.920999999999999 ~10.954999999999998 ~-45.14 133.596 29.378
execute if score sys tick matches 380 run tp @a ~-4.824 ~10.969999999999999 ~-45.047 133.573 29.504
execute if score sys tick matches 381 run tp @a ~-4.728 ~10.986 ~-44.954 133.551 29.631
execute if score sys tick matches 382 run tp @a ~-122.631 ~11.001000000000001 ~-84.861 133.529 29.757
execute if score sys tick matches 383 run tp @a ~-122.534000000000001 ~11.015999999999998 ~-84.768 133.506 29.884
execute if score sys tick matches 384 run tp @a ~-122.438000000000001 ~11.032 ~-84.675 133.484 30.010
execute if score sys tick matches 385 run tp @a ~-122.340999999999999 ~11.047 ~-84.582 133.461 30.137
execute if score sys tick matches 386 run tp @a ~-122.244 ~11.062999999999999 ~-84.488 133.439 30.263
execute if score sys tick matches 387 run tp @a ~-122.147 ~11.078 ~-84.395 133.416 30.390
execute if score sys tick matches 388 run tp @a ~-122.051 ~11.094000000000001 ~-84.302 133.394 30.516
execute if score sys tick matches 389 run tp @a ~-82.9540000000000006 ~11.109000000000002 ~-84.209 133.371 30.643
execute if score sys tick matches 390 run tp @a ~-82.8569999999999993 ~11.123999999999999 ~-84.116 133.349 30.769
execute if score sys tick matches 391 run tp @a ~-82.7609999999999992 ~11.14 ~-84.023 133.327 30.896
execute if score sys tick matches 392 run tp @a ~-82.6639999999999997 ~11.155000000000001 ~-83.93 133.304 31.022
execute if score sys tick matches 393 run tp @a ~-82.567 ~11.171 ~-83.837 133.282 31.149
execute if score sys tick matches 394 run tp @a ~-82.4700000000000006 ~11.186 ~-83.744 133.259 31.276
execute if score sys tick matches 395 run tp @a ~-82.3740000000000006 ~11.202000000000002 ~-83.651 133.237 31.402
execute if score sys tick matches 396 run tp @a ~-43.2769999999999992 ~11.216999999999999 ~-83.558 133.214 31.529
execute if score sys tick matches 397 run tp @a ~-43.1799999999999997 ~11.233 ~-83.465 133.192 31.655
execute if score sys tick matches 398 run tp @a ~-43.0839999999999996 ~11.248000000000001 ~-83.372 133.169 31.782
execute if score sys tick matches 399 run tp @a ~-42.987 ~11.263000000000002 ~-83.279 133.147 31.908
execute if score sys tick matches 400 run tp @a ~-42.8900000000000006 ~11.279 ~-83.186 133.124 32.035
execute if score sys tick matches 401 run tp @a ~-42.7929999999999993 ~11.294 ~-83.093 133.102 32.161
execute if score sys tick matches 402 run tp @a ~-42.696999999999999 ~11.309999999999999 ~-82.999 133.080 32.288
execute if score sys tick matches 403 run tp @a ~-2.5999999999999996 ~11.325 ~-82.906 133.057 32.414
execute if score sys tick matches 404 run tp @a ~-2.503 ~11.341000000000001 ~-82.813 133.035 32.541
execute if score sys tick matches 405 run tp @a ~-2.407 ~11.356000000000002 ~-82.72 133.012 32.667
execute if score sys tick matches 406 run tp @a ~-2.3100000000000005 ~11.372 ~-82.627 132.990 32.794
execute if score sys tick matches 407 run tp @a ~-2.212999999999999 ~11.387 ~-82.534 132.967 32.920
execute if score sys tick matches 408 run tp @a ~-2.1159999999999997 ~11.402000000000001 ~-82.441 132.945 33.047
execute if score sys tick matches 409 run tp @a ~-2.0199999999999996 ~11.418 ~-82.348 132.922 33.173
execute if score sys tick matches 410 run tp @a ~-1.923 ~11.433 ~-82.255 132.900 33.300
execute if score sys tick matches 411 run tp @a ~-1.923 ~11.433 ~-82.255 132.900 33.300
execute if score sys tick matches 412 run tp @a ~-1.9100000000000001 ~11.347999999999999 ~-82.271 132.845 33.187
execute if score sys tick matches 413 run tp @a ~-1.8970000000000002 ~11.262 ~-82.287 132.790 33.074
execute if score sys tick matches 414 run tp @a ~-1.8840000000000003 ~11.177 ~-82.304 132.735 32.961
execute if score sys tick matches 415 run tp @a ~-1.8719999999999999 ~11.091999999999999 ~-82.32 132.680 32.848
execute if score sys tick matches 416 run tp @a ~-1.859 ~11.006 ~-82.336 132.625 32.735
execute if score sys tick matches 417 run tp @a ~-1.846 ~10.921 ~-82.352 132.570 32.622
execute if score sys tick matches 418 run tp @a ~-1.8330000000000002 ~10.835 ~-82.369 132.514 32.509
execute if score sys tick matches 419 run tp @a ~-1.8200000000000003 ~10.75 ~-82.385 132.459 32.396
execute if score sys tick matches 420 run tp @a ~-1.8070000000000004 ~10.664000000000001 ~-82.401 132.404 32.283
execute if score sys tick matches 421 run tp @a ~-1.795 ~10.579 ~-82.417 132.349 32.170
execute if score sys tick matches 422 run tp @a ~-1.782 ~10.494 ~-82.433 132.294 32.057
execute if score sys tick matches 423 run tp @a ~-1.7690000000000001 ~10.408000000000001 ~-82.45 132.239 31.943
execute if score sys tick matches 424 run tp @a ~-1.7560000000000002 ~10.323 ~-82.466 132.184 31.830
execute if score sys tick matches 425 run tp @a ~-1.7430000000000003 ~10.236999999999998 ~-82.482 132.129 31.717
execute if score sys tick matches 426 run tp @a ~-1.7300000000000004 ~10.152000000000001 ~-82.498 132.074 31.604
execute if score sys tick matches 427 run tp @a ~-1.718 ~10.065999999999999 ~-82.514 132.019 31.491
execute if score sys tick matches 428 run tp @a ~-1.705 ~9.981000000000002 ~-82.531 131.964 31.378
execute if score sys tick matches 429 run tp @a ~-1.6920000000000002 ~9.896 ~-82.547 131.909 31.265
execute if score sys tick matches 430 run tp @a ~-1.6790000000000003 ~9.809999999999999 ~-82.563 131.854 31.152
execute if score sys tick matches 431 run tp @a ~-1.6660000000000004 ~9.725000000000001 ~-82.579 131.799 31.039
execute if score sys tick matches 432 run tp @a ~-1.6530000000000005 ~9.639 ~-82.596 131.743 30.926
execute if score sys tick matches 433 run tp @a ~-1.641 ~9.553999999999998 ~-82.612 131.688 30.813
execute if score sys tick matches 434 run tp @a ~-1.6280000000000001 ~9.468 ~-82.628 131.633 30.700
execute if score sys tick matches 435 run tp @a ~-1.6150000000000002 ~9.383 ~-82.644 131.578 30.587
execute if score sys tick matches 436 run tp @a ~-1.6020000000000003 ~9.297999999999998 ~-82.66 131.523 30.474
execute if score sys tick matches 437 run tp @a ~-1.5890000000000004 ~9.212 ~-82.677 131.468 30.361
execute if score sys tick matches 438 run tp @a ~-1.5760000000000005 ~9.126999999999999 ~-82.693 131.413 30.248
execute if score sys tick matches 439 run tp @a ~-1.5630000000000006 ~9.041 ~-82.709 131.358 30.135
execute if score sys tick matches 440 run tp @a ~-1.5510000000000002 ~8.956 ~-82.725 131.303 30.022
execute if score sys tick matches 441 run tp @a ~-1.5380000000000003 ~8.870000000000001 ~-82.742 131.248 29.909
execute if score sys tick matches 442 run tp @a ~-1.5250000000000004 ~8.785 ~-82.758 131.193 29.796
execute if score sys tick matches 443 run tp @a ~-1.5120000000000005 ~8.7 ~-82.774 131.138 29.683
execute if score sys tick matches 444 run tp @a ~-1.4990000000000006 ~8.614 ~-82.79 131.083 29.570
execute if score sys tick matches 445 run tp @a ~-1.4860000000000007 ~8.529 ~-82.806 131.028 29.457
execute if score sys tick matches 446 run tp @a ~-1.4740000000000002 ~8.443000000000001 ~-82.823 130.972 29.343
execute if score sys tick matches 447 run tp @a ~-1.4610000000000003 ~8.358 ~-82.839 130.917 29.230
execute if score sys tick matches 448 run tp @a ~-1.4480000000000004 ~8.271999999999998 ~-82.855 130.862 29.117
execute if score sys tick matches 449 run tp @a ~-1.4350000000000005 ~8.187000000000001 ~-82.871 130.807 29.004
execute if score sys tick matches 450 run tp @a ~-1.4220000000000006 ~8.102 ~-82.887 130.752 28.891
execute if score sys tick matches 451 run tp @a ~-1.4090000000000007 ~8.015999999999998 ~-82.904 130.697 28.778
execute if score sys tick matches 452 run tp @a ~-1.3970000000000002 ~7.931000000000001 ~-82.92 130.642 28.665
execute if score sys tick matches 453 run tp @a ~-1.3840000000000003 ~7.844999999999999 ~-82.936 130.587 28.552
execute if score sys tick matches 454 run tp @a ~-1.3710000000000004 ~7.760000000000002 ~-82.952 130.532 28.439
execute if score sys tick matches 455 run tp @a ~-1.3580000000000005 ~7.6739999999999995 ~-82.969 130.477 28.326
execute if score sys tick matches 456 run tp @a ~-1.3450000000000006 ~7.588999999999999 ~-82.985 130.422 28.213
execute if score sys tick matches 457 run tp @a ~-1.3320000000000007 ~7.504000000000001 ~-83.001 130.367 28.100
execute if score sys tick matches 458 run tp @a ~-1.3190000000000008 ~7.417999999999999 ~-83.017 130.312 27.987
execute if score sys tick matches 459 run tp @a ~-1.3070000000000004 ~7.332999999999998 ~-83.033 130.257 27.874
execute if score sys tick matches 460 run tp @a ~-1.2946000000000005 ~7.247 ~-83.05 130.201 27.761
execute if score sys tick matches 461 run tp @a ~-1.2810000000000006 ~7.161999999999999 ~-83.066 130.146 27.648
execute if score sys tick matches 462 run tp @a ~-1.2680000000000007 ~7.0760000000000005 ~-83.082 130.091 27.535
execute if score sys tick matches 463 run tp @a ~-1.2550000000000008 ~6.991 ~-83.098 130.036 27.422
execute if score sys tick matches 464 run tp @a ~-1.2420000000000009 ~6.905999999999999 ~-83.115 129.981 27.309
execute if score sys tick matches 465 run tp @a ~-1.2300000000000004 ~6.82 ~-83.131 129.926 27.196
execute if score sys tick matches 466 run tp @a ~-1.2170000000000005 ~6.734999999999999 ~-83.147 129.871 27.083
execute if score sys tick matches 467 run tp @a ~-1.2040000000000006 ~6.649000000000001 ~-83.163 129.816 26.970
execute if score sys tick matches 468 run tp @a ~-1.1910000000000007 ~6.564 ~-83.179 129.761 26.857
execute if score sys tick matches 469 run tp @a ~-1.1780000000000008 ~6.4780000000000015 ~-83.196 129.706 26.743
execute if score sys tick matches 470 run tp @a ~-1.1649999999999991 ~6.393000000000001 ~-83.212 129.651 26.630
execute if score sys tick matches 471 run tp @a ~-1.1530000000000005 ~6.308 ~-83.228 129.596 26.517
execute if score sys tick matches 472 run tp @a ~-1.1400000000000006 ~6.222000000000001 ~-83.244 129.541 26.404
execute if score sys tick matches 473 run tp @a ~-1.1270000000000007 ~6.1370000000000005 ~-83.26 129.486 26.291
execute if score sys tick matches 474 run tp @a ~-1.1140000000000008 ~6.050999999999998 ~-83.277 129.430 26.178
execute if score sys tick matches 475 run tp @a ~-1.1010000000000009 ~5.966000000000001 ~-83.293 129.375 26.065
execute if score sys tick matches 476 run tp @a ~-1.0879999999999992 ~5.879999999999999 ~-83.309 129.320 25.952
execute if score sys tick matches 477 run tp @a ~-1.0760000000000005 ~5.795000000000002 ~-83.325 129.265 25.839
execute if score sys tick matches 478 run tp @a ~-1.0630000000000006 ~5.710000000000001 ~-83.342 129.210 25.726
execute if score sys tick matches 479 run tp @a ~-1.0500000000000007 ~5.623999999999999 ~-83.358 129.155 25.613
execute if score sys tick matches 480 run tp @a ~-1.0370000000000008 ~5.5390000000000015 ~-83.374 129.100 25.500
execute if score sys tick matches 481 run tp @a ~-1.0709999999999997 ~5.5390000000000015 ~-83.391 129.100 25.500
execute if score sys tick matches 482 run tp @a ~-1.1050000000000004 ~5.5390000000000015 ~-83.407 129.100 25.500
execute if score sys tick matches 483 run tp @a ~-1.1389999999999993 ~5.5390000000000015 ~-83.424 129.100 25.500
execute if score sys tick matches 484 run tp @a ~-1.173 ~5.5390000000000015 ~-83.441 129.100 25.500
execute if score sys tick matches 485 run tp @a ~-1.2070000000000007 ~5.5390000000000015 ~-83.457 129.100 25.500
execute if score sys tick matches 486 run tp @a ~-1.2409999999999997 ~5.5390000000000015 ~-83.474 129.100 25.500
execute if score sys tick matches 487 run tp @a ~-1.2750000000000004 ~5.5390000000000015 ~-83.491 129.100 25.500
execute if score sys tick matches 488 run tp @a ~-1.3089999999999993 ~5.5390000000000015 ~-83.507 129.100 25.500
execute if score sys tick matches 489 run tp @a ~-1.343 ~5.5390000000000015 ~-83.524 129.100 25.500
execute if score sys tick matches 490 run tp @a ~-1.3759999999999994 ~5.5390000000000015 ~-83.54 129.100 25.500
execute if score sys tick matches 491 run tp @a ~-1.4100000000000001 ~5.5390000000000015 ~-83.557 129.100 25.500
execute if score sys tick matches 492 run tp @a ~-1.4440000000000008 ~5.5390000000000015 ~-83.574 129.100 25.500
execute if score sys tick matches 493 run tp @a ~-1.4779999999999998 ~5.5390000000000015 ~-83.59 129.100 25.500
execute if score sys tick matches 494 run tp @a ~-1.5120000000000005 ~5.5390000000000015 ~-83.607 129.100 25.500
execute if score sys tick matches 495 run tp @a ~-1.5459999999999994 ~5.5390000000000015 ~-83.624 129.100 25.500
execute if score sys tick matches 496 run tp @a ~-1.58 ~5.5390000000000015 ~-83.64 129.100 25.500
execute if score sys tick matches 497 run tp @a ~-1.6140000000000008 ~5.5390000000000015 ~-83.657 129.100 25.500
execute if score sys tick matches 498 run tp @a ~-1.6479999999999997 ~5.5390000000000015 ~-83.674 129.100 25.500
execute if score sys tick matches 499 run tp @a ~-1.6820000000000004 ~5.5390000000000015 ~-83.69 129.100 25.500
execute if score sys tick matches 500 run tp @a ~-1.7159999999999993 ~5.5390000000000015 ~-83.707 129.100 25.500
execute if score sys tick matches 501 run tp @a ~-1.75 ~5.5390000000000015 ~-83.724 129.100 25.500
execute if score sys tick matches 502 run tp @a ~-1.7840000000000007 ~5.5390000000000015 ~-83.74 129.100 25.500
execute if score sys tick matches 503 run tp @a ~-1.8179999999999996 ~5.5390000000000015 ~-83.757 129.100 25.500
execute if score sys tick matches 504 run tp @a ~-1.8520000000000003 ~5.5390000000000015 ~-83.773 129.100 25.500
execute if score sys tick matches 505 run tp @a ~-1.8859999999999992 ~5.5390000000000015 ~-83.79 129.100 25.500
execute if score sys tick matches 506 run tp @a ~-1.92 ~5.5390000000000015 ~-83.807 129.100 25.500
execute if score sys tick matches 507 run tp @a ~-1.9540000000000006 ~5.5390000000000015 ~-83.823 129.100 25.500
execute if score sys tick matches 508 run tp @a ~-1.9879999999999995 ~5.5390000000000015 ~-83.84 129.100 25.500
execute if score sys tick matches 509 run tp @a ~-2.0220000000000002 ~5.5390000000000015 ~-83.857 129.100 25.500
execute if score sys tick matches 510 run tp @a ~-2.0549999999999997 ~5.5390000000000015 ~-83.873 129.100 25.500
execute if score sys tick matches 511 run tp @a ~-2.0890000000000004 ~5.5390000000000015 ~-83.89 129.100 25.500
execute if score sys tick matches 512 run tp @a ~-2.1229999999999993 ~5.5390000000000015 ~-83.907 129.100 25.500
execute if score sys tick matches 513 run tp @a ~-2.157 ~5.5390000000000015 ~-83.923 129.100 25.500
execute if score sys tick matches 514 run tp @a ~-2.1910000000000007 ~5.5390000000000015 ~-83.94 129.100 25.500
execute if score sys tick matches 515 run tp @a ~-2.2249999999999996 ~5.5390000000000015 ~-83.957 129.100 25.500
execute if score sys tick matches 516 run tp @a ~-2.2590000000000003 ~5.5390000000000015 ~-83.973 129.100 25.500
execute if score sys tick matches 517 run tp @a ~-2.2929999999999993 ~5.5390000000000015 ~-83.99 129.100 25.500
execute if score sys tick matches 518 run tp @a ~-2.327 ~5.5390000000000015 ~-84.006 129.100 25.500
execute if score sys tick matches 519 run tp @a ~-2.3610000000000007 ~5.5390000000000015 ~-84.023 129.100 25.500
execute if score sys tick matches 520 run tp @a ~-2.3949999999999996 ~5.5390000000000015 ~-84.04 129.100 25.500
execute if score sys tick matches 521 run tp @a ~-2.4290000000000003 ~5.5390000000000015 ~-84.056 129.100 25.500
execute if score sys tick matches 522 run tp @a ~-2.522999999999999 ~5.5390000000000015 ~-84.073 129.100 25.500
execute if score sys tick matches 523 run tp @a ~-2.497 ~5.5390000000000015 ~-84.09 129.100 25.500
execute if score sys tick matches 524 run tp @a ~-2.5310000000000006 ~5.5390000000000015 ~-84.106 129.100 25.500
execute if score sys tick matches 525 run tp @a ~-2.5649999999999995 ~5.5390000000000015 ~-84.123 129.100 25.500
execute if score sys tick matches 526 run tp @a ~-2.599 ~5.5390000000000015 ~-84.14 129.100 25.500
execute if score sys tick matches 527 run tp @a ~-2.632999999999999 ~5.5390000000000015 ~-84.156 129.100 25.500
execute if score sys tick matches 528 run tp @a ~-2.667 ~5.5390000000000015 ~-84.173 129.100 25.500
execute if score sys tick matches 529 run tp @a ~-2.7010000000000005 ~5.5390000000000015 ~-84.19 129.100 25.500
execute if score sys tick matches 530 run tp @a ~-2.734 ~5.5390000000000015 ~-84.206 129.100 25.500
execute if score sys tick matches 531 run tp @a ~-2.7680000000000007 ~5.5390000000000015 ~-84.223 129.100 25.500
execute if score sys tick matches 532 run tp @a ~-2.8019999999999996 ~5.5390000000000015 ~-84.239 129.100 25.500
execute if score sys tick matches 533 run tp @a ~-2.8360000000000003 ~5.5390000000000015 ~-84.256 129.100 25.500
execute if score sys tick matches 534 run tp @a ~-2.869999999999999 ~5.5390000000000015 ~-84.273 129.100 25.500
execute if score sys tick matches 535 run tp @a ~-2.904 ~5.5390000000000015 ~-84.289 129.100 25.500
execute if score sys tick matches 536 run tp @a ~-2.9380000000000006 ~5.5390000000000015 ~-84.306 129.100 25.500
execute if score sys tick matches 537 run tp @a ~-2.9719999999999995 ~5.5390000000000015 ~-84.323 129.100 25.500
execute if score sys tick matches 538 run tp @a ~-3.0060000000000002 ~5.5390000000000015 ~-84.339 129.100 25.500
execute if score sys tick matches 539 run tp @a ~-3.039999999999999 ~5.5390000000000015 ~-84.356 129.100 25.500
execute if score sys tick matches 540 run tp @a ~-9.312999999999999 ~5.911999999999999 ~-95.865 -158.300 26.900
execute if score sys tick matches 541 run tp @a ~-9.338000000000001 ~5.911999999999999 ~-95.897 -157.629 27.020
execute if score sys tick matches 542 run tp @a ~-9.363 ~5.911999999999999 ~-95.928 -156.958 27.141
execute if score sys tick matches 543 run tp @a ~-9.388000000000002 ~5.911999999999999 ~-95.96 -156.286 27.261
execute if score sys tick matches 544 run tp @a ~-9.413 ~5.911999999999999 ~-95.992 -155.615 27.381
execute if score sys tick matches 545 run tp @a ~-9.437999999999999 ~5.911999999999999 ~-96.023 -154.944 27.502
execute if score sys tick matches 546 run tp @a ~-9.463000000000001 ~5.911999999999999 ~-96.055 -154.273 27.622
execute if score sys tick matches 547 run tp @a ~-9.488 ~5.911999999999999 ~-96.087 -153.602 27.742
execute if score sys tick matches 548 run tp @a ~-9.513000000000002 ~5.911999999999999 ~-96.118 -152.931 27.863
execute if score sys tick matches 549 run tp @a ~-9.538 ~5.911999999999999 ~-96.15 -152.259 27.983
execute if score sys tick matches 550 run tp @a ~-9.562999999999999 ~5.911999999999999 ~-96.181 -151.588 28.103
execute if score sys tick matches 551 run tp @a ~-9.588000000000001 ~5.911999999999999 ~-96.213 -150.917 28.224
execute if score sys tick matches 552 run tp @a ~-9.613 ~5.911999999999999 ~-96.245 -150.246 28.344
execute if score sys tick matches 553 run tp @a ~-9.638000000000002 ~5.911999999999999 ~-96.276 -149.575 28.464
execute if score sys tick matches 554 run tp @a ~-9.663 ~5.911999999999999 ~-96.308 -148.903 28.585
execute if score sys tick matches 555 run tp @a ~-9.687999999999999 ~5.911999999999999 ~-96.34 -148.232 28.705
execute if score sys tick matches 556 run tp @a ~-9.713000000000001 ~5.911999999999999 ~-96.371 -147.561 28.825
execute if score sys tick matches 557 run tp @a ~-9.738 ~5.911999999999999 ~-96.403 -146.890 28.946
execute if score sys tick matches 558 run tp @a ~-9.763000000000002 ~5.911999999999999 ~-96.435 -146.219 29.066
execute if score sys tick matches 559 run tp @a ~-9.788 ~5.911999999999999 ~-96.466 -145.547 29.186
execute if score sys tick matches 560 run tp @a ~-9.812999999999999 ~5.911999999999999 ~-96.498 -144.876 29.307
execute if score sys tick matches 561 run tp @a ~-9.838000000000001 ~5.911999999999999 ~-96.53 -144.205 29.427
execute if score sys tick matches 562 run tp @a ~-9.863 ~5.911999999999999 ~-96.561 -143.534 29.547
execute if score sys tick matches 563 run tp @a ~-9.888000000000002 ~5.911999999999999 ~-96.593 -142.863 29.668
execute if score sys tick matches 564 run tp @a ~-9.913 ~5.911999999999999 ~-96.624 -142.192 29.788
execute if score sys tick matches 565 run tp @a ~-9.937999999999999 ~5.911999999999999 ~-96.656 -141.520 29.908
execute if score sys tick matches 566 run tp @a ~-9.963000000000001 ~5.911999999999999 ~-96.688 -140.849 30.029
execute if score sys tick matches 567 run tp @a ~-9.988 ~5.911999999999999 ~-96.719 -140.178 30.149
execute if score sys tick matches 568 run tp @a ~-10.013000000000002 ~5.911999999999999 ~-96.751 -139.507 30.269
execute if score sys tick matches 569 run tp @a ~-10.038 ~5.911999999999999 ~-96.783 -138.836 30.390
execute if score sys tick matches 570 run tp @a ~-10.062999999999999 ~5.911999999999999 ~-96.814 -138.164 30.570
execute if score sys tick matches 571 run tp @a ~-10.088000000000001 ~5.911999999999999 ~-96.846 -137.493 30.631
execute if score sys tick matches 572 run tp @a ~-10.113 ~5.911999999999999 ~-96.878 -136.822 30.751
execute if score sys tick matches 573 run tp @a ~-10.138000000000002 ~5.911999999999999 ~-96.909 -136.151 30.871
execute if score sys tick matches 574 run tp @a ~-10.163 ~5.911999999999999 ~-96.941 -135.480 30.992
execute if score sys tick matches 575 run tp @a ~-10.187999999999999 ~5.911999999999999 ~-96.973 -134.808 31.112
execute if score sys tick matches 576 run tp @a ~-10.213000000000001 ~5.911999999999999 ~-97.004 -134.137 31.232
execute if score sys tick matches 577 run tp @a ~-10.238 ~5.911999999999999 ~-97.036 -133.466 31.353
execute if score sys tick matches 578 run tp @a ~-10.263000000000002 ~5.911999999999999 ~-97.067 -132.795 31.473
execute if score sys tick matches 579 run tp @a ~-10.288 ~5.911999999999999 ~-97.099 -132.124 31.593
execute if score sys tick matches 580 run tp @a ~-10.312999999999999 ~5.911999999999999 ~-97.131 -131.453 31.714
execute if score sys tick matches 581 run tp @a ~-10.338000000000001 ~5.911999999999999 ~-97.162 -130.781 31.834
execute if score sys tick matches 582 run tp @a ~-10.363 ~5.911999999999999 ~-97.194 -130.110 31.954
execute if score sys tick matches 583 run tp @a ~-10.388000000000002 ~5.911999999999999 ~-97.226 -129.439 32.075
execute if score sys tick matches 584 run tp @a ~-10.413 ~5.911999999999999 ~-97.257 -128.768 32.195
execute if score sys tick matches 585 run tp @a ~-10.437999999999999 ~5.911999999999999 ~-97.289 -128.097 32.315
execute if score sys tick matches 586 run tp @a ~-10.463000000000001 ~5.911999999999999 ~-97.321 -127.425 32.436
execute if score sys tick matches 587 run tp @a ~-10.488 ~5.911999999999999 ~-97.352 -126.754 32.556
execute if score sys tick matches 588 run tp @a ~-10.513000000000002 ~5.911999999999999 ~-97.384 -126.083 32.676
execute if score sys tick matches 589 run tp @a ~-10.538 ~5.911999999999999 ~-97.416 -125.412 32.797
execute if score sys tick matches 590 run tp @a ~-10.562999999999999 ~5.911999999999999 ~-97.447 -124.741 32.917
execute if score sys tick matches 591 run tp @a ~-10.588000000000001 ~5.911999999999999 ~-97.479 -124.069 33.037
execute if score sys tick matches 592 run tp @a ~-10.613 ~5.911999999999999 ~-97.51 -123.398 33.158
execute if score sys tick matches 593 run tp @a ~-10.638000000000002 ~5.911999999999999 ~-97.542 -122.727 33.278
execute if score sys tick matches 594 run tp @a ~-10.663 ~5.911999999999999 ~-97.574 -122.056 33.398
execute if score sys tick matches 595 run tp @a ~-10.687999999999999 ~5.911999999999999 ~-97.605 -121.385 33.519
execute if score sys tick matches 596 run tp @a ~-10.713000000000001 ~5.911999999999999 ~-97.637 -120.714 33.639
execute if score sys tick matches 597 run tp @a ~-10.738 ~5.911999999999999 ~-97.669 -120.042 33.759
execute if score sys tick matches 598 run tp @a ~-10.763000000000002 ~5.911999999999999 ~-97.7 -119.371 33.880
execute if score sys tick matches 599 run tp @a ~-10.788 ~5.911999999999999 ~-97.732 -118.700 34.000
execute if score sys tick matches 600 run tp @a ~-10.559999999999999 ~4.632999999999999 ~-87.531 13.300 26.400
execute if score sys tick matches 601 run tp @a ~-10.602 ~4.632999999999999 ~-87.518 12.564 26.346
execute if score sys tick matches 602 run tp @a ~-10.643999999999998 ~4.632999999999999 ~-87.505 11.829 26.292
execute if score sys tick matches 603 run tp @a ~-10.686 ~4.632999999999999 ~-87.491 11.093 26.237
execute if score sys tick matches 604 run tp @a ~-10.728000000000002 ~4.632999999999999 ~-87.478 10.358 26.183
execute if score sys tick matches 605 run tp @a ~-10.768999999999998 ~4.632999999999999 ~-87.465 9.622 26.129
execute if score sys tick matches 606 run tp @a ~-10.811 ~4.632999999999999 ~-87.452 8.886 26.075
execute if score sys tick matches 607 run tp @a ~-10.853000000000002 ~4.632999999999999 ~-87.439 8.151 26.020
execute if score sys tick matches 608 run tp @a ~-10.895 ~4.632999999999999 ~-87.426 7.415 25.966
execute if score sys tick matches 609 run tp @a ~-10.937000000000001 ~4.632999999999999 ~-87.412 6.680 25.912
execute if score sys tick matches 610 run tp @a ~-10.979 ~4.632999999999999 ~-87.399 5.944 25.858
execute if score sys tick matches 611 run tp @a ~-11.021 ~4.632999999999999 ~-87.386 5.208 25.803
execute if score sys tick matches 612 run tp @a ~-11.062999999999999 ~4.632999999999999 ~-87.373 4.473 25.749
execute if score sys tick matches 613 run tp @a ~-11.105 ~4.632999999999999 ~-87.36 3.737 25.695
execute if score sys tick matches 614 run tp @a ~-11.146999999999998 ~4.632999999999999 ~-87.346 3.002 25.641
execute if score sys tick matches 615 run tp @a ~-11.187999999999999 ~4.632999999999999 ~-87.333 2.266 25.586
execute if score sys tick matches 616 run tp @a ~-11.23 ~4.632999999999999 ~-87.32 1.531 25.532
execute if score sys tick matches 617 run tp @a ~-11.271999999999998 ~4.632999999999999 ~-87.307 0.795 25.478
execute if score sys tick matches 618 run tp @a ~-11.314 ~4.632999999999999 ~-87.294 0.059 25.424
execute if score sys tick matches 619 run tp @a ~-11.356000000000002 ~4.632999999999999 ~-87.28 -0.676 25.369
execute if score sys tick matches 620 run tp @a ~-11.398 ~4.632999999999999 ~-87.267 -1.412 25.315
execute if score sys tick matches 621 run tp @a ~-11.440000000000001 ~4.632999999999999 ~-87.254 -2.147 25.261
execute if score sys tick matches 622 run tp @a ~-11.482 ~4.632999999999999 ~-87.241 -2.883 25.207
execute if score sys tick matches 623 run tp @a ~-11.524000000000001 ~4.632999999999999 ~-87.228 -3.619 25.153
execute if score sys tick matches 624 run tp @a ~-11.565999999999999 ~4.632999999999999 ~-87.215 -4.354 25.098
execute if score sys tick matches 625 run tp @a ~-11.607 ~4.632999999999999 ~-87.201 -5.090 25.044
execute if score sys tick matches 626 run tp @a ~-11.649000000000001 ~4.632999999999999 ~-87.188 -5.825 24.990
execute if score sys tick matches 627 run tp @a ~-11.690999999999999 ~4.632999999999999 ~-87.175 -6.561 24.936
execute if score sys tick matches 628 run tp @a ~-11.733 ~4.632999999999999 ~-87.162 -7.297 24.881
execute if score sys tick matches 629 run tp @a ~-11.774999999999999 ~4.632999999999999 ~-87.149 -8.032 24.827
execute if score sys tick matches 630 run tp @a ~-11.817 ~4.632999999999999 ~-87.135 -8.768 24.773
execute if score sys tick matches 631 run tp @a ~-11.859000000000002 ~4.632999999999999 ~-87.122 -9.503 24.719
execute if score sys tick matches 632 run tp @a ~-11.901 ~4.632999999999999 ~-87.109 -10.239 24.664
execute if score sys tick matches 633 run tp @a ~-11.943000000000001 ~4.632999999999999 ~-87.096 -10.975 24.610
execute if score sys tick matches 634 run tp @a ~-11.985 ~4.632999999999999 ~-87.083 -11.710 24.556
execute if score sys tick matches 635 run tp @a ~-12.026 ~4.632999999999999 ~-87.069 -12.446 24.502
execute if score sys tick matches 636 run tp @a ~-12.068000000000001 ~4.632999999999999 ~-87.056 -13.181 24.447
execute if score sys tick matches 637 run tp @a ~-12.11 ~4.632999999999999 ~-87.043 -13.917 24.393
execute if score sys tick matches 638 run tp @a ~-12.152000000000001 ~4.632999999999999 ~-87.03 -14.653 24.339
execute if score sys tick matches 639 run tp @a ~-12.193999999999999 ~4.632999999999999 ~-87.017 -15.388 24.285
execute if score sys tick matches 640 run tp @a ~-12.236 ~4.632999999999999 ~-87.004 -16.124 24.231
execute if score sys tick matches 641 run tp @a ~-12.277999999999999 ~4.632999999999999 ~-86.99 -16.859 24.176
execute if score sys tick matches 642 run tp @a ~-12.32 ~4.632999999999999 ~-86.977 -17.595 24.122
execute if score sys tick matches 643 run tp @a ~-12.361999999999998 ~4.632999999999999 ~-86.964 -18.331 24.068
execute if score sys tick matches 644 run tp @a ~-12.404 ~4.632999999999999 ~-86.951 -19.066 24.014
execute if score sys tick matches 645 run tp @a ~-12.445 ~4.632999999999999 ~-86.938 -19.802 23.959
execute if score sys tick matches 646 run tp @a ~-12.486999999999998 ~4.632999999999999 ~-86.924 -20.537 23.905
execute if score sys tick matches 647 run tp @a ~-12.529 ~4.632999999999999 ~-86.911 -21.273 23.851
execute if score sys tick matches 648 run tp @a ~-12.571000000000002 ~4.632999999999999 ~-86.898 -22.008 23.797
execute if score sys tick matches 649 run tp @a ~-12.613 ~4.632999999999999 ~-86.885 -22.744 23.742
execute if score sys tick matches 650 run tp @a ~-12.655000000000001 ~4.632999999999999 ~-86.872 -23.480 23.688
execute if score sys tick matches 651 run tp @a ~-12.697 ~4.632999999999999 ~-86.858 -24.215 23.634
execute if score sys tick matches 652 run tp @a ~-12.739 ~4.632999999999999 ~-86.845 -24.951 23.580
execute if score sys tick matches 653 run tp @a ~-12.780999999999999 ~4.632999999999999 ~-86.832 -25.686 23.525
execute if score sys tick matches 654 run tp @a ~-12.823 ~4.632999999999999 ~-86.819 -26.422 23.471
execute if score sys tick matches 655 run tp @a ~-12.864 ~4.632999999999999 ~-86.806 -27.158 23.417
execute if score sys tick matches 656 run tp @a ~-12.905999999999999 ~4.632999999999999 ~-86.793 -27.893 23.363
execute if score sys tick matches 657 run tp @a ~-12.948 ~4.632999999999999 ~-86.779 -28.629 23.308
execute if score sys tick matches 658 run tp @a ~-12.989999999999998 ~4.632999999999999 ~-86.766 -29.364 23.254
execute if score sys tick matches 659 run tp @a ~-13.032 ~4.632999999999999 ~-86.753 -30.100 23.200
execute if score sys tick matches 660 run tp @a ~-10.972000000000001 ~7.254999999999999 ~-89.25 297.500 46.700
execute if score sys tick matches 661 run tp @a ~-10.844999999999999 ~7.283000000000001 ~-89.198 295.655 47.783
execute if score sys tick matches 662 run tp @a ~-10.716999999999999 ~7.311 ~-89.146 293.810 48.865
execute if score sys tick matches 663 run tp @a ~-10.59 ~7.338999999999999 ~-89.094 291.965 49.948
execute if score sys tick matches 664 run tp @a ~-10.463000000000001 ~7.366 ~-89.041 290.120 51.030
execute if score sys tick matches 665 run tp @a ~-10.335999999999999 ~7.393999999999998 ~-88.989 288.275 52.113
execute if score sys tick matches 666 run tp @a ~-10.207999999999998 ~7.422000000000001 ~-88.937 286.430 53.195
execute if score sys tick matches 667 run tp @a ~-10.081 ~7.449999999999999 ~-88.885 284.585 54.278
execute if score sys tick matches 668 run tp @a ~-9.954 ~7.4780000000000015 ~-88.833 282.740 55.360
execute if score sys tick matches 669 run tp @a ~-9.827000000000002 ~7.506 ~-88.781 280.895 56.443
execute if score sys tick matches 670 run tp @a ~-9.699000000000002 ~7.533999999999999 ~-88.728 279.050 57.525
execute if score sys tick matches 671 run tp @a ~-9.572 ~7.562000000000001 ~-88.676 277.205 58.608
execute if score sys tick matches 672 run tp @a ~-9.445 ~7.59 ~-88.624 275.360 59.690
execute if score sys tick matches 673 run tp @a ~-9.317 ~7.6179999999999986 ~-88.572 273.515 60.773
execute if score sys tick matches 674 run tp @a ~-9.190000000000001 ~7.646000000000001 ~-88.52 271.670 61.855
execute if score sys tick matches 675 run tp @a ~-9.062999999999999 ~7.6739999999999995 ~-88.468 269.825 62.938
execute if score sys tick matches 676 run tp @a ~-8.936 ~7.702000000000002 ~-88.416 267.980 64.020
execute if score sys tick matches 677 run tp @a ~-8.808 ~7.73 ~-88.363 266.135 65.103
execute if score sys tick matches 678 run tp @a ~-8.681000000000001 ~7.757999999999999 ~-88.311 264.290 66.185
execute if score sys tick matches 679 run tp @a ~-8.553999999999998 ~7.786000000000001 ~-88.259 262.445 67.267
execute if score sys tick matches 680 run tp @a ~-8.427 ~7.814 ~-88.207 260.600 68.350
execute if score sys tick matches 681 run tp @a ~-8.299 ~7.841000000000001 ~-88.155 258.755 69.433
execute if score sys tick matches 682 run tp @a ~-8.172 ~7.869 ~-88.103 256.910 70.515
execute if score sys tick matches 683 run tp @a ~-8.045000000000002 ~7.8969999999999985 ~-88.051 255.065 71.597
execute if score sys tick matches 684 run tp @a ~-7.917000000000002 ~7.925000000000001 ~-87.998 253.220 72.680
execute if score sys tick matches 685 run tp @a ~-7.789999999999999 ~7.952999999999999 ~-87.946 251.375 73.763
execute if score sys tick matches 686 run tp @a ~-7.663 ~7.981000000000002 ~-87.894 249.530 74.845
execute if score sys tick matches 687 run tp @a ~-7.536000000000001 ~8.009 ~-87.842 247.685 75.928
execute if score sys tick matches 688 run tp @a ~-7.408000000000001 ~8.036999999999999 ~-87.79 245.840 77.010
execute if score sys tick matches 689 run tp @a ~-7.280999999999999 ~8.065000000000001 ~-87.738 243.995 78.093
execute if score sys tick matches 690 run tp @a ~-7.154 ~8.093 ~-87.686 242.150 79.175
execute if score sys tick matches 691 run tp @a ~-7.026 ~8.120999999999999 ~-87.633 240.305 80.257
execute if score sys tick matches 692 run tp @a ~-6.899000000000001 ~8.149000000000001 ~-87.581 238.460 81.340
execute if score sys tick matches 693 run tp @a ~-6.7719999999999985 ~8.177 ~-87.529 236.615 82.423
execute if score sys tick matches 694 run tp @a ~-6.645 ~8.204999999999998 ~-87.477 234.770 83.505
execute if score sys tick matches 695 run tp @a ~-6.5169999999999995 ~8.233 ~-87.425 232.925 84.588
execute if score sys tick matches 696 run tp @a ~-6.390000000000001 ~8.261 ~-87.373 231.080 85.670
execute if score sys tick matches 697 run tp @a ~-6.263000000000002 ~8.289000000000001 ~-87.32 229.235 86.752
execute if score sys tick matches 698 run tp @a ~-6.135999999999999 ~8.315999999999999 ~-87.268 227.390 87.835
execute if score sys tick matches 699 run tp @a ~-6.007999999999999 ~8.344000000000001 ~-87.216 225.545 88.918
execute if score sys tick matches 700 run tp @a ~-5.881 ~8.372 ~-87.164 223.700 90.000
execute if score sys tick matches 701 run tp @a ~-5.818999999999999 ~8.335 ~-87.078 221.897 89.168
execute if score sys tick matches 702 run tp @a ~-5.756 ~8.297999999999998 ~-86.991 220.095 88.335
execute if score sys tick matches 703 run tp @a ~-5.693999999999999 ~8.261 ~-86.905 218.292 87.502
execute if score sys tick matches 704 run tp @a ~-5.631 ~8.224 ~-86.819 216.490 86.670
execute if score sys tick matches 705 run tp @a ~-5.568999999999999 ~8.187000000000001 ~-86.732 214.688 85.838
execute if score sys tick matches 706 run tp @a ~-5.506 ~8.149999999999999 ~-86.706 212.885 85.005
execute if score sys tick matches 707 run tp @a ~-5.444000000000001 ~8.113 ~-86.56 211.082 84.172
execute if score sys tick matches 708 run tp @a ~-5.382 ~8.076 ~-86.473 209.280 83.340
execute if score sys tick matches 709 run tp @a ~-5.319000000000001 ~8.039000000000001 ~-86.387 207.477 82.508
execute if score sys tick matches 710 run tp @a ~-5.257 ~8.001999999999999 ~-86.301 205.675 81.675
execute if score sys tick matches 711 run tp @a ~-5.194000000000001 ~7.965 ~-86.214 203.873 80.843
execute if score sys tick matches 712 run tp @a ~-5.132 ~7.928000000000001 ~-86.128 202.070 80.010
execute if score sys tick matches 713 run tp @a ~-5.069000000000001 ~7.890999999999998 ~-86.042 200.267 79.178
execute if score sys tick matches 714 run tp @a ~-5.007 ~7.853999999999999 ~-85.955 198.465 78.345
execute if score sys tick matches 715 run tp @a ~-4.945 ~7.817 ~-85.869 196.662 77.513
execute if score sys tick matches 716 run tp @a ~-4.882 ~7.780000000000001 ~-85.783 194.860 76.680
execute if score sys tick matches 717 run tp @a ~-4.82 ~7.7429999999999986 ~-85.696 193.058 75.847
execute if score sys tick matches 718 run tp @a ~-4.757 ~7.7059999999999995 ~-85.61 191.255 75.015
execute if score sys tick matches 719 run tp @a ~-4.695 ~7.6690000000000005 ~-85.524 189.452 74.183
execute if score sys tick matches 720 run tp @a ~-4.632999999999999 ~7.6320000000000014 ~-85.438 187.650 73.350
execute if score sys tick matches 721 run tp @a ~-4.57 ~7.594999999999999 ~-85.351 185.847 72.517
execute if score sys tick matches 722 run tp @a ~-4.507999999999999 ~7.558 ~-85.265 184.045 71.685
execute if score sys tick matches 723 run tp @a ~-4.445 ~7.521000000000001 ~-85.179 182.243 70.853
execute if score sys tick matches 724 run tp @a ~-4.382999999999999 ~7.484000000000002 ~-85.092 180.440 70.020
execute if score sys tick matches 725 run tp @a ~-4.32 ~7.4460000000000015 ~-85.006 178.637 69.188
execute if score sys tick matches 726 run tp @a ~-4.257999999999999 ~7.408999999999999 ~-84.92 176.835 68.355
execute if score sys tick matches 727 run tp @a ~-4.196 ~7.372 ~-84.833 175.032 67.523
execute if score sys tick matches 728 run tp @a ~-4.132999999999999 ~7.335000000000001 ~-84.747 173.230 66.690
execute if score sys tick matches 729 run tp @a ~-4.071 ~7.297999999999998 ~-84.661 171.428 65.858
execute if score sys tick matches 730 run tp @a ~-4.007999999999999 ~7.260999999999999 ~-84.574 169.625 65.025
execute if score sys tick matches 731 run tp @a ~-3.9459999999999997 ~7.224 ~-84.488 167.822 64.192
execute if score sys tick matches 732 run tp @a ~-3.882999999999999 ~7.187000000000001 ~-84.402 166.020 63.360
execute if score sys tick matches 733 run tp @a ~-3.8209999999999997 ~7.149999999999999 ~-84.315 164.218 62.528
execute if score sys tick matches 734 run tp @a ~-3.7590000000000003 ~7.1129999999999995 ~-84.229 162.415 61.695
execute if score sys tick matches 735 run tp @a ~-3.6959999999999997 ~7.0760000000000005 ~-84.143 160.613 60.863
execute if score sys tick matches 736 run tp @a ~-3.6340000000000003 ~7.0390000000000015 ~-84.056 158.810 60.030
execute if score sys tick matches 737 run tp @a ~-3.5709999999999997 ~7.001999999999999 ~-83.97 157.007 59.198
execute if score sys tick matches 738 run tp @a ~-3.5090000000000003 ~6.965 ~-83.884 155.205 58.365
execute if score sys tick matches 739 run tp @a ~-3.4459999999999997 ~6.928000000000001 ~-83.797 153.403 57.533
execute if score sys tick matches 740 run tp @a ~-3.3840000000000003 ~6.890999999999998 ~-83.711 151.600 56.700
execute if score sys tick matches 741 run tp @a ~-4.384 ~6.890999999999998 ~-124.71100000000001 151.600 56.700
execute if score sys tick matches 742 run tp @a ~-4.391 ~6.890999999999998 ~-124.72200000000001 151.026 54.787
execute if score sys tick matches 743 run tp @a ~-4.398 ~6.890999999999998 ~-124.732 150.451 52.874
execute if score sys tick matches 744 run tp @a ~-4.404999999999999 ~6.890999999999998 ~-124.743 149.877 50.962
execute if score sys tick matches 745 run tp @a ~-4.412000000000001 ~6.890999999999998 ~-124.75399999999999 149.303 49.049
execute if score sys tick matches 746 run tp @a ~-4.4190000000000005 ~6.890999999999998 ~-124.76499999999999 148.728 47.136
execute if score sys tick matches 747 run tp @a ~-4.426 ~6.890999999999998 ~-124.775 148.154 45.223
execute if score sys tick matches 748 run tp @a ~-4.433 ~6.890999999999998 ~-124.786 147.579 43.310
execute if score sys tick matches 749 run tp @a ~-4.4399999999999995 ~6.890999999999998 ~-124.797 147.005 41.397
execute if score sys tick matches 750 run tp @a ~-4.446999999999999 ~6.890999999999998 ~-124.80699999999999 146.431 39.485
execute if score sys tick matches 751 run tp @a ~-4.454000000000001 ~6.890999999999998 ~-124.81800000000001 145.856 37.572
execute if score sys tick matches 752 run tp @a ~-4.461 ~6.890999999999998 ~-124.82900000000001 145.282 35.659
execute if score sys tick matches 753 run tp @a ~-4.468 ~6.890999999999998 ~-124.84 144.708 33.746
execute if score sys tick matches 754 run tp @a ~-4.475 ~6.890999999999998 ~-124.85 144.133 31.833
execute if score sys tick matches 755 run tp @a ~-4.481999999999999 ~6.890999999999998 ~-124.86099999999999 143.559 29.921
execute if score sys tick matches 756 run tp @a ~-4.489000000000001 ~6.890999999999998 ~-124.87200000000001 142.985 28.008
execute if score sys tick matches 757 run tp @a ~-4.496 ~6.890999999999998 ~-124.882 142.410 26.095
execute if score sys tick matches 758 run tp @a ~-4.503 ~6.890999999999998 ~-124.893 141.836 24.182
execute if score sys tick matches 759 run tp @a ~-4.51 ~6.890999999999998 ~-124.904 141.262 22.269
execute if score sys tick matches 760 run tp @a ~-4.5169999999999995 ~6.890999999999998 ~-124.91499999999999 140.687 20.356
execute if score sys tick matches 761 run tp @a ~-4.525 ~6.890999999999998 ~-124.92500000000001 140.113 18.444
execute if score sys tick matches 762 run tp @a ~-4.532 ~6.890999999999998 ~-124.936 139.538 16.531
execute if score sys tick matches 763 run tp @a ~-4.539 ~6.890999999999998 ~-124.947 138.964 14.618
execute if score sys tick matches 764 run tp @a ~-4.545999999999999 ~6.890999999999998 ~-124.958 138.390 12.705
execute if score sys tick matches 765 run tp @a ~-4.553000000000001 ~6.890999999999998 ~-124.96799999999999 137.815 10.792
execute if score sys tick matches 766 run tp @a ~-4.5600000000000005 ~6.890999999999998 ~-124.97900000000001 137.241 8.879
execute if score sys tick matches 767 run tp @a ~-4.567 ~6.890999999999998 ~-124.99000000000001 136.667 6.967
execute if score sys tick matches 768 run tp @a ~-4.574 ~6.890999999999998 ~-125.0 136.092 5.054
execute if score sys tick matches 769 run tp @a ~-4.5809999999999995 ~6.890999999999998 ~-125.011 135.518 3.141
execute if score sys tick matches 770 run tp @a ~-4.587999999999999 ~6.890999999999998 ~-125.02199999999999 134.944 1.228
execute if score sys tick matches 771 run tp @a ~-4.595000000000001 ~6.890999999999998 ~-125.03299999999999 134.369 -0.685
execute if score sys tick matches 772 run tp @a ~-4.602 ~6.890999999999998 ~-125.043 133.795 -2.597
execute if score sys tick matches 773 run tp @a ~-4.609 ~6.890999999999998 ~-125.054 133.221 -4.510
execute if score sys tick matches 774 run tp @a ~-4.616 ~6.890999999999998 ~-125.065 132.646 -6.423
execute if score sys tick matches 775 run tp @a ~-4.622999999999999 ~6.890999999999998 ~-125.07499999999999 132.072 -8.336
execute if score sys tick matches 776 run tp @a ~-4.630000000000001 ~6.890999999999998 ~-125.08600000000001 131.497 -10.249
execute if score sys tick matches 777 run tp @a ~-4.6370000000000005 ~6.890999999999998 ~-125.09700000000001 130.923 -12.162
execute if score sys tick matches 778 run tp @a ~-4.644 ~6.890999999999998 ~-125.108 130.349 -14.074
execute if score sys tick matches 780..840 run tp @a ~-4.651 ~6.890999999999998 ~-125.118 129.774 -15.987