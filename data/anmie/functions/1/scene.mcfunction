#execute if score sys tick matches %d run 
#tp @a %.3f %.3f %.3f %.3f %.3f
execute if score sys tick matches 1 run function anmie:1/init
execute as @e[tag=a_y1] run function anmie:1/hit
execute as @e[tag=a_y2] run function anmie:1/cut
execute if score sys tick matches 221 run function anmie:1/init2
execute if score sys tick matches 300 run kill @e[tag=ani]
execute as @e[tag=ay] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16701501}}},{}]}

execute if score sys tick matches 0 run tp @a ~-4.337 ~12.865000000000002 ~-4.039999999999999 134.700 15.500
execute if score sys tick matches 1 run tp @a ~-4.349 ~12.865000000000002 ~-4.052 134.700 15.500
execute if score sys tick matches 2 run tp @a ~-4.359999999999999 ~12.865000000000002 ~-4.063000000000001 134.700 15.500
execute if score sys tick matches 3 run tp @a ~-4.372 ~12.865000000000002 ~-4.074999999999999 134.700 15.500
execute if score sys tick matches 4 run tp @a ~-4.384 ~12.865000000000002 ~-4.086 134.700 15.500
execute if score sys tick matches 5 run tp @a ~-4.395 ~12.865000000000002 ~-4.098000000000001 134.700 15.500
execute if score sys tick matches 6 run tp @a ~-4.407 ~12.865000000000002 ~-4.109 134.700 15.500
execute if score sys tick matches 7 run tp @a ~-4.417999999999999 ~12.865000000000002 ~-4.121 134.700 15.500
execute if score sys tick matches 8 run tp @a ~-4.43 ~12.865000000000002 ~-4.132 134.700 15.500
execute if score sys tick matches 9 run tp @a ~-4.442 ~12.865000000000002 ~-4.144 134.700 15.500
execute if score sys tick matches 10 run tp @a ~-4.452999999999999 ~12.865000000000002 ~-4.154999999999999 134.700 15.500
execute if score sys tick matches 11 run tp @a ~-4.465 ~12.865000000000002 ~-4.167 134.700 15.500
execute if score sys tick matches 12 run tp @a ~-4.477 ~12.865000000000002 ~-4.178000000000001 134.700 15.500
execute if score sys tick matches 13 run tp @a ~-4.4879999999999995 ~12.865000000000002 ~-4.1899999999999995 134.700 15.500
execute if score sys tick matches 14 run tp @a ~-4.5 ~12.865000000000002 ~-4.2010000000000005 134.700 15.500
execute if score sys tick matches 15 run tp @a ~-4.510999999999999 ~12.865000000000002 ~-4.212999999999999 134.700 15.500
execute if score sys tick matches 16 run tp @a ~-4.523 ~12.865000000000002 ~-4.224 134.700 15.500
execute if score sys tick matches 17 run tp @a ~-4.535 ~12.865000000000002 ~-4.236000000000001 134.700 15.500
execute if score sys tick matches 18 run tp @a ~-4.545999999999999 ~12.865000000000002 ~-4.247 134.700 15.500
execute if score sys tick matches 19 run tp @a ~-4.558 ~12.865000000000002 ~-4.259 134.700 15.500
execute if score sys tick matches 20 run tp @a ~-4.57 ~12.865000000000002 ~-4.27 134.700 15.500
execute if score sys tick matches 21 run tp @a ~-4.5809999999999995 ~12.865000000000002 ~-4.282 134.700 15.500
execute if score sys tick matches 22 run tp @a ~-4.593 ~12.865000000000002 ~-4.292999999999999 134.700 15.500
execute if score sys tick matches 23 run tp @a ~-4.603999999999999 ~12.865000000000002 ~-4.305 134.700 15.500
execute if score sys tick matches 24 run tp @a ~-4.616 ~12.865000000000002 ~-4.316000000000001 134.700 15.500
execute if score sys tick matches 25 run tp @a ~-4.628 ~12.865000000000002 ~-4.327999999999999 134.700 15.500
execute if score sys tick matches 26 run tp @a ~-4.638999999999999 ~12.865000000000002 ~-4.339 134.700 15.500
execute if score sys tick matches 27 run tp @a ~-4.651 ~12.865000000000002 ~-4.351000000000001 134.700 15.500
execute if score sys tick matches 28 run tp @a ~-4.663 ~12.865000000000002 ~-4.362 134.700 15.500
execute if score sys tick matches 29 run tp @a ~-4.6739999999999995 ~12.865000000000002 ~-4.3740000000000006 134.700 15.500
execute if score sys tick matches 30 run tp @a ~-4.686 ~12.865000000000002 ~-4.385 134.700 15.500
execute if score sys tick matches 31 run tp @a ~-4.698 ~12.865000000000002 ~-4.397 134.700 15.500
execute if score sys tick matches 32 run tp @a ~-4.709 ~12.865000000000002 ~-4.4079999999999995 134.700 15.500
execute if score sys tick matches 33 run tp @a ~-4.721 ~12.865000000000002 ~-4.42 134.700 15.500
execute if score sys tick matches 34 run tp @a ~-4.731999999999999 ~12.865000000000002 ~-4.430999999999999 134.700 15.500
execute if score sys tick matches 35 run tp @a ~-4.744 ~12.865000000000002 ~-4.443 134.700 15.500
execute if score sys tick matches 36 run tp @a ~-4.756 ~12.865000000000002 ~-4.454000000000001 134.700 15.500
execute if score sys tick matches 37 run tp @a ~-4.7669999999999995 ~12.865000000000002 ~-4.465999999999999 134.700 15.500
execute if score sys tick matches 38 run tp @a ~-4.779 ~12.865000000000002 ~-4.477 134.700 15.500
execute if score sys tick matches 39 run tp @a ~-4.791 ~12.865000000000002 ~-4.489000000000001 134.700 15.500
execute if score sys tick matches 40 run tp @a ~-4.802 ~12.865000000000002 ~-4.5 134.700 15.500
execute if score sys tick matches 41 run tp @a ~-4.814 ~12.865000000000002 ~-4.5120000000000005 134.700 15.500
execute if score sys tick matches 42 run tp @a ~-4.824999999999999 ~12.865000000000002 ~-4.523 134.700 15.500
execute if score sys tick matches 43 run tp @a ~-4.837 ~12.865000000000002 ~-4.535 134.700 15.500
execute if score sys tick matches 44 run tp @a ~-4.849 ~12.865000000000002 ~-4.545999999999999 134.700 15.500
execute if score sys tick matches 45 run tp @a ~-4.859999999999999 ~12.865000000000002 ~-4.558 134.700 15.500
execute if score sys tick matches 46 run tp @a ~-4.872 ~12.865000000000002 ~-4.569000000000001 134.700 15.500
execute if score sys tick matches 47 run tp @a ~-4.884 ~12.865000000000002 ~-4.5809999999999995 134.700 15.500
execute if score sys tick matches 48 run tp @a ~-4.895 ~12.865000000000002 ~-4.5920000000000005 134.700 15.500
execute if score sys tick matches 49 run tp @a ~-4.907 ~12.865000000000002 ~-4.603999999999999 134.700 15.500
execute if score sys tick matches 50 run tp @a ~-4.917999999999999 ~12.865000000000002 ~-4.616 134.700 15.500
execute if score sys tick matches 51 run tp @a ~-4.93 ~12.865000000000002 ~-4.627000000000001 134.700 15.500
execute if score sys tick matches 52 run tp @a ~-4.942 ~12.865000000000002 ~-4.638999999999999 134.700 15.500
execute if score sys tick matches 53 run tp @a ~-4.952999999999999 ~12.865000000000002 ~-4.65 134.700 15.500
execute if score sys tick matches 54 run tp @a ~-4.965 ~12.865000000000002 ~-4.662000000000001 134.700 15.500
execute if score sys tick matches 55 run tp @a ~-4.977 ~12.865000000000002 ~-4.673 134.700 15.500
execute if score sys tick matches 56 run tp @a ~-4.9879999999999995 ~12.865000000000002 ~-4.6850000000000005 134.700 15.500
execute if score sys tick matches 57 run tp @a ~-5.0 ~12.865000000000002 ~-4.696 134.700 15.500
execute if score sys tick matches 58 run tp @a ~-5.0120000000000005 ~12.865000000000002 ~-4.708 134.700 15.500
execute if score sys tick matches 59 run tp @a ~-5.023 ~12.865000000000002 ~-4.718999999999999 134.700 15.500
execute if score sys tick matches 60 run tp @a ~-5.035 ~12.865000000000002 ~-4.731 134.700 15.500
execute if score sys tick matches 61 run tp @a ~-5.045999999999999 ~12.865000000000002 ~-4.742000000000001 134.700 15.500
execute if score sys tick matches 62 run tp @a ~-5.058 ~12.865000000000002 ~-4.754 134.700 15.500
execute if score sys tick matches 63 run tp @a ~-5.07 ~12.865000000000002 ~-4.765000000000001 134.700 15.500
execute if score sys tick matches 64 run tp @a ~-5.0809999999999995 ~12.865000000000002 ~-4.776999999999999 134.700 15.500
execute if score sys tick matches 65 run tp @a ~-5.093 ~12.865000000000002 ~-4.788 134.700 15.500
execute if score sys tick matches 66 run tp @a ~-5.105 ~12.865000000000002 ~-4.800000000000001 134.700 15.500
execute if score sys tick matches 67 run tp @a ~-5.116 ~12.865000000000002 ~-4.811 134.700 15.500
execute if score sys tick matches 68 run tp @a ~-5.128 ~12.865000000000002 ~-4.823 134.700 15.500
execute if score sys tick matches 69 run tp @a ~-5.138999999999999 ~12.865000000000002 ~-4.834 134.700 15.500
execute if score sys tick matches 70 run tp @a ~-5.151 ~12.865000000000002 ~-4.846 134.700 15.500
execute if score sys tick matches 71 run tp @a ~-5.163 ~12.865000000000002 ~-4.856999999999999 134.700 15.500
execute if score sys tick matches 72 run tp @a ~-5.1739999999999995 ~12.865000000000002 ~-4.869 134.700 15.500
execute if score sys tick matches 73 run tp @a ~-5.186 ~12.865000000000002 ~-4.880000000000001 134.700 15.500
execute if score sys tick matches 74 run tp @a ~-5.198 ~12.865000000000002 ~-4.8919999999999995 134.700 15.500
execute if score sys tick matches 75 run tp @a ~-5.209 ~12.865000000000002 ~-4.9030000000000005 134.700 15.500
execute if score sys tick matches 76 run tp @a ~-5.221 ~12.865000000000002 ~-4.914999999999999 134.700 15.500
execute if score sys tick matches 77 run tp @a ~-5.2330000000000005 ~12.865000000000002 ~-4.926 134.700 15.500
execute if score sys tick matches 78 run tp @a ~-5.244 ~12.865000000000002 ~-4.938000000000001 134.700 15.500
execute if score sys tick matches 79 run tp @a ~-5.256 ~12.865000000000002 ~-4.949 134.700 15.500
execute if score sys tick matches 80 run tp @a ~-5.2669999999999995 ~12.865000000000002 ~-4.961 134.700 15.500
execute if score sys tick matches 81 run tp @a ~-5.279 ~12.865000000000002 ~-4.9719999999999995 134.700 15.500
execute if score sys tick matches 82 run tp @a ~-5.291 ~12.865000000000002 ~-4.984 134.700 15.500
execute if score sys tick matches 83 run tp @a ~-5.302 ~12.865000000000002 ~-4.994999999999999 134.700 15.500
execute if score sys tick matches 84 run tp @a ~-5.314 ~12.865000000000002 ~-5.007 134.700 15.500
execute if score sys tick matches 85 run tp @a ~-5.3260000000000005 ~12.865000000000002 ~-5.018000000000001 134.700 15.500
execute if score sys tick matches 86 run tp @a ~-5.337 ~12.865000000000002 ~-5.029999999999999 134.700 15.500
execute if score sys tick matches 87 run tp @a ~-5.349 ~12.865000000000002 ~-5.041 134.700 15.500
execute if score sys tick matches 88 run tp @a ~-5.359999999999999 ~12.865000000000002 ~-5.053000000000001 134.700 15.500
execute if score sys tick matches 89 run tp @a ~-5.372 ~12.865000000000002 ~-5.064 134.700 15.500
execute if score sys tick matches 90 run tp @a ~-5.384 ~12.865000000000002 ~-5.0760000000000005 134.700 15.500
execute if score sys tick matches 91 run tp @a ~-5.395 ~12.865000000000002 ~-5.087 134.700 15.500
execute if score sys tick matches 92 run tp @a ~-5.407 ~12.865000000000002 ~-5.099 134.700 15.500
execute if score sys tick matches 93 run tp @a ~-5.4190000000000005 ~12.865000000000002 ~-5.109999999999999 134.700 15.500
execute if score sys tick matches 94 run tp @a ~-5.43 ~12.865000000000002 ~-5.122 134.700 15.500
execute if score sys tick matches 95 run tp @a ~-5.442 ~12.865000000000002 ~-5.132999999999999 134.700 15.500
execute if score sys tick matches 96 run tp @a ~-5.452999999999999 ~12.865000000000002 ~-5.145 134.700 15.500
execute if score sys tick matches 97 run tp @a ~-5.465 ~12.865000000000002 ~-5.156000000000001 134.700 15.500
execute if score sys tick matches 98 run tp @a ~-5.477 ~12.865000000000002 ~-5.167999999999999 134.700 15.500
execute if score sys tick matches 99 run tp @a ~-5.4879999999999995 ~12.865000000000002 ~-5.179 134.700 15.500
execute if score sys tick matches 100 run tp @a ~-5.5 ~12.865000000000002 ~-5.191000000000001 134.700 15.500
execute if score sys tick matches 101 run tp @a ~-10.483 ~12.168 ~-17.329 -151.200 27.200
execute if score sys tick matches 102 run tp @a ~-10.501999999999999 ~12.168 ~-17.358 -150.534 27.237
execute if score sys tick matches 103 run tp @a ~-10.52 ~12.168 ~-17.388 -149.868 27.275
execute if score sys tick matches 104 run tp @a ~-10.539000000000001 ~12.168 ~-17.417 -149.202 27.312
execute if score sys tick matches 105 run tp @a ~-10.558 ~12.168 ~-17.446 -148.536 27.349
execute if score sys tick matches 106 run tp @a ~-10.577000000000002 ~12.168 ~-17.476 -147.869 27.386
execute if score sys tick matches 107 run tp @a ~-10.594999999999999 ~12.168 ~-17.505 -147.203 27.424
execute if score sys tick matches 108 run tp @a ~-10.614 ~12.168 ~-17.534 -146.537 27.461
execute if score sys tick matches 109 run tp @a ~-10.633 ~12.168 ~-17.564 -145.871 27.498
execute if score sys tick matches 110 run tp @a ~-10.651 ~12.168 ~-17.593 -145.205 27.536
execute if score sys tick matches 111 run tp @a ~-10.670000000000002 ~12.168 ~-17.622 -144.539 27.573
execute if score sys tick matches 112 run tp @a ~-10.689 ~12.168 ~-17.652 -143.873 27.610
execute if score sys tick matches 113 run tp @a ~-10.707999999999998 ~12.168 ~-17.681 -143.207 27.647
execute if score sys tick matches 114 run tp @a ~-10.725999999999999 ~12.168 ~-17.71 -142.541 27.685
execute if score sys tick matches 115 run tp @a ~-10.745000000000001 ~12.168 ~-17.74 -141.875 27.722
execute if score sys tick matches 116 run tp @a ~-10.764 ~12.168 ~-17.769 -141.208 27.759
execute if score sys tick matches 117 run tp @a ~-10.782 ~12.168 ~-17.798 -140.542 27.797
execute if score sys tick matches 118 run tp @a ~-10.800999999999998 ~12.168 ~-17.828 -139.876 27.834
execute if score sys tick matches 119 run tp @a ~-10.82 ~12.168 ~-17.857 -139.210 27.871
execute if score sys tick matches 120 run tp @a ~-10.838999999999999 ~12.168 ~-17.886 -138.544 27.908
execute if score sys tick matches 121 run tp @a ~-10.857 ~12.168 ~-17.916 -137.878 27.946
execute if score sys tick matches 122 run tp @a ~-10.876000000000001 ~12.168 ~-17.945 -137.212 27.983
execute if score sys tick matches 123 run tp @a ~-10.895 ~12.168 ~-17.974 -136.546 28.020
execute if score sys tick matches 124 run tp @a ~-10.913 ~12.168 ~-18.004 -135.880 28.058
execute if score sys tick matches 125 run tp @a ~-10.931999999999999 ~12.168 ~-18.033 -135.214 28.095
execute if score sys tick matches 126 run tp @a ~-10.951 ~12.168 ~-18.062 -134.547 28.132
execute if score sys tick matches 127 run tp @a ~-10.969999999999999 ~12.168 ~-18.092 -133.881 28.169
execute if score sys tick matches 128 run tp @a ~-10.988 ~12.168 ~-18.121 -133.215 28.207
execute if score sys tick matches 129 run tp @a ~-11.007000000000001 ~12.168 ~-18.15 -132.549 28.244
execute if score sys tick matches 130 run tp @a ~-11.026 ~12.168 ~-18.18 -131.883 28.281
execute if score sys tick matches 131 run tp @a ~-11.044 ~12.168 ~-18.209 -131.217 28.319
execute if score sys tick matches 132 run tp @a ~-11.062999999999999 ~12.168 ~-18.239 -130.551 28.356
execute if score sys tick matches 133 run tp @a ~-11.082 ~12.168 ~-18.268 -129.885 28.393
execute if score sys tick matches 134 run tp @a ~-11.100000000000001 ~12.168 ~-18.297 -129.219 28.431
execute if score sys tick matches 135 run tp @a ~-11.119 ~12.168 ~-18.327 -128.553 28.468
execute if score sys tick matches 136 run tp @a ~-11.138000000000002 ~12.168 ~-18.356 -127.886 28.505
execute if score sys tick matches 137 run tp @a ~-11.157 ~12.168 ~-18.385 -127.220 28.542
execute if score sys tick matches 138 run tp @a ~-11.175 ~12.168 ~-18.415 -126.554 28.580
execute if score sys tick matches 139 run tp @a ~-11.193999999999999 ~12.168 ~-18.444 -125.888 28.617
execute if score sys tick matches 140 run tp @a ~-11.213000000000001 ~12.168 ~-18.473 -125.222 28.654
execute if score sys tick matches 141 run tp @a ~-11.231000000000002 ~12.168 ~-18.503 -124.556 28.692
execute if score sys tick matches 142 run tp @a ~-11.25 ~12.168 ~-18.532 -123.890 28.729
execute if score sys tick matches 143 run tp @a ~-11.268999999999998 ~12.168 ~-18.561 -123.224 28.766
execute if score sys tick matches 144 run tp @a ~-11.288 ~12.168 ~-18.591 -122.558 28.803
execute if score sys tick matches 145 run tp @a ~-11.306000000000001 ~12.168 ~-18.62 -121.892 28.841
execute if score sys tick matches 146 run tp @a ~-11.325 ~12.168 ~-18.649 -121.225 28.878
execute if score sys tick matches 147 run tp @a ~-11.344000000000001 ~12.168 ~-18.679 -120.559 28.915
execute if score sys tick matches 148 run tp @a ~-11.361999999999998 ~12.168 ~-18.708 -119.893 28.953
execute if score sys tick matches 149 run tp @a ~-11.381 ~12.168 ~-18.737 -119.227 28.990
execute if score sys tick matches 150 run tp @a ~-11.399999999999999 ~12.168 ~-18.767 -118.561 29.027
execute if score sys tick matches 151 run tp @a ~-11.419 ~12.168 ~-18.796 -117.895 29.064
execute if score sys tick matches 152 run tp @a ~-11.437000000000001 ~12.168 ~-18.825 -117.229 29.102
execute if score sys tick matches 153 run tp @a ~-11.456 ~12.168 ~-18.855 -116.563 29.139
execute if score sys tick matches 154 run tp @a ~-11.475000000000001 ~12.168 ~-18.884 -115.897 29.176
execute if score sys tick matches 155 run tp @a ~-11.492999999999999 ~12.168 ~-18.913 -115.231 29.214
execute if score sys tick matches 156 run tp @a ~-11.512 ~12.168 ~-18.943 -114.564 29.251
execute if score sys tick matches 157 run tp @a ~-11.530999999999999 ~12.168 ~-18.972 -113.898 29.288
execute if score sys tick matches 158 run tp @a ~-11.55 ~12.168 ~-19.001 -113.232 29.325
execute if score sys tick matches 159 run tp @a ~-11.568000000000001 ~12.168 ~-19.031 -112.566 29.363
execute if score sys tick matches 160 run tp @a ~-11.587 ~12.168 ~-19.06 -111.900 29.400
execute if score sys tick matches 161 run tp @a ~-9.978000000000002 ~11.895000000000003 ~-7.475000000000001 30.500 19.100
execute if score sys tick matches 162 run tp @a ~-10.015 ~11.887999999999998 ~-7.469999999999999 29.939 19.110
execute if score sys tick matches 163 run tp @a ~-10.053 ~11.881999999999998 ~-7.463999999999999 29.378 19.120
execute if score sys tick matches 164 run tp @a ~-10.09 ~11.875999999999998 ~-7.459 28.817 19.131
execute if score sys tick matches 165 run tp @a ~-10.126999999999999 ~11.869999999999997 ~-7.454000000000001 28.256 19.141
execute if score sys tick matches 166 run tp @a ~-10.165 ~11.863 ~-7.448 27.695 19.151
execute if score sys tick matches 167 run tp @a ~-10.202000000000002 ~11.857 ~-7.443000000000001 27.134 19.161
execute if score sys tick matches 168 run tp @a ~-10.239 ~11.850999999999999 ~-7.437000000000001 26.573 19.171
execute if score sys tick matches 169 run tp @a ~-10.276 ~11.844999999999999 ~-7.431999999999999 26.012 19.181
execute if score sys tick matches 170 run tp @a ~-10.314 ~11.838000000000001 ~-7.427 25.451 19.192
execute if score sys tick matches 171 run tp @a ~-10.350999999999999 ~11.832 ~-7.420999999999999 24.890 19.202
execute if score sys tick matches 172 run tp @a ~-10.388000000000002 ~11.826 ~-7.416 24.329 19.212
execute if score sys tick matches 173 run tp @a ~-10.425999999999998 ~11.82 ~-7.411000000000001 23.768 19.222
execute if score sys tick matches 174 run tp @a ~-10.463000000000001 ~11.813000000000002 ~-7.405000000000001 23.207 19.232
execute if score sys tick matches 175 run tp @a ~-10.5 ~11.807000000000002 ~-7.399999999999999 22.646 19.242
execute if score sys tick matches 176 run tp @a ~-10.538 ~11.801000000000002 ~-7.393999999999998 22.085 19.253
execute if score sys tick matches 177 run tp @a ~-10.575 ~11.795000000000002 ~-7.388999999999999 21.524 19.263
execute if score sys tick matches 178 run tp @a ~-10.611999999999998 ~11.787999999999997 ~-7.384 20.963 19.273
execute if score sys tick matches 179 run tp @a ~-10.649000000000001 ~11.781999999999996 ~-7.378 20.402 19.283
execute if score sys tick matches 180 run tp @a ~-10.687000000000001 ~11.776000000000003 ~-7.373000000000001 19.841 19.293
execute if score sys tick matches 181 run tp @a ~-10.724 ~11.770000000000003 ~-7.3679999999999986 19.280 19.303
execute if score sys tick matches 182 run tp @a ~-10.761 ~11.762999999999998 ~-7.361999999999998 18.719 19.314
execute if score sys tick matches 183 run tp @a ~-10.799 ~11.756999999999998 ~-7.356999999999999 18.158 19.324
execute if score sys tick matches 184 run tp @a ~-10.835999999999999 ~11.750999999999998 ~-7.350999999999999 17.597 19.334
execute if score sys tick matches 185 run tp @a ~-10.873000000000001 ~11.744999999999997 ~-7.346 17.036 19.344
execute if score sys tick matches 186 run tp @a ~-10.911000000000001 ~11.738 ~-7.341000000000001 16.475 19.354
execute if score sys tick matches 187 run tp @a ~-10.948 ~11.732 ~-7.335000000000001 15.914 19.364
execute if score sys tick matches 188 run tp @a ~-10.985 ~11.725999999999999 ~-7.329999999999998 15.353 19.375
execute if score sys tick matches 189 run tp @a ~-11.023 ~11.719999999999999 ~-7.324999999999999 14.792 19.385
execute if score sys tick matches 190 run tp @a ~-11.059999999999999 ~11.713000000000001 ~-7.318999999999999 14.231 19.395
execute if score sys tick matches 191 run tp @a ~-11.097000000000001 ~11.707 ~-7.314 13.669 19.405
execute if score sys tick matches 192 run tp @a ~-11.134 ~11.701 ~-7.308 13.108 19.415
execute if score sys tick matches 193 run tp @a ~-11.172 ~11.695 ~-7.303000000000001 12.547 19.425
execute if score sys tick matches 194 run tp @a ~-11.209 ~11.688000000000002 ~-7.297999999999998 11.986 19.436
execute if score sys tick matches 195 run tp @a ~-11.245999999999999 ~11.682000000000002 ~-7.292000000000002 11.425 19.446
execute if score sys tick matches 196 run tp @a ~-11.283999999999999 ~11.676000000000002 ~-7.286999999999999 10.864 19.456
execute if score sys tick matches 197 run tp @a ~-11.321000000000002 ~11.670000000000002 ~-7.282 10.303 19.466
execute if score sys tick matches 198 run tp @a ~-11.358 ~11.662999999999997 ~-7.276 9.742 19.476
execute if score sys tick matches 199 run tp @a ~-11.396 ~11.656999999999996 ~-7.271000000000001 9.181 19.486
execute if score sys tick matches 200 run tp @a ~-11.433 ~11.651000000000003 ~-7.265000000000001 8.620 19.497
execute if score sys tick matches 201 run tp @a ~-11.469999999999999 ~11.645000000000003 ~-7.260000000000002 8.059 19.507
execute if score sys tick matches 202 run tp @a ~-11.508 ~11.637999999999998 ~-7.254999999999999 7.498 19.517
execute if score sys tick matches 203 run tp @a ~-11.545000000000002 ~11.631999999999998 ~-7.248999999999999 6.937 19.527
execute if score sys tick matches 204 run tp @a ~-11.582 ~11.625999999999998 ~-7.244 6.376 19.537
execute if score sys tick matches 205 run tp @a ~-11.619 ~11.619999999999997 ~-7.239000000000001 5.815 19.547
execute if score sys tick matches 206 run tp @a ~-11.657 ~11.613 ~-7.2330000000000005 5.254 19.558
execute if score sys tick matches 207 run tp @a ~-11.693999999999999 ~11.607 ~-7.2280000000000015 4.693 19.568
execute if score sys tick matches 208 run tp @a ~-11.731000000000002 ~11.600999999999999 ~-7.222000000000001 4.132 19.578
execute if score sys tick matches 209 run tp @a ~-11.768999999999998 ~11.594999999999999 ~-7.216999999999999 3.571 19.588
execute if score sys tick matches 210 run tp @a ~-11.806000000000001 ~11.588000000000001 ~-7.212 3.010 19.598
execute if score sys tick matches 211 run tp @a ~-11.843 ~11.582 ~-7.2059999999999995 2.449 19.608
execute if score sys tick matches 212 run tp @a ~-11.881 ~11.576 ~-7.2010000000000005 1.888 19.619
execute if score sys tick matches 213 run tp @a ~-11.918 ~11.57 ~-7.1960000000000015 1.327 19.629
execute if score sys tick matches 214 run tp @a ~-11.954999999999998 ~11.563000000000002 ~-7.190000000000001 0.766 19.639
execute if score sys tick matches 215 run tp @a ~-11.992 ~11.557000000000002 ~-7.184999999999999 0.205 19.649
execute if score sys tick matches 216 run tp @a ~-12.030000000000001 ~11.551000000000002 ~-7.1789999999999985 -0.356 19.659
execute if score sys tick matches 217 run tp @a ~-12.067 ~11.545000000000002 ~-7.1739999999999995 -0.917 19.669
execute if score sys tick matches 218 run tp @a ~-12.104 ~11.537999999999997 ~-7.1690000000000005 -1.478 19.680
execute if score sys tick matches 219 run tp @a ~-12.142 ~11.531999999999996 ~-7.163 -2.039 19.690
execute if score sys tick matches 220 run tp @a ~-12.178999999999998 ~11.526000000000003 ~-7.158000000000001 -2.600 19.700
execute if score sys tick matches 221 run tp @a ~-13.039000000000001 ~13.033000000000001 ~-10.379000000000001 -43.100 47.300
execute if score sys tick matches 222 run tp @a ~-12.974 ~13.073 ~-10.311 -40.732 48.411
execute if score sys tick matches 223 run tp @a ~-12.908000000000001 ~13.113 ~-10.242 -38.363 49.521
execute if score sys tick matches 224 run tp @a ~-12.843 ~13.152999999999999 ~-10.174 -35.995 50.632
execute if score sys tick matches 225 run tp @a ~-12.777000000000001 ~13.192999999999998 ~-10.106000000000002 -33.626 51.742
execute if score sys tick matches 226 run tp @a ~-12.712 ~13.232999999999997 ~-10.036999999999999 -31.258 52.853
execute if score sys tick matches 227 run tp @a ~-12.646 ~13.273000000000003 ~-9.969000000000001 -28.889 53.963
execute if score sys tick matches 228 run tp @a ~-12.581 ~13.313000000000002 ~-9.901 -26.521 55.074
execute if score sys tick matches 229 run tp @a ~-12.515 ~13.353000000000002 ~-9.832 -24.153 56.184
execute if score sys tick matches 230 run tp @a ~-12.45 ~13.393 ~-9.764 -21.784 57.295
execute if score sys tick matches 231 run tp @a ~-12.384 ~13.433 ~-9.696000000000002 -19.416 58.405
execute if score sys tick matches 232 run tp @a ~-12.318999999999999 ~13.472999999999999 ~-9.628 -17.047 59.516
execute if score sys tick matches 233 run tp @a ~-12.253 ~13.512999999999998 ~-9.559000000000001 -14.679 60.626
execute if score sys tick matches 234 run tp @a ~-12.187999999999999 ~13.552999999999997 ~-9.491 -12.311 61.737
execute if score sys tick matches 235 run tp @a ~-12.122 ~13.593000000000004 ~-9.422999999999998 -9.942 62.847
execute if score sys tick matches 236 run tp @a ~-12.056999999999999 ~13.633000000000003 ~-9.354 -7.574 63.958
execute if score sys tick matches 237 run tp @a ~-11.991 ~13.673000000000002 ~-9.286000000000001 -5.205 65.068
execute if score sys tick matches 238 run tp @a ~-11.925999999999998 ~13.713000000000001 ~-9.218 -2.837 66.179
execute if score sys tick matches 239 run tp @a ~-11.86 ~13.753 ~-9.149000000000001 -0.468 67.289
execute if score sys tick matches 240 run tp @a ~-11.795000000000002 ~13.793 ~-9.081 1.900 68.400
execute if score sys tick matches 241 run tp @a ~-11.73 ~13.832999999999998 ~-9.013000000000002 4.268 69.511
execute if score sys tick matches 242 run tp @a ~-11.664000000000001 ~13.872999999999998 ~-8.943999999999999 6.637 70.621
execute if score sys tick matches 243 run tp @a ~-11.599 ~13.912999999999997 ~-8.876000000000001 9.005 71.732
execute if score sys tick matches 244 run tp @a ~-11.533000000000001 ~13.953000000000003 ~-8.808 11.374 72.842
execute if score sys tick matches 245 run tp @a ~-11.468 ~13.993000000000002 ~-8.739 13.742 73.953
execute if score sys tick matches 246 run tp @a ~-11.402000000000001 ~14.033000000000001 ~-8.671 16.111 75.063
execute if score sys tick matches 247 run tp @a ~-11.337 ~14.073 ~-8.603000000000002 18.479 76.174
execute if score sys tick matches 248 run tp @a ~-11.271 ~14.113 ~-8.533999999999999 20.847 77.284
execute if score sys tick matches 249 run tp @a ~-11.206 ~14.152999999999999 ~-8.466000000000001 23.216 78.395
execute if score sys tick matches 250 run tp @a ~-11.14 ~14.192999999999998 ~-8.398 25.584 79.505
execute if score sys tick matches 251 run tp @a ~-11.075 ~14.232999999999997 ~-8.329999999999998 27.953 80.616
execute if score sys tick matches 252 run tp @a ~-11.009 ~14.273000000000003 ~-8.261 30.321 81.726
execute if score sys tick matches 253 run tp @a ~-10.943999999999999 ~14.313000000000002 ~-8.193000000000001 32.689 82.837
execute if score sys tick matches 254 run tp @a ~-10.878 ~14.353000000000002 ~-8.125 35.058 83.947
execute if score sys tick matches 255 run tp @a ~-10.812999999999999 ~14.393 ~-8.056000000000001 37.426 85.058
execute if score sys tick matches 256 run tp @a ~-10.747 ~14.433 ~-7.9879999999999995 39.795 86.168
execute if score sys tick matches 257 run tp @a ~-10.681999999999999 ~14.472999999999999 ~-7.920000000000002 42.163 87.279
execute if score sys tick matches 258 run tp @a ~-10.616 ~14.512999999999998 ~-7.850999999999999 44.532 88.389
execute if score sys tick matches 259 run tp @a ~-10.550999999999998 ~14.552999999999997 ~-7.783000000000001 46.900 89.500
execute if score sys tick matches 260 run tp @a ~-10.472000000000001 ~14.508000000000003 ~-7.704999999999998 48.963 88.241
execute if score sys tick matches 261 run tp @a ~-10.392 ~14.462000000000003 ~-7.626000000000001 51.027 86.983
execute if score sys tick matches 262 run tp @a ~-10.312999999999999 ~14.417000000000002 ~-7.547999999999998 53.090 85.724
execute if score sys tick matches 263 run tp @a ~-10.233 ~14.371000000000002 ~-7.469999999999999 55.154 84.466
execute if score sys tick matches 264 run tp @a ~-10.154 ~14.326 ~-7.390999999999998 57.217 83.207
execute if score sys tick matches 265 run tp @a ~-10.074000000000002 ~14.280999999999999 ~-7.312999999999999 59.280 81.949
execute if score sys tick matches 266 run tp @a ~-9.995000000000001 ~14.235 ~-7.234000000000002 61.344 80.690
execute if score sys tick matches 267 run tp @a ~-9.915 ~14.189999999999998 ~-7.155999999999999 63.407 79.432
execute if score sys tick matches 268 run tp @a ~-9.835999999999999 ~14.143999999999998 ~-7.077999999999999 65.471 78.173
execute if score sys tick matches 269 run tp @a ~-9.756 ~14.098999999999997 ~-6.998999999999999 67.534 76.915
execute if score sys tick matches 270 run tp @a ~-9.677 ~14.052999999999997 ~-6.920999999999999 69.598 75.656
execute if score sys tick matches 271 run tp @a ~-9.597000000000001 ~14.008000000000003 ~-6.843 71.661 74.398
execute if score sys tick matches 272 run tp @a ~-9.518 ~13.962000000000003 ~-6.763999999999999 73.724 73.139
execute if score sys tick matches 273 run tp @a ~-9.439 ~13.917000000000002 ~-6.686 75.788 71.880
execute if score sys tick matches 274 run tp @a ~-9.359000000000002 ~13.871000000000002 ~-6.6080000000000005 77.851 70.622
execute if score sys tick matches 275 run tp @a ~-9.280000000000001 ~13.826 ~-6.529 79.915 69.363
execute if score sys tick matches 276 run tp @a ~-9.2 ~13.780000000000001 ~-6.4510000000000005 81.978 68.105
execute if score sys tick matches 277 run tp @a ~-9.120999999999999 ~13.735 ~-6.372 84.041 66.846
execute if score sys tick matches 278 run tp @a ~-9.041 ~13.689999999999998 ~-6.2940000000000005 86.105 65.588
execute if score sys tick matches 279 run tp @a ~-8.962 ~13.643999999999998 ~-6.216000000000001 88.168 64.329
execute if score sys tick matches 280 run tp @a ~-8.882000000000001 ~13.598999999999997 ~-6.1370000000000005 90.232 63.071
execute if score sys tick matches 281 run tp @a ~-8.803 ~13.552999999999997 ~-6.059000000000001 92.295 61.812
execute if score sys tick matches 282 run tp @a ~-8.722999999999999 ~13.508000000000003 ~-5.981000000000002 94.359 60.554
execute if score sys tick matches 283 run tp @a ~-8.643999999999998 ~13.462000000000003 ~-5.902000000000001 96.422 59.295
execute if score sys tick matches 284 run tp @a ~-8.564 ~13.417000000000002 ~-5.824000000000002 98.485 58.037
execute if score sys tick matches 285 run tp @a ~-8.485 ~13.371000000000002 ~-5.745000000000001 100.549 56.778
execute if score sys tick matches 286 run tp @a ~-8.405000000000001 ~13.326 ~-5.667000000000002 102.612 55.520
execute if score sys tick matches 287 run tp @a ~-8.326 ~13.280000000000001 ~-5.588999999999999 104.676 54.261
execute if score sys tick matches 288 run tp @a ~-8.247 ~13.235 ~-5.510000000000002 106.739 53.002
execute if score sys tick matches 289 run tp @a ~-8.167000000000002 ~13.189999999999998 ~-5.432 108.802 51.744
execute if score sys tick matches 290 run tp @a ~-8.088000000000001 ~13.143999999999998 ~-5.353999999999999 110.866 50.485
execute if score sys tick matches 291 run tp @a ~-8.008 ~13.098999999999997 ~-5.275 112.929 49.227
execute if score sys tick matches 292 run tp @a ~-7.9289999999999985 ~13.052999999999997 ~-5.196999999999999 114.993 47.968
execute if score sys tick matches 293 run tp @a ~-7.849 ~13.008000000000003 ~-5.119 117.056 46.710
execute if score sys tick matches 294 run tp @a ~-7.77 ~12.962000000000003 ~-5.039999999999999 119.120 45.451
execute if score sys tick matches 295 run tp @a ~-7.690000000000001 ~12.917000000000002 ~-4.962 121.183 44.193
execute if score sys tick matches 296 run tp @a ~-7.611000000000001 ~12.871000000000002 ~-4.882999999999999 123.246 42.934
execute if score sys tick matches 297 run tp @a ~-7.530999999999999 ~12.826 ~-4.805 125.310 41.676
execute if score sys tick matches 298 run tp @a ~-7.452000000000002 ~12.780000000000001 ~-4.727 127.373 40.417
execute if score sys tick matches 299..360 run tp @a ~-7.372 ~12.735 ~-4.648 129.437 39.159