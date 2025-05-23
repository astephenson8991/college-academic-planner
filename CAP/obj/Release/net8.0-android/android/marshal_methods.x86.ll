; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [125 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [250 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 42244203, ; 1: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 115
	i32 67008169, ; 3: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 4: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 83839681, ; 5: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 109
	i32 136584136, ; 7: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 8: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 58
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 76
	i32 205061960, ; 11: System.ComponentModel => 0xc38ff48 => 93
	i32 317674968, ; 12: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 54
	i32 321963286, ; 14: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 65
	i32 347068432, ; 16: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 52
	i32 379916513, ; 17: System.Threading.Thread.dll => 0x16a510e1 => 115
	i32 385762202, ; 18: System.Memory.dll => 0x16fe439a => 100
	i32 395744057, ; 19: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 20: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 21: System.Collections => 0x1a61054f => 90
	i32 450948140, ; 22: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 456227837, ; 23: System.Web.HttpUtility.dll => 0x1b317bfd => 117
	i32 469710990, ; 24: System.dll => 0x1bff388e => 119
	i32 489220957, ; 25: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 26: System.ObjectModel => 0x1dbae811 => 105
	i32 504143952, ; 27: Plugin.LocalNotification.dll => 0x1e0ca050 => 48
	i32 513247710, ; 28: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 538707440, ; 29: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 30: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 627609679, ; 31: Xamarin.AndroidX.CustomView => 0x2568904f => 62
	i32 627931235, ; 32: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 33: System.Text.Encodings.Web.dll => 0x27787397 => 112
	i32 663517072, ; 34: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 77
	i32 672442732, ; 35: System.Collections.Concurrent => 0x2814a96c => 88
	i32 748832960, ; 36: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 50
	i32 759454413, ; 37: System.Net.Requests => 0x2d445acd => 103
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 97
	i32 777317022, ; 39: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 40: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 823281589, ; 41: System.Private.Uri.dll => 0x311247b5 => 106
	i32 830298997, ; 42: System.IO.Compression.Brotli => 0x317d5b75 => 96
	i32 869139383, ; 43: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 44: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 45: System.ComponentModel.Primitives.dll => 0x35e25008 => 91
	i32 918734561, ; 46: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 961460050, ; 47: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 48: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 65
	i32 990727110, ; 49: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 50: System.Collections.dll => 0x3b2c715c => 90
	i32 1012816738, ; 51: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 75
	i32 1028951442, ; 52: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 55
	i32 1043950537, ; 54: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 55: System.Linq.Expressions.dll => 0x3e444eb4 => 98
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 67
	i32 1082857460, ; 57: System.ComponentModel.TypeConverter => 0x408b17f4 => 92
	i32 1084122840, ; 58: Xamarin.Kotlin.StdLib => 0x409e66d8 => 85
	i32 1098259244, ; 59: System => 0x41761b2c => 119
	i32 1108272742, ; 60: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 61: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 62: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 63: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 64: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 72
	i32 1260983243, ; 65: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 66: SQLitePCLRaw.core.dll => 0x4d0585a0 => 51
	i32 1293217323, ; 67: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 63
	i32 1308624726, ; 68: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 69: System.Linq => 0x4eed2679 => 99
	i32 1336711579, ; 70: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 71: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 72: Xamarin.AndroidX.SavedState => 0x52114ed3 => 75
	i32 1406073936, ; 73: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 59
	i32 1430672901, ; 74: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 75: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 76: System.IO.Compression.dll => 0x57261233 => 97
	i32 1469204771, ; 77: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 56
	i32 1470490898, ; 78: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 79: System.IO.Compression.Brotli.dll => 0x583e844f => 96
	i32 1524747670, ; 80: Plugin.LocalNotification => 0x5ae1cd96 => 48
	i32 1526286932, ; 81: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 82: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 114
	i32 1622152042, ; 83: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 69
	i32 1624863272, ; 84: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 79
	i32 1636350590, ; 85: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 61
	i32 1639515021, ; 86: System.Net.Http.dll => 0x61b9038d => 101
	i32 1639986890, ; 87: System.Text.RegularExpressions => 0x61c036ca => 114
	i32 1657153582, ; 88: System.Runtime => 0x62c6282e => 110
	i32 1658251792, ; 89: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 80
	i32 1677501392, ; 90: System.Net.Primitives.dll => 0x63fca3d0 => 102
	i32 1679769178, ; 91: System.Security.Cryptography => 0x641f3e5a => 111
	i32 1711441057, ; 92: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 52
	i32 1729485958, ; 93: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 57
	i32 1743415430, ; 94: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1766324549, ; 95: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 76
	i32 1770582343, ; 96: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 97: Mono.Android.Runtime.dll => 0x6a216153 => 123
	i32 1782862114, ; 98: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 99: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1793755602, ; 100: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 101: Xamarin.AndroidX.Loader => 0x6bcd3296 => 69
	i32 1813058853, ; 102: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 85
	i32 1813201214, ; 103: Xamarin.Google.Android.Material => 0x6c13413e => 80
	i32 1818569960, ; 104: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 73
	i32 1828688058, ; 105: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1853025655, ; 106: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 107: System.Linq.Expressions => 0x6ec71a65 => 98
	i32 1875935024, ; 108: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 109: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1908813208, ; 110: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 82
	i32 1910275211, ; 111: System.Collections.NonGeneric.dll => 0x71dc7c8b => 89
	i32 1953182387, ; 112: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 113: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 1994118798, ; 114: CAP.dll => 0x76dbd68e => 87
	i32 2003115576, ; 115: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 116: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 67
	i32 2045470958, ; 117: System.Private.Xml => 0x79eb68ee => 107
	i32 2055257422, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 66
	i32 2066184531, ; 119: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2079903147, ; 120: System.Runtime.dll => 0x7bf8cdab => 110
	i32 2090596640, ; 121: System.Numerics.Vectors => 0x7c9bf920 => 104
	i32 2103459038, ; 122: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 53
	i32 2127167465, ; 123: System.Console => 0x7ec9ffe9 => 94
	i32 2129483829, ; 124: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 81
	i32 2159891885, ; 125: Microsoft.Maui => 0x80bd55ad => 45
	i32 2169148018, ; 126: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 127: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 128: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 129: System.ObjectModel.dll => 0x82b6c85e => 105
	i32 2201107256, ; 130: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 86
	i32 2201231467, ; 131: System.Net.Http => 0x8334206b => 101
	i32 2207618523, ; 132: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 133: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2279755925, ; 134: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 74
	i32 2303942373, ; 135: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 136: System.Private.CoreLib.dll => 0x896b7878 => 121
	i32 2340441535, ; 137: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 108
	i32 2353062107, ; 138: System.Net.Primitives => 0x8c40e0db => 102
	i32 2366048013, ; 139: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 140: System.Xml.ReaderWriter.dll => 0x8d24e767 => 118
	i32 2371007202, ; 141: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 142: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 143: System.Web.HttpUtility => 0x8f24faee => 117
	i32 2427813419, ; 144: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 145: System.Console.dll => 0x912896e5 => 94
	i32 2465273461, ; 146: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 50
	i32 2471841756, ; 147: netstandard.dll => 0x93554fdc => 120
	i32 2475788418, ; 148: Java.Interop.dll => 0x93918882 => 122
	i32 2480646305, ; 149: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2503351294, ; 150: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 151: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2570120770, ; 152: System.Text.Encodings.Web => 0x9930ee42 => 112
	i32 2576534780, ; 153: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2593496499, ; 154: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 155: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 86
	i32 2617129537, ; 156: System.Private.Xml.dll => 0x9bfe3a41 => 107
	i32 2620871830, ; 157: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 61
	i32 2626831493, ; 158: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2732626843, ; 159: Xamarin.AndroidX.Activity => 0xa2e0939b => 54
	i32 2737747696, ; 160: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 56
	i32 2740698338, ; 161: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 162: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 163: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 164: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2778768386, ; 165: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 78
	i32 2785988530, ; 166: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 167: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2810250172, ; 168: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 59
	i32 2847418871, ; 169: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 81
	i32 2853208004, ; 170: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 78
	i32 2861189240, ; 171: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2909740682, ; 172: System.Private.CoreLib => 0xad6f1e8a => 121
	i32 2916838712, ; 173: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 79
	i32 2919462931, ; 174: System.Numerics.Vectors.dll => 0xae037813 => 104
	i32 2959614098, ; 175: System.ComponentModel.dll => 0xb0682092 => 93
	i32 2978675010, ; 176: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 63
	i32 3038032645, ; 177: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 178: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 179: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 70
	i32 3058099980, ; 180: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 84
	i32 3059408633, ; 181: Mono.Android.Runtime => 0xb65adef9 => 123
	i32 3059793426, ; 182: System.ComponentModel.Primitives => 0xb660be12 => 91
	i32 3178803400, ; 183: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 71
	i32 3220365878, ; 184: System.Threading => 0xbff2e236 => 116
	i32 3230466174, ; 185: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 82
	i32 3258312781, ; 186: Xamarin.AndroidX.CardView => 0xc235e84d => 57
	i32 3286872994, ; 187: SQLite-net.dll => 0xc3e9b3a2 => 49
	i32 3305363605, ; 188: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 189: System.Net.Requests.dll => 0xc5b097e4 => 103
	i32 3317135071, ; 190: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 62
	i32 3346324047, ; 191: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 72
	i32 3357674450, ; 192: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 193: System.Text.Json => 0xc82afec1 => 113
	i32 3360279109, ; 194: SQLitePCLRaw.core => 0xc849ca45 => 51
	i32 3362522851, ; 195: Xamarin.AndroidX.Core => 0xc86c06e3 => 60
	i32 3366347497, ; 196: Java.Interop => 0xc8a662e9 => 122
	i32 3374999561, ; 197: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 74
	i32 3381016424, ; 198: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 199: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3430777524, ; 200: netstandard => 0xcc7d82b4 => 120
	i32 3458724246, ; 201: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 202: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 92
	i32 3476120550, ; 203: Mono.Android => 0xcf3163e6 => 124
	i32 3484440000, ; 204: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 205: System.Text.Json.dll => 0xcfbaacae => 113
	i32 3494395880, ; 206: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 83
	i32 3580758918, ; 207: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 208: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 209: System.Linq.dll => 0xd715a361 => 99
	i32 3624195450, ; 210: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 108
	i32 3641597786, ; 211: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 66
	i32 3643446276, ; 212: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 213: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 71
	i32 3657292374, ; 214: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 215: Mono.Android.dll => 0xdae8aa5e => 124
	i32 3724971120, ; 216: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 70
	i32 3748608112, ; 217: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 95
	i32 3751619990, ; 218: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3754567612, ; 219: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 53
	i32 3786282454, ; 220: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 58
	i32 3792276235, ; 221: System.Collections.NonGeneric => 0xe2098b0b => 89
	i32 3823082795, ; 222: System.Security.Cryptography.dll => 0xe3df9d2b => 111
	i32 3841636137, ; 223: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 224: System.Runtime.InteropServices.dll => 0xe56ef253 => 109
	i32 3856826757, ; 225: CAP => 0xe5e28185 => 87
	i32 3876362041, ; 226: SQLite-net => 0xe70c9739 => 49
	i32 3896106733, ; 227: System.Collections.Concurrent.dll => 0xe839deed => 88
	i32 3896760992, ; 228: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 60
	i32 3920221145, ; 229: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3921031405, ; 230: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 77
	i32 3928044579, ; 231: System.Xml.ReaderWriter => 0xea213423 => 118
	i32 3931092270, ; 232: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 73
	i32 3955647286, ; 233: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 55
	i32 3967165417, ; 234: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 83
	i32 3970018735, ; 235: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 84
	i32 4025784931, ; 236: System.Memory => 0xeff49a63 => 100
	i32 4046471985, ; 237: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4073602200, ; 238: System.Threading.dll => 0xf2ce3c98 => 116
	i32 4091086043, ; 239: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 240: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4100113165, ; 241: System.Private.Uri => 0xf462c30d => 106
	i32 4103439459, ; 242: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 243: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4150914736, ; 244: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 245: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 68
	i32 4213026141, ; 246: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 95
	i32 4249188766, ; 247: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 248: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4292120959 ; 249: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 68
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [250 x i32] [
	i32 0, ; 0
	i32 9, ; 1
	i32 115, ; 2
	i32 33, ; 3
	i32 47, ; 4
	i32 17, ; 5
	i32 109, ; 6
	i32 32, ; 7
	i32 25, ; 8
	i32 58, ; 9
	i32 76, ; 10
	i32 93, ; 11
	i32 30, ; 12
	i32 54, ; 13
	i32 8, ; 14
	i32 65, ; 15
	i32 52, ; 16
	i32 115, ; 17
	i32 100, ; 18
	i32 34, ; 19
	i32 28, ; 20
	i32 90, ; 21
	i32 64, ; 22
	i32 117, ; 23
	i32 119, ; 24
	i32 6, ; 25
	i32 105, ; 26
	i32 48, ; 27
	i32 42, ; 28
	i32 27, ; 29
	i32 39, ; 30
	i32 62, ; 31
	i32 19, ; 32
	i32 112, ; 33
	i32 77, ; 34
	i32 88, ; 35
	i32 50, ; 36
	i32 103, ; 37
	i32 97, ; 38
	i32 25, ; 39
	i32 41, ; 40
	i32 106, ; 41
	i32 96, ; 42
	i32 10, ; 43
	i32 24, ; 44
	i32 91, ; 45
	i32 21, ; 46
	i32 14, ; 47
	i32 65, ; 48
	i32 23, ; 49
	i32 90, ; 50
	i32 75, ; 51
	i32 38, ; 52
	i32 55, ; 53
	i32 4, ; 54
	i32 98, ; 55
	i32 67, ; 56
	i32 92, ; 57
	i32 85, ; 58
	i32 119, ; 59
	i32 26, ; 60
	i32 20, ; 61
	i32 16, ; 62
	i32 22, ; 63
	i32 72, ; 64
	i32 2, ; 65
	i32 51, ; 66
	i32 63, ; 67
	i32 11, ; 68
	i32 99, ; 69
	i32 31, ; 70
	i32 32, ; 71
	i32 75, ; 72
	i32 59, ; 73
	i32 0, ; 74
	i32 6, ; 75
	i32 97, ; 76
	i32 56, ; 77
	i32 42, ; 78
	i32 96, ; 79
	i32 48, ; 80
	i32 30, ; 81
	i32 114, ; 82
	i32 69, ; 83
	i32 79, ; 84
	i32 61, ; 85
	i32 101, ; 86
	i32 114, ; 87
	i32 110, ; 88
	i32 80, ; 89
	i32 102, ; 90
	i32 111, ; 91
	i32 52, ; 92
	i32 57, ; 93
	i32 1, ; 94
	i32 76, ; 95
	i32 39, ; 96
	i32 123, ; 97
	i32 17, ; 98
	i32 64, ; 99
	i32 9, ; 100
	i32 69, ; 101
	i32 85, ; 102
	i32 80, ; 103
	i32 73, ; 104
	i32 40, ; 105
	i32 26, ; 106
	i32 98, ; 107
	i32 8, ; 108
	i32 2, ; 109
	i32 82, ; 110
	i32 89, ; 111
	i32 13, ; 112
	i32 35, ; 113
	i32 87, ; 114
	i32 5, ; 115
	i32 67, ; 116
	i32 107, ; 117
	i32 66, ; 118
	i32 4, ; 119
	i32 110, ; 120
	i32 104, ; 121
	i32 53, ; 122
	i32 94, ; 123
	i32 81, ; 124
	i32 45, ; 125
	i32 12, ; 126
	i32 41, ; 127
	i32 40, ; 128
	i32 105, ; 129
	i32 86, ; 130
	i32 101, ; 131
	i32 14, ; 132
	i32 36, ; 133
	i32 74, ; 134
	i32 18, ; 135
	i32 121, ; 136
	i32 108, ; 137
	i32 102, ; 138
	i32 12, ; 139
	i32 118, ; 140
	i32 35, ; 141
	i32 13, ; 142
	i32 117, ; 143
	i32 10, ; 144
	i32 94, ; 145
	i32 50, ; 146
	i32 120, ; 147
	i32 122, ; 148
	i32 43, ; 149
	i32 16, ; 150
	i32 11, ; 151
	i32 112, ; 152
	i32 15, ; 153
	i32 20, ; 154
	i32 86, ; 155
	i32 107, ; 156
	i32 61, ; 157
	i32 15, ; 158
	i32 54, ; 159
	i32 56, ; 160
	i32 1, ; 161
	i32 21, ; 162
	i32 44, ; 163
	i32 45, ; 164
	i32 78, ; 165
	i32 27, ; 166
	i32 47, ; 167
	i32 59, ; 168
	i32 81, ; 169
	i32 78, ; 170
	i32 46, ; 171
	i32 121, ; 172
	i32 79, ; 173
	i32 104, ; 174
	i32 93, ; 175
	i32 63, ; 176
	i32 34, ; 177
	i32 7, ; 178
	i32 70, ; 179
	i32 84, ; 180
	i32 123, ; 181
	i32 91, ; 182
	i32 71, ; 183
	i32 116, ; 184
	i32 82, ; 185
	i32 57, ; 186
	i32 49, ; 187
	i32 7, ; 188
	i32 103, ; 189
	i32 62, ; 190
	i32 72, ; 191
	i32 24, ; 192
	i32 113, ; 193
	i32 51, ; 194
	i32 60, ; 195
	i32 122, ; 196
	i32 74, ; 197
	i32 3, ; 198
	i32 37, ; 199
	i32 120, ; 200
	i32 22, ; 201
	i32 92, ; 202
	i32 124, ; 203
	i32 23, ; 204
	i32 113, ; 205
	i32 83, ; 206
	i32 31, ; 207
	i32 33, ; 208
	i32 99, ; 209
	i32 108, ; 210
	i32 66, ; 211
	i32 28, ; 212
	i32 71, ; 213
	i32 36, ; 214
	i32 124, ; 215
	i32 70, ; 216
	i32 95, ; 217
	i32 3, ; 218
	i32 53, ; 219
	i32 58, ; 220
	i32 89, ; 221
	i32 111, ; 222
	i32 38, ; 223
	i32 109, ; 224
	i32 87, ; 225
	i32 49, ; 226
	i32 88, ; 227
	i32 60, ; 228
	i32 19, ; 229
	i32 77, ; 230
	i32 118, ; 231
	i32 73, ; 232
	i32 55, ; 233
	i32 83, ; 234
	i32 84, ; 235
	i32 100, ; 236
	i32 44, ; 237
	i32 116, ; 238
	i32 5, ; 239
	i32 46, ; 240
	i32 106, ; 241
	i32 29, ; 242
	i32 37, ; 243
	i32 29, ; 244
	i32 68, ; 245
	i32 95, ; 246
	i32 18, ; 247
	i32 43, ; 248
	i32 68 ; 249
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
