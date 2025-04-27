; ModuleID = 'typemaps.armeabi-v7a.ll'
source_filename = "typemaps.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 40, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 1073, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [40 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] c"\0Cq\F3\12\E8-\9FM\81\05~g\12h\DE\CD", ; module_uuid: 12f3710c-2de8-4d9f-8105-7e671268decd
		i32 3, ; uint32_t entry_count (0x3)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module0_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] c"\12\82\A4s\A0\DD\E9K\AB\E2\027\10%\12=", ; module_uuid: 73a48212-dda0-4be9-abe2-02371025123d
		i32 7, ; uint32_t entry_count (0x7)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] c"\14J;j\B3#\83A\8Cc\B34\C1\1B\7F\A7", ; module_uuid: 6a3b4a14-23b3-4183-8c63-b334c11b7fa7
		i32 4, ; uint32_t entry_count (0x4)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module2_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] c"\17S\FEQ3 dM\90\B2\1AV\CC\BD\B5\8B", ; module_uuid: 51fe5317-2033-4d64-90b2-1a56ccbdb58b
		i32 9, ; uint32_t entry_count (0x9)
		i32 8, ; uint32_t duplicate_count (0x8)
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module3_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] c"#;\D2\A7/\D1MC\9F\9EG\8F\F6\B0w\FF", ; module_uuid: a7d23b23-d12f-434d-9f9e-478ff6b077ff
		i32 5, ; uint32_t entry_count (0x5)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module4_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] c"$\E8m5\0B\DBNK\B3\C3 \96\DA\DC\19\99", ; module_uuid: 356de824-db0b-4b4e-b3c3-2096dadc1999
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module5_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] c"&\D36\925\C0`B\98\C8[\02\C5\F6\01\18", ; module_uuid: 9236d326-c035-4260-98c8-5b02c5f60118
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module6_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] c"1\08\9C\B5\C5\83*D\A4)U\CD\DF\E3~s", ; module_uuid: b59c0831-83c5-442a-a429-55cddfe37e73
		i32 23, ; uint32_t entry_count (0x17)
		i32 9, ; uint32_t duplicate_count (0x9)
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module7_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Location
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] c"2\5C\C8\E0\97[mJ\94w\D5\FDD\BA\18R", ; module_uuid: e0c85c32-5b97-4a6d-9477-d5fd44ba1852
		i32 12, ; uint32_t entry_count (0xc)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] c"2\E4\C0\A4&&\A3B\BA.\D7\FC\AC9\C3!", ; module_uuid: a4c0e432-2626-42a3-ba2e-d7fcac39c321
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module9_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] c"6\C8v\CE\C8\FF9A\82`\B1wdi\B1)", ; module_uuid: ce76c836-ffc8-4139-8260-b1776469b129
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module10_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: Xamarin.AndroidX.VersionedParcelable
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] c"G(9\B461wM\A3\C8]9S\B1\E1A", ; module_uuid: b4392847-3136-4d77-a3c8-5d3953b1e141
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] c"Hd'r\06i\B9G\A6,\C5\C5\16\F0\A7\A8", ; module_uuid: 72276448-6906-47b9-a62c-c5c516f0a7a8
		i32 3, ; uint32_t entry_count (0x3)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module12_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] c"P\98v\A9\92hZB\A2\A4pS\DA\D3\16=", ; module_uuid: a9769850-6892-425a-a2a4-7053dad3163d
		i32 7, ; uint32_t entry_count (0x7)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module13_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Basement
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] c"S\5C\9F\13\FC\1C+K\8B<\01\84\0A\AEl\FD", ; module_uuid: 139f5c53-1cfc-4b2b-8b3c-01840aae6cfd
		i32 9, ; uint32_t entry_count (0x9)
		i32 5, ; uint32_t duplicate_count (0x5)
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module14_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] c"So\A1ig\00_J\A8}+n\ED\92*\1D", ; module_uuid: 69a16f53-0067-4a5f-a87d-2b6eed922a1d
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] c"W4\9E\D9\15\93~M\85x\EB\80\B3\F0\D8\A3", ; module_uuid: d99e3457-9315-4d7e-8578-eb80b3f0d8a3
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] c"W\B7~Tt\D7\9EK\AE,n\0A\A7\AB\C6}", ; module_uuid: 547eb757-d774-4b9e-ae2c-6e0aa7abc67d
		i32 67, ; uint32_t entry_count (0x43)
		i32 25, ; uint32_t duplicate_count (0x19)
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] c"`\B5<\B1hYIK\97\81\CB!\BAB<\FD", ; module_uuid: b13cb560-5968-4b49-9781-cb21ba423cfd
		i32 17, ; uint32_t entry_count (0x11)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] c"a\DF\04B\E0d>M\8C\F4\F5\8A\99\BC+Y", ; module_uuid: 4204df61-64e0-4d3e-8cf4-f58a99bc2b59
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Plugin.LocalNotification
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] c"m\94\B7\0E\82\E0\86G\B3\E6%+[\93T\EE", ; module_uuid: 0eb7946d-e082-4786-b3e6-252b5b9354ee
		i32 11, ; uint32_t entry_count (0xb)
		i32 9, ; uint32_t duplicate_count (0x9)
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module20_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Tasks
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] c"t\C1\0F,\CF\85\BDM\BA\AD\ED\15\87\94B\B1", ; module_uuid: 2c0fc174-85cf-4dbd-baad-ed15879442b1
		i32 21, ; uint32_t entry_count (0x15)
		i32 14, ; uint32_t duplicate_count (0xe)
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module21_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Base
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] c"\83\C2\C3\00\C8\B2iD\A7J\D1\831\D8\0A\8B", ; module_uuid: 00c3c283-b2c8-4469-a74a-d18331d80a8b
		i32 461, ; uint32_t entry_count (0x1cd)
		i32 171, ; uint32_t duplicate_count (0xab)
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module22_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] c"\8E\A2\1E\13\19f!A\85u\80^m\88\D5\F6", ; module_uuid: 131ea28e-6619-4121-8575-805e6d88d5f6
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] c"\8F\9C\0A\EF\CC\AE|G\BB\D9\F32cy[\F1", ; module_uuid: ef0a9c8f-aecc-477c-bbd9-f33263795bf1
		i32 78, ; uint32_t entry_count (0x4e)
		i32 25, ; uint32_t duplicate_count (0x19)
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module24_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] c"\92\C6\82\DE\84LgD\AD\1An@F\DE8\B2", ; module_uuid: de82c692-4c84-4467-ad1a-6e4046de38b2
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module25_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] c"\99\B9\02\BD\08r\BBM\BE*H\9CBH$k", ; module_uuid: bd02b999-7208-4dbb-be2a-489c4248246b
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] c"\A1O\F6\DA\14+\97C\BE\8C!\05VV!\AA", ; module_uuid: daf64fa1-2b14-4397-be8c-2105565621aa
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] c"\B10\89\D1\97\E3\E0I\AE\E3\D6\5C\CF\05\22\CF", ; module_uuid: d18930b1-e397-49e0-aee3-d65ccf0522cf
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module28_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] c"\BBe\09af\0C)O\A5\1D\EC\1F\E5\8F\C0\07", ; module_uuid: 610965bb-0c66-4f29-a51d-ec1fe58fc007
		i32 61, ; uint32_t entry_count (0x3d)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module29_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] c"\BE\AB\1B\0E\C9m\17N\BA\8E\CB\CFR\F9\00q", ; module_uuid: 0e1babbe-6dc9-4e17-ba8e-cbcf52f90071
		i32 6, ; uint32_t entry_count (0x6)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module30_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] c"\BF\04\A2\D7]0jL\95\CE\1Bx\C5\07`\AB", ; module_uuid: d7a204bf-305d-4c6a-95ce-1b78c50760ab
		i32 41, ; uint32_t entry_count (0x29)
		i32 21, ; uint32_t duplicate_count (0x15)
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] c"\C6\8C\BE\05\BF\E2\A0G\89!C\AAe\87\A3\9A", ; module_uuid: 05be8cc6-e2bf-47a0-8921-43aa6587a39a
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: CAP
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] c"\CF\A3,\1E\AE\08fD\9En\E65?X\85S", ; module_uuid: 1e2ca3cf-08ae-4466-9e6e-e6353f588553
		i32 2, ; uint32_t entry_count (0x2)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module33_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 33
	%struct.TypeMapModule {
		[16 x i8] c"\CF\DB\05b\8D\EE\D3J\A4\BB\1A\00\E6q\E7\AA", ; module_uuid: 6205dbcf-ee8d-4ad3-a4bb-1a00e671e7aa
		i32 110, ; uint32_t entry_count (0x6e)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module34_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.34_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 34
	%struct.TypeMapModule {
		[16 x i8] c"\D2;-b)\F3\E5C\94X\18\EE\E1\8D\07I", ; module_uuid: 622d3bd2-f329-43e5-9458-18eee18d0749
		i32 4, ; uint32_t entry_count (0x4)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module35_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module35_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.35_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 35
	%struct.TypeMapModule {
		[16 x i8] c"\D6,s\F9m\00)C\AB\0C]\E3\FA\F7\01\EE", ; module_uuid: f9732cd6-006d-4329-ab0c-5de3faf701ee
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module36_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module36_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.36_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 36
	%struct.TypeMapModule {
		[16 x i8] c"\E0/\E9\CC\87l8H\9B\84\03Hx\CE\1B&", ; module_uuid: cce92fe0-6c87-4838-9b84-034878ce1b26
		i32 19, ; uint32_t entry_count (0x13)
		i32 10, ; uint32_t duplicate_count (0xa)
		ptr @module37_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module37_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.37_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 37
	%struct.TypeMapModule {
		[16 x i8] c"\E7\95~\A7\09\16\FBE\A13\D5\BDp\DB.\D2", ; module_uuid: a77e95e7-1609-45fb-a133-d5bd70db2ed2
		i32 55, ; uint32_t entry_count (0x37)
		i32 19, ; uint32_t duplicate_count (0x13)
		ptr @module38_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module38_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.38_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 38
	%struct.TypeMapModule {
		[16 x i8] c"\F6\CE\C0\BDF\5CXL\86xOS\A1\C3-\C5", ; module_uuid: bdc0cef6-5c46-4c58-8678-4f53a1c32dc5
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module39_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.39_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	} ; 39
], align 4

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [1073 x i32] [
	i32 4689355, ; 0: 0x478dcb => android/animation/Animator$AnimatorListener
	i32 5024575, ; 1: 0x4cab3f => crc6452ffdc5b34af3a0f/MauiSwipeView
	i32 12341354, ; 2: 0xbc506a => java/lang/Object
	i32 12855812, ; 3: 0xc42a04 => android/text/style/LineHeightSpan
	i32 14973177, ; 4: 0xe478f9 => androidx/recyclerview/widget/LinearLayoutManager
	i32 17702982, ; 5: 0x10e2046 => androidx/fragment/app/Fragment
	i32 24450155, ; 6: 0x175146b => crc64338477404e88479c/FormattedStringExtensions_LetterSpacingSpan
	i32 25113976, ; 7: 0x17f3578 => android/media/RingtoneManager
	i32 29653966, ; 8: 0x1c47bce => android/widget/ListAdapter
	i32 32078366, ; 9: 0x1e97a1e => java/security/cert/Certificate
	i32 34115578, ; 10: 0x2088ffa => android/content/pm/PackageItemInfo
	i32 40630473, ; 11: 0x26bf8c9 => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i32 47434699, ; 12: 0x2d3cbcb => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i32 50293358, ; 13: 0x2ff6a6e => crc642ae0810b3182db6d/MainApplication
	i32 68779952, ; 14: 0x4197fb0 => crc6452ffdc5b34af3a0f/ScopedFragment
	i32 69893395, ; 15: 0x42a7d13 => androidx/core/view/WindowInsetsCompat
	i32 74282880, ; 16: 0x46d7780 => android/view/ViewGroup
	i32 75499043, ; 17: 0x4800623 => androidx/core/app/NotificationCompat$Builder
	i32 83439307, ; 18: 0x4f92ecb => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i32 88472501, ; 19: 0x545fbb5 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i32 101184921, ; 20: 0x607f599 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i32 102292193, ; 21: 0x618dae1 => androidx/appcompat/widget/DecorToolbar
	i32 107386019, ; 22: 0x66694a3 => androidx/navigation/NavigatorProvider
	i32 107632040, ; 23: 0x66a55a8 => com/google/android/gms/common/api/Api$ClientKey
	i32 117045218, ; 24: 0x6f9f7e2 => android/graphics/BlurMaskFilter
	i32 118977103, ; 25: 0x717724f => android/util/DisplayMetrics
	i32 119600321, ; 26: 0x720f4c1 => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i32 127856878, ; 27: 0x79ef0ee => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i32 129006122, ; 28: 0x7b07a2a => android/graphics/PorterDuffXfermode
	i32 131666100, ; 29: 0x7d910b4 => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i32 133089372, ; 30: 0x7eec85c => androidx/activity/OnBackPressedCallback
	i32 137623074, ; 31: 0x833f622 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i32 138171443, ; 32: 0x83c5433 => javax/net/ssl/SSLSessionContext
	i32 139280357, ; 33: 0x84d3fe5 => android/view/KeyEvent
	i32 144028150, ; 34: 0x895b1f6 => android/text/style/SubscriptSpan
	i32 148505617, ; 35: 0x8da0411 => android/text/GetChars
	i32 149638983, ; 36: 0x8eb4f47 => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i32 150585013, ; 37: 0x8f9beb5 => androidx/activity/contextaware/OnContextAvailableListener
	i32 151052215, ; 38: 0x900dfb7 => crc642ae0810b3182db6d/MainActivity
	i32 155263105, ; 39: 0x9412081 => com/google/android/gms/location/LastLocationRequest
	i32 157158473, ; 40: 0x95e0c49 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i32 158254429, ; 41: 0x96ec55d => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i32 159483247, ; 42: 0x981856f => androidx/activity/result/contract/ActivityResultContract
	i32 162995629, ; 43: 0x9b71dad => crc645d80431ce5f73f11/StartSnapHelper
	i32 166208029, ; 44: 0x9e8221d => java/text/DecimalFormat
	i32 166266226, ; 45: 0x9e90572 => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i32 166929542, ; 46: 0x9f32486 => crc6452ffdc5b34af3a0f/ContainerView
	i32 176697843, ; 47: 0xa8831f3 => java/lang/IllegalArgumentException
	i32 178346187, ; 48: 0xaa158cb => android/window/OnBackInvokedCallback
	i32 183151336, ; 49: 0xaeaaae8 => android/view/OrientationEventListener
	i32 192862028, ; 50: 0xb7ed74c => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i32 194118622, ; 51: 0xb9203de => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i32 221664929, ; 52: 0xd3656a1 => com/google/android/gms/common/api/Scope
	i32 223811268, ; 53: 0xd5716c4 => com/microsoft/maui/PlatformInterop
	i32 226420815, ; 54: 0xd7ee84f => androidx/navigation/NavDeepLink
	i32 230260556, ; 55: 0xdb97f4c => crc64e1fb321c08285b90/ListViewRenderer
	i32 234509239, ; 56: 0xdfa53b7 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i32 234987347, ; 57: 0xe019f53 => androidx/lifecycle/MutableLiveData
	i32 250064775, ; 58: 0xee7af87 => androidx/navigation/NavHostController
	i32 251666975, ; 59: 0xf00221f => android/widget/DatePicker
	i32 253705836, ; 60: 0xf1f3e6c => android/graphics/RadialGradient
	i32 257310750, ; 61: 0xf56401e => androidx/navigation/Navigator
	i32 262868253, ; 62: 0xfab0d1d => android/view/WindowInsets
	i32 269199815, ; 63: 0x100ba9c7 => javax/security/cert/X509Certificate
	i32 272471520, ; 64: 0x103d95e0 => crc64e1fb321c08285b90/ViewRenderer_2
	i32 274759399, ; 65: 0x10607ee7 => com/google/android/gms/location/GeofencingRequest$Builder
	i32 275860237, ; 66: 0x10714b0d => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i32 277940852, ; 67: 0x10910a74 => android/view/ViewGroup$OnHierarchyChangeListener
	i32 278110854, ; 68: 0x1093a286 => crc64e1fb321c08285b90/EntryCellView
	i32 279693177, ; 69: 0x10abc779 => android/content/SharedPreferences$Editor
	i32 285663724, ; 70: 0x1106e1ec => com/google/android/gms/common/api/ResultCallbacks
	i32 286687917, ; 71: 0x111682ad => crc645d80431ce5f73f11/PositionalSmoothScroller
	i32 292004543, ; 72: 0x1167a2bf => androidx/core/app/Person$Builder
	i32 292930755, ; 73: 0x1175c4c3 => androidx/loader/content/Loader$OnLoadCompleteListener
	i32 293659125, ; 74: 0x1180e1f5 => crc6452ffdc5b34af3a0f/MauiShapeView
	i32 295832610, ; 75: 0x11a20c22 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i32 298403376, ; 76: 0x11c94630 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i32 299354407, ; 77: 0x11d7c927 => androidx/savedstate/SavedStateRegistry
	i32 305321328, ; 78: 0x1232d570 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i32 307048059, ; 79: 0x124d2e7b => android/view/MenuItem$OnActionExpandListener
	i32 317135051, ; 80: 0x12e718cb => android/animation/Animator
	i32 338804407, ; 81: 0x1431beb7 => com/google/android/material/appbar/CollapsingToolbarLayout
	i32 343514767, ; 82: 0x14799e8f => android/widget/AbsListView$OnScrollListener
	i32 344246497, ; 83: 0x1484c8e1 => com/google/android/gms/location/FusedLocationProviderApi
	i32 358279401, ; 84: 0x155ae8e9 => android/text/style/CharacterStyle
	i32 360511355, ; 85: 0x157cf77b => androidx/appcompat/widget/AppCompatRadioButton
	i32 366534601, ; 86: 0x15d8dfc9 => android/view/ViewGroup$LayoutParams
	i32 372768500, ; 87: 0x1637fef4 => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i32 390669342, ; 88: 0x1749241e => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i32 393371378, ; 89: 0x17725ef2 => mono/java/lang/RunnableImplementor
	i32 396570040, ; 90: 0x17a32db8 => androidx/lifecycle/LifecycleOwner
	i32 399364059, ; 91: 0x17cdcfdb => android/animation/TimeInterpolator
	i32 412771173, ; 92: 0x189a6365 => java/lang/Long
	i32 416732807, ; 93: 0x18d6d687 => android/util/StateSet
	i32 417359390, ; 94: 0x18e0661e => com/google/android/gms/location/FusedLocationProviderClient
	i32 417475351, ; 95: 0x18e22b17 => kotlin/sequences/Sequence
	i32 419359493, ; 96: 0x18feeb05 => java/util/Iterator
	i32 420482824, ; 97: 0x19100f08 => java/net/ConnectException
	i32 422935000, ; 98: 0x193579d8 => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i32 424391913, ; 99: 0x194bb4e9 => java/lang/ClassLoader
	i32 425386803, ; 100: 0x195ae333 => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i32 427836927, ; 101: 0x198045ff => androidx/fragment/app/FragmentResultListener
	i32 434958167, ; 102: 0x19ecef57 => android/runtime/XmlReaderPullParser
	i32 436934201, ; 103: 0x1a0b1639 => android/content/DialogInterface$OnShowListener
	i32 437664463, ; 104: 0x1a163acf => android/app/UiModeManager
	i32 441688866, ; 105: 0x1a53a322 => androidx/fragment/app/FragmentFactory
	i32 441749763, ; 106: 0x1a549103 => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i32 445582341, ; 107: 0x1a8f0c05 => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i32 449951175, ; 108: 0x1ad1b5c7 => androidx/recyclerview/widget/OrientationHelper
	i32 458110862, ; 109: 0x1b4e378e => crc6452ffdc5b34af3a0f/MauiPicker
	i32 463378833, ; 110: 0x1b9e9991 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i32 464188442, ; 111: 0x1baaf41a => crc6452ffdc5b34af3a0f/MauiStepper
	i32 480538695, ; 112: 0x1ca47047 => androidx/core/content/LocusIdCompat
	i32 484132915, ; 113: 0x1cdb4833 => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i32 490619983, ; 114: 0x1d3e444f => java/util/concurrent/TimeUnit
	i32 490744162, ; 115: 0x1d402962 => crc645d80431ce5f73f11/NongreedySnapHelper
	i32 496581258, ; 116: 0x1d993a8a => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i32 501733478, ; 117: 0x1de7d866 => android/view/ViewGroup$MarginLayoutParams
	i32 512853114, ; 118: 0x1e91847a => crc64e1fb321c08285b90/FrameRenderer
	i32 517025718, ; 119: 0x1ed12fb6 => android/view/ViewParent
	i32 517456986, ; 120: 0x1ed7c45a => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i32 517668398, ; 121: 0x1edafe2e => android/os/Parcel
	i32 521485973, ; 122: 0x1f153e95 => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i32 523581214, ; 123: 0x1f35371e => android/app/SearchableInfo
	i32 531198748, ; 124: 0x1fa9731c => mono/android/runtime/OutputStreamAdapter
	i32 553905247, ; 125: 0x2103ec5f => android/graphics/drawable/ColorDrawable
	i32 554651769, ; 126: 0x210f5079 => android/opengl/Matrix
	i32 568462196, ; 127: 0x21e20b74 => android/content/DialogInterface$OnDismissListener
	i32 571321220, ; 128: 0x220dab84 => android/widget/SectionIndexer
	i32 572697099, ; 129: 0x2222aa0b => crc64e1fb321c08285b90/GroupedListViewAdapter
	i32 581097368, ; 130: 0x22a2d798 => java/nio/channels/FileChannel
	i32 582119143, ; 131: 0x22b26ee7 => androidx/core/app/NotificationCompat$Extender
	i32 582301329, ; 132: 0x22b53691 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i32 584201455, ; 133: 0x22d234ef => android/widget/Filter
	i32 584231583, ; 134: 0x22d2aa9f => java/lang/IllegalStateException
	i32 584387757, ; 135: 0x22d50cad => com/google/android/material/shape/MaterialShapeDrawable
	i32 585466394, ; 136: 0x22e5821a => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i32 587182450, ; 137: 0x22ffb172 => androidx/activity/ComponentActivity
	i32 590702782, ; 138: 0x233568be => android/view/ViewTreeObserver
	i32 590874706, ; 139: 0x23380852 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i32 591793020, ; 140: 0x23460b7c => com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey
	i32 591810476, ; 141: 0x23464fac => android/os/Bundle
	i32 596978812, ; 142: 0x23952c7c => crc64338477404e88479c/ColorChangeRevealDrawable
	i32 598201240, ; 143: 0x23a7d398 => android/app/Notification
	i32 607365982, ; 144: 0x2433ab5e => android/view/animation/LinearInterpolator
	i32 610256159, ; 145: 0x245fc51f => androidx/core/view/accessibility/AccessibilityViewCommand
	i32 616578009, ; 146: 0x24c03bd9 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i32 617948154, ; 147: 0x24d523fa => androidx/appcompat/app/ActionBar$OnNavigationListener
	i32 619060219, ; 148: 0x24e61bfb => java/net/URL
	i32 621710704, ; 149: 0x250e8d70 => crc6452ffdc5b34af3a0f/MauiSearchView
	i32 621831351, ; 150: 0x251064b7 => crc64338477404e88479c/GenericMenuClickListener
	i32 624430410, ; 151: 0x25380d4a => android/view/View$DragShadowBuilder
	i32 625843168, ; 152: 0x254d9be0 => androidx/appcompat/app/AppCompatActivity
	i32 630387043, ; 153: 0x2592f163 => android/text/method/KeyListener
	i32 632089155, ; 154: 0x25acea43 => android/app/TimePickerDialog
	i32 636654293, ; 155: 0x25f292d5 => com/google/android/material/internal/ScrimInsetsFrameLayout
	i32 638514975, ; 156: 0x260ef71f => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i32 638717086, ; 157: 0x26120c9e => android/view/GestureDetector$OnGestureListener
	i32 644006025, ; 158: 0x2662c089 => androidx/fragment/app/FragmentContainer
	i32 645227752, ; 159: 0x267564e8 => androidx/loader/content/Loader
	i32 655473041, ; 160: 0x2711b991 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i32 655837073, ; 161: 0x27174791 => androidx/fragment/app/FragmentTransaction
	i32 657696663, ; 162: 0x2733a797 => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i32 661113054, ; 163: 0x2767c8de => com/google/android/gms/common/api/internal/ApiKey
	i32 677480649, ; 164: 0x286188c9 => java/util/concurrent/atomic/AtomicReference
	i32 686170456, ; 165: 0x28e62158 => crc645d80431ce5f73f11/CarouselViewwOnGlobalLayoutListener
	i32 689512911, ; 166: 0x291921cf => androidx/appcompat/widget/Toolbar
	i32 689988683, ; 167: 0x2920644b => androidx/core/view/OnApplyWindowInsetsListener
	i32 692920175, ; 168: 0x294d1f6f => java/util/ArrayList
	i32 693212793, ; 169: 0x29519679 => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i32 700971531, ; 170: 0x29c7fa0b => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i32 702158320, ; 171: 0x29da15f0 => android/graphics/drawable/GradientDrawable$Orientation
	i32 711999670, ; 172: 0x2a7040b6 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i32 722182957, ; 173: 0x2b0ba32d => crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment
	i32 723803885, ; 174: 0x2b245eed => crc645d80431ce5f73f11/CenterSnapHelper
	i32 730821308, ; 175: 0x2b8f72bc => com/google/android/gms/location/LocationCallback
	i32 736851491, ; 176: 0x2beb7623 => androidx/appcompat/widget/SearchView
	i32 740006971, ; 177: 0x2c1b9c3b => androidx/core/text/PrecomputedTextCompat
	i32 744068251, ; 178: 0x2c59949b => android/graphics/Paint$Join
	i32 745787198, ; 179: 0x2c73cf3e => android/text/style/SuperscriptSpan
	i32 762631195, ; 180: 0x2d74d41b => com/google/android/material/shape/ShapePathModel
	i32 772715691, ; 181: 0x2e0eb4ab => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i32 777381313, ; 182: 0x2e55e5c1 => com/google/android/gms/common/api/Api$BaseClientBuilder
	i32 780408360, ; 183: 0x2e841628 => java/lang/CharSequence
	i32 780987551, ; 184: 0x2e8cec9f => java/io/PrintWriter
	i32 786342354, ; 185: 0x2edea1d2 => android/graphics/drawable/PaintDrawable
	i32 787885952, ; 186: 0x2ef62f80 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i32 788727041, ; 187: 0x2f030501 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i32 793918146, ; 188: 0x2f523ac2 => java/lang/Integer
	i32 798832452, ; 189: 0x2f9d3744 => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i32 805498755, ; 190: 0x3002ef83 => android/os/IBinder$DeathRecipient
	i32 806800039, ; 191: 0x3016caa7 => java/lang/Thread
	i32 806884132, ; 192: 0x30181324 => java/text/DecimalFormatSymbols
	i32 810002833, ; 193: 0x3047a991 => android/animation/ValueAnimator$DurationScaleChangeListener
	i32 815012768, ; 194: 0x30941ba0 => androidx/core/internal/view/SupportMenuItem
	i32 815071630, ; 195: 0x3095018e => android/media/AudioAttributes$Builder
	i32 823991243, ; 196: 0x311d1bcb => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i32 826873067, ; 197: 0x314914eb => android/os/PersistableBundle
	i32 829372919, ; 198: 0x316f39f7 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i32 829690307, ; 199: 0x317411c3 => androidx/core/widget/CompoundButtonCompat
	i32 838682992, ; 200: 0x31fd4970 => java/lang/NullPointerException
	i32 843513459, ; 201: 0x3246fe73 => kotlin/jvm/internal/DefaultConstructorMarker
	i32 845998566, ; 202: 0x326ce9e6 => android/widget/RemoteViews
	i32 850852390, ; 203: 0x32b6fa26 => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i32 857458217, ; 204: 0x331bc629 => android/content/res/AssetManager
	i32 861765628, ; 205: 0x335d7ffc => com/google/android/material/navigation/NavigationBarItemView
	i32 864882745, ; 206: 0x338d1039 => android/graphics/Bitmap$Config
	i32 868122293, ; 207: 0x33be7eb5 => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i32 876646173, ; 208: 0x34408f1d => javax/net/ssl/TrustManager
	i32 885223365, ; 209: 0x34c36fc5 => android/content/ContentResolver
	i32 888241495, ; 210: 0x34f17d57 => com/google/android/gms/common/api/Response
	i32 890195157, ; 211: 0x350f4cd5 => android/app/NotificationChannelGroup
	i32 893363610, ; 212: 0x353fa59a => java/lang/Short
	i32 895273226, ; 213: 0x355cc90a => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i32 897214523, ; 214: 0x357a683b => androidx/core/app/NotificationCompat
	i32 899551522, ; 215: 0x359e1122 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i32 906034180, ; 216: 0x3600fc04 => android/database/Cursor
	i32 907462104, ; 217: 0x3616c5d8 => androidx/navigation/ui/NavigationUI
	i32 917315721, ; 218: 0x36ad2089 => androidx/core/app/NotificationCompat$BigTextStyle
	i32 919133536, ; 219: 0x36c8dd60 => crc64338477404e88479c/DragAndDropGestureHandler
	i32 919189247, ; 220: 0x36c9b6ff => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i32 925636928, ; 221: 0x372c1940 => android/app/Person
	i32 928674904, ; 222: 0x375a7458 => android/graphics/BitmapFactory
	i32 935434236, ; 223: 0x37c197fc => androidx/viewpager/widget/ViewPager$PageTransformer
	i32 937831689, ; 224: 0x37e62d09 => androidx/core/view/ViewPropertyAnimatorCompat
	i32 937899202, ; 225: 0x37e734c2 => com/google/android/material/navigation/NavigationBarPresenter
	i32 942722178, ; 226: 0x3830cc82 => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i32 953679746, ; 227: 0x38d7ff82 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i32 962536581, ; 228: 0x395f2485 => kotlinx/coroutines/flow/StateFlow
	i32 964779174, ; 229: 0x39815ca6 => android/text/TextUtils
	i32 967170543, ; 230: 0x39a5d9ef => android/text/TextPaint
	i32 973696562, ; 231: 0x3a096e32 => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i32 977860950, ; 232: 0x3a48f956 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i32 978747421, ; 233: 0x3a56801d => com/google/android/gms/common/api/internal/ListenerHolder$Notifier
	i32 981409587, ; 234: 0x3a7f1f33 => crc64338477404e88479c/GradientStrokeDrawable
	i32 982326989, ; 235: 0x3a8d1ecd => android/widget/HorizontalScrollView
	i32 982631821, ; 236: 0x3a91c58d => androidx/lifecycle/LiveData
	i32 984605620, ; 237: 0x3aafe3b4 => android/graphics/PointF
	i32 984757927, ; 238: 0x3ab236a7 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i32 986059584, ; 239: 0x3ac61340 => androidx/core/content/ContextCompat
	i32 988965965, ; 240: 0x3af26c4d => android/text/method/BaseKeyListener
	i32 995292409, ; 241: 0x3b52f4f9 => android/app/AlarmManager
	i32 996699600, ; 242: 0x3b686dd0 => java/io/FileDescriptor
	i32 996847286, ; 243: 0x3b6aaeb6 => androidx/lifecycle/Observer
	i32 1002163355, ; 244: 0x3bbbcc9b => androidx/core/app/NotificationCompat$BigPictureStyle
	i32 1007618603, ; 245: 0x3c0f0a2b => android/location/Location
	i32 1013410179, ; 246: 0x3c676983 => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i32 1016711248, ; 247: 0x3c99c850 => androidx/recyclerview/widget/ItemTouchHelper
	i32 1018791985, ; 248: 0x3cb98831 => android/widget/EditText
	i32 1020914866, ; 249: 0x3cd9ecb2 => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i32 1022922355, ; 250: 0x3cf88e73 => com/google/android/gms/tasks/OnCanceledListener
	i32 1026417919, ; 251: 0x3d2de4ff => android/view/WindowMetrics
	i32 1026507328, ; 252: 0x3d2f4240 => java/net/SocketAddress
	i32 1030707578, ; 253: 0x3d6f597a => android/database/DataSetObserver
	i32 1035992969, ; 254: 0x3dbfff89 => android/content/res/Resources
	i32 1046468555, ; 255: 0x3e5fd7cb => microsoft/maui/platform/MauiNavHostFragment
	i32 1046511593, ; 256: 0x3e607fe9 => android/text/InputFilter$LengthFilter
	i32 1046940936, ; 257: 0x3e670d08 => androidx/fragment/app/FragmentContainerView
	i32 1048070238, ; 258: 0x3e78485e => android/view/GestureDetector$OnDoubleTapListener
	i32 1054689658, ; 259: 0x3edd497a => android/graphics/drawable/shapes/OvalShape
	i32 1055644286, ; 260: 0x3eebda7e => android/widget/AbsoluteLayout
	i32 1059653424, ; 261: 0x3f290730 => androidx/viewpager/widget/ViewPager
	i32 1068071799, ; 262: 0x3fa97b77 => crc640ec207abc449b2ca/CustomFrameLayout
	i32 1070459310, ; 263: 0x3fcde9ae => android/database/ContentObserver
	i32 1070496012, ; 264: 0x3fce790c => androidx/navigation/NavDeepLinkBuilder
	i32 1073696643, ; 265: 0x3fff4f83 => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i32 1075342899, ; 266: 0x40186e33 => com/google/android/material/tabs/TabLayout$TabView
	i32 1077629184, ; 267: 0x403b5100 => java/util/function/Consumer
	i32 1082318343, ; 268: 0x4082de07 => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i32 1084013811, ; 269: 0x409cbcf3 => androidx/core/view/OnReceiveContentListener
	i32 1090772272, ; 270: 0x4103dd30 => androidx/navigation/NavController
	i32 1090939588, ; 271: 0x41066ac4 => javax/net/ssl/KeyManagerFactory
	i32 1092939402, ; 272: 0x4124ee8a => crc64e1fb321c08285b90/ListViewRenderer_Container
	i32 1100963717, ; 273: 0x419f5f85 => android/widget/TextView$OnEditorActionListener
	i32 1101713299, ; 274: 0x41aacf93 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i32 1101833833, ; 275: 0x41aca669 => mono/android/view/View_OnFocusChangeListenerImplementor
	i32 1102620299, ; 276: 0x41b8a68b => android/text/Layout$Alignment
	i32 1107181286, ; 277: 0x41fe3ee6 => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i32 1107287745, ; 278: 0x41ffdec1 => androidx/activity/result/ActivityResultLauncher
	i32 1108415989, ; 279: 0x421115f5 => android/widget/AdapterView$OnItemLongClickListener
	i32 1117343714, ; 280: 0x42994fe2 => androidx/drawerlayout/widget/DrawerLayout
	i32 1127862102, ; 281: 0x4339cf56 => androidx/navigation/ui/AppBarConfiguration
	i32 1134314180, ; 282: 0x439c42c4 => androidx/core/view/ViewPropertyAnimatorListener
	i32 1139859576, ; 283: 0x43f0e078 => android/text/StaticLayout$Builder
	i32 1142011573, ; 284: 0x4411b6b5 => java/util/Enumeration
	i32 1142655643, ; 285: 0x441b8a9b => com/google/android/gms/location/CurrentLocationRequest
	i32 1145185992, ; 286: 0x444226c8 => crc640ec207abc449b2ca/ShellFragmentContainer
	i32 1146395494, ; 287: 0x44549b66 => android/widget/RadioButton
	i32 1148330824, ; 288: 0x44722348 => crc64338477404e88479c/PointerGestureHandler
	i32 1173664585, ; 289: 0x45f4b349 => android/app/NotificationChannel
	i32 1178417755, ; 290: 0x463d3a5b => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i32 1179280881, ; 291: 0x464a65f1 => crc64e1fb321c08285b90/TableViewRenderer
	i32 1180952486, ; 292: 0x4663e7a6 => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i32 1180998696, ; 293: 0x46649c28 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i32 1183226258, ; 294: 0x46869992 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i32 1185273701, ; 295: 0x46a5d765 => android/view/SubMenu
	i32 1194275052, ; 296: 0x472f30ec => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i32 1194549417, ; 297: 0x473360a9 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i32 1196063310, ; 298: 0x474a7a4e => java/lang/Appendable
	i32 1198549944, ; 299: 0x47706bb8 => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i32 1202492029, ; 300: 0x47ac927d => android/text/style/StyleSpan
	i32 1205083900, ; 301: 0x47d41efc => android/animation/ValueAnimator
	i32 1212684324, ; 302: 0x48481824 => android/app/DatePickerDialog
	i32 1213250374, ; 303: 0x4850bb46 => android/graphics/Xfermode
	i32 1219897870, ; 304: 0x48b62a0e => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i32 1221453854, ; 305: 0x48cde81e => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i32 1224298156, ; 306: 0x48f94eac => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i32 1227075600, ; 307: 0x4923b010 => javax/security/cert/Certificate
	i32 1235275791, ; 308: 0x49a0d00f => com/google/android/gms/tasks/OnFailureListener
	i32 1236550524, ; 309: 0x49b4437c => com/google/android/gms/common/api/internal/ConnectionCallbacks
	i32 1250909264, ; 310: 0x4a8f5c50 => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i32 1253784686, ; 311: 0x4abb3c6e => androidx/core/app/TaskStackBuilder
	i32 1258145786, ; 312: 0x4afdc7fa => com/google/android/gms/location/LocationResult
	i32 1258478866, ; 313: 0x4b02dd12 => androidx/appcompat/view/ActionMode$Callback
	i32 1260476483, ; 314: 0x4b215843 => android/os/UserHandle
	i32 1265348827, ; 315: 0x4b6bb0db => androidx/coordinatorlayout/widget/CoordinatorLayout
	i32 1270186925, ; 316: 0x4bb583ad => android/view/Window$Callback
	i32 1270561450, ; 317: 0x4bbb3aaa => java/net/SocketTimeoutException
	i32 1275619756, ; 318: 0x4c0869ac => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i32 1281062668, ; 319: 0x4c5b770c => android/widget/SeekBar$OnSeekBarChangeListener
	i32 1281114285, ; 320: 0x4c5c40ad => com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable
	i32 1286921383, ; 321: 0x4cb4dca7 => android/widget/Filter$FilterResults
	i32 1288979257, ; 322: 0x4cd44339 => kotlin/jvm/functions/Function2
	i32 1289639087, ; 323: 0x4cde54af => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i32 1293030742, ; 324: 0x4d121556 => com/google/android/material/appbar/HeaderBehavior
	i32 1298333951, ; 325: 0x4d6300ff => android/os/SystemClock
	i32 1298454265, ; 326: 0x4d64d6f9 => java/lang/Throwable
	i32 1301914322, ; 327: 0x4d99a2d2 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i32 1304466969, ; 328: 0x4dc09619 => androidx/core/view/MenuProvider
	i32 1306150327, ; 329: 0x4dda45b7 => crc6488302ad6e9e4df1a/MauiApplication
	i32 1308517918, ; 330: 0x4dfe661e => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i32 1314998831, ; 331: 0x4e614a2f => androidx/appcompat/app/AppCompatCallback
	i32 1318092535, ; 332: 0x4e907ef7 => android/widget/Filterable
	i32 1323697755, ; 333: 0x4ee6065b => javax/net/ssl/SSLContext
	i32 1330071955, ; 334: 0x4f474993 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i32 1332253635, ; 335: 0x4f6893c3 => crc640ec207abc449b2ca/ScrollLayoutManager
	i32 1335098580, ; 336: 0x4f93fcd4 => java/util/Collection
	i32 1336254343, ; 337: 0x4fa59f87 => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i32 1336879845, ; 338: 0x4faf2ae5 => androidx/core/os/LocaleListCompat
	i32 1340347874, ; 339: 0x4fe415e2 => android/graphics/Paint
	i32 1345123498, ; 340: 0x502cf4aa => androidx/navigation/fragment/FragmentNavigator
	i32 1352385505, ; 341: 0x509bc3e1 => androidx/appcompat/view/menu/MenuPresenter
	i32 1353632159, ; 342: 0x50aec99f => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i32 1362595161, ; 343: 0x51378d59 => androidx/appcompat/widget/Toolbar$LayoutParams
	i32 1368421702, ; 344: 0x51907546 => java/lang/ClassCastException
	i32 1370891736, ; 345: 0x51b625d8 => android/graphics/PorterDuff$Mode
	i32 1373547703, ; 346: 0x51deacb7 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i32 1373631042, ; 347: 0x51dff242 => javax/net/ssl/KeyManager
	i32 1374692843, ; 348: 0x51f025eb => androidx/core/util/Pair
	i32 1383547335, ; 349: 0x527741c7 => android/os/Message
	i32 1384844960, ; 350: 0x528b0ea0 => androidx/lifecycle/SavedStateHandle
	i32 1386757446, ; 351: 0x52a83d46 => android/content/ComponentName
	i32 1396578145, ; 352: 0x533e1761 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i32 1397281529, ; 353: 0x5348d2f9 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i32 1397639547, ; 354: 0x534e497b => crc640ec207abc449b2ca/ContainerView
	i32 1415978247, ; 355: 0x54661d07 => android/content/pm/ApplicationInfo
	i32 1421189158, ; 356: 0x54b5a026 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i32 1425790689, ; 357: 0x54fbd6e1 => java/lang/SecurityException
	i32 1428048664, ; 358: 0x551e4b18 => java/net/HttpURLConnection
	i32 1429796945, ; 359: 0x5538f851 => android/graphics/RectF
	i32 1430387753, ; 360: 0x5541fc29 => com/google/android/gms/common/api/internal/OnConnectionFailedListener
	i32 1433059198, ; 361: 0x556abf7e => android/view/ViewManager
	i32 1436098349, ; 362: 0x55991f2d => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i32 1438182722, ; 363: 0x55b8ed42 => androidx/appcompat/view/menu/MenuView
	i32 1438762315, ; 364: 0x55c1c54b => android/view/View$OnAttachStateChangeListener
	i32 1442348706, ; 365: 0x55f87ea2 => java/util/function/Predicate
	i32 1443275372, ; 366: 0x5606a26c => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i32 1447309214, ; 367: 0x56442f9e => android/widget/LinearLayout$LayoutParams
	i32 1448438974, ; 368: 0x56556cbe => android/view/animation/AccelerateInterpolator
	i32 1452142283, ; 369: 0x568deecb => crc64338477404e88479c/TapAndPanGestureDetector
	i32 1453454006, ; 370: 0x56a1f2b6 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i32 1457311873, ; 371: 0x56dcd081 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i32 1457582199, ; 372: 0x56e0f077 => android/text/SpannableStringInternal
	i32 1459844378, ; 373: 0x5703751a => android/widget/ProgressBar
	i32 1464522999, ; 374: 0x574ad8f7 => crc640ec207abc449b2ca/ShellToolbarTracker
	i32 1465931843, ; 375: 0x57605843 => android/app/Notification$Builder
	i32 1468591223, ; 376: 0x5788ec77 => androidx/core/view/AccessibilityDelegateCompat
	i32 1474225881, ; 377: 0x57dee6d9 => android/view/animation/AnimationUtils
	i32 1475682991, ; 378: 0x57f522af => java/util/HashMap
	i32 1476293262, ; 379: 0x57fe728e => javax/security/auth/Subject
	i32 1481014756, ; 380: 0x58467de4 => android/graphics/drawable/Animatable
	i32 1485707030, ; 381: 0x588e1716 => android/view/View$OnHoverListener
	i32 1489594546, ; 382: 0x58c968b2 => java/nio/channels/spi/AbstractInterruptibleChannel
	i32 1492815417, ; 383: 0x58fa8e39 => java/util/concurrent/Executor
	i32 1493086679, ; 384: 0x58feb1d7 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i32 1495575583, ; 385: 0x5924ac1f => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i32 1495834557, ; 386: 0x59289fbd => com/google/android/gms/location/LocationSettingsResult
	i32 1497029436, ; 387: 0x593adb3c => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i32 1499043383, ; 388: 0x59599637 => com/google/android/gms/common/api/TransformedResult
	i32 1503081372, ; 389: 0x5997339c => androidx/core/view/WindowInsetsCompat$Type
	i32 1506774891, ; 390: 0x59cf8f6b => android/widget/Button
	i32 1509992539, ; 391: 0x5a00a85b => androidx/core/text/PrecomputedTextCompat$Params
	i32 1510743238, ; 392: 0x5a0c1cc6 => crc6452ffdc5b34af3a0f/ViewFragment
	i32 1523447213, ; 393: 0x5acdf5ad => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i32 1544613420, ; 394: 0x5c10ee2c => java/io/File
	i32 1548306256, ; 395: 0x5c494750 => android/view/WindowManager$LayoutParams
	i32 1553655567, ; 396: 0x5c9ae70f => android/graphics/LinearGradient
	i32 1560792828, ; 397: 0x5d07cefc => com/google/android/gms/common/api/PendingResult
	i32 1565919336, ; 398: 0x5d560868 => androidx/lifecycle/viewmodel/CreationExtras$Key
	i32 1571054057, ; 399: 0x5da461e9 => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i32 1572959512, ; 400: 0x5dc17518 => android/widget/AutoCompleteTextView
	i32 1573833883, ; 401: 0x5dcecc9b => android/app/AlertDialog
	i32 1580038113, ; 402: 0x5e2d77e1 => com/google/android/gms/common/api/Api$AbstractClientBuilder
	i32 1581882681, ; 403: 0x5e499d39 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i32 1584672329, ; 404: 0x5e742e49 => android/view/Display
	i32 1586851388, ; 405: 0x5e956e3c => android/os/Handler
	i32 1592353641, ; 406: 0x5ee96369 => androidx/navigation/NavOptions
	i32 1596522192, ; 407: 0x5f28fed0 => androidx/versionedparcelable/CustomVersionedParcelable
	i32 1605499730, ; 408: 0x5fb1fb52 => plugin/LocalNotification/ScheduledAlarmReceiver
	i32 1609784523, ; 409: 0x5ff35ccb => androidx/core/app/RemoteInput
	i32 1612253825, ; 410: 0x60190a81 => androidx/appcompat/widget/AppCompatTextView
	i32 1614379351, ; 411: 0x60397957 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i32 1618766693, ; 412: 0x607c6b65 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i32 1622360015, ; 413: 0x60b33fcf => android/webkit/CookieManager
	i32 1630811578, ; 414: 0x613435ba => com/microsoft/maui/ImageLoaderCallback
	i32 1636428268, ; 415: 0x6189e9ec => androidx/navigation/NavViewModelStoreProvider
	i32 1637959351, ; 416: 0x61a146b7 => java/security/Principal
	i32 1644876130, ; 417: 0x620ad162 => android/graphics/Matrix
	i32 1645748849, ; 418: 0x62182271 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i32 1646348278, ; 419: 0x622147f6 => android/view/View
	i32 1649695927, ; 420: 0x62545cb7 => java/lang/RuntimeException
	i32 1651942789, ; 421: 0x6276a585 => androidx/core/app/NotificationCompat$Style
	i32 1657134862, ; 422: 0x62c5df0e => java/lang/IndexOutOfBoundsException
	i32 1661912031, ; 423: 0x630ec3df => android/view/View$OnTouchListener
	i32 1672227968, ; 424: 0x63ac2c80 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i32 1680835779, ; 425: 0x642f84c3 => java/lang/Byte
	i32 1681267672, ; 426: 0x64361bd8 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i32 1687354114, ; 427: 0x6492fb02 => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i32 1687579136, ; 428: 0x64966a00 => android/widget/CheckBox
	i32 1687871467, ; 429: 0x649adfeb => com/microsoft/maui/PlatformWrapperView
	i32 1695391719, ; 430: 0x650d9fe7 => android/widget/EdgeEffect
	i32 1698676726, ; 431: 0x653fbff6 => androidx/navigation/NavDestination$DeepLinkMatch
	i32 1699467861, ; 432: 0x654bd255 => android/widget/CompoundButton
	i32 1704419470, ; 433: 0x6597608e => android/view/ContentInfo
	i32 1706022050, ; 434: 0x65afd4a2 => com/google/android/gms/tasks/Task
	i32 1717322157, ; 435: 0x665c41ad => androidx/navigation/NavDirections
	i32 1718265030, ; 436: 0x666aa4c6 => java/lang/Character
	i32 1728017347, ; 437: 0x66ff73c3 => android/view/animation/Animation$AnimationListener
	i32 1728338198, ; 438: 0x67045916 => kotlin/coroutines/CoroutineContext$Key
	i32 1729659134, ; 439: 0x671880fe => android/view/MenuInflater
	i32 1733881762, ; 440: 0x6758efa2 => android/content/ClipData$Item
	i32 1738779209, ; 441: 0x67a3aa49 => androidx/lifecycle/ViewModelStore
	i32 1740814247, ; 442: 0x67c2b7a7 => android/widget/FrameLayout
	i32 1740929322, ; 443: 0x67c4792a => android/os/IInterface
	i32 1746572858, ; 444: 0x681a963a => android/app/Application$ActivityLifecycleCallbacks
	i32 1747431222, ; 445: 0x6827af36 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i32 1755285137, ; 446: 0x689f8691 => java/util/Random
	i32 1756541799, ; 447: 0x68b2b367 => androidx/core/view/ActionProvider$VisibilityListener
	i32 1756909581, ; 448: 0x68b8500d => android/text/Layout
	i32 1757019113, ; 449: 0x68b9fbe9 => android/graphics/drawable/shapes/RectShape
	i32 1757404648, ; 450: 0x68bfdde8 => com/google/android/gms/location/LocationServices
	i32 1757602278, ; 451: 0x68c2e1e6 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i32 1758490869, ; 452: 0x68d070f5 => android/os/BaseBundle
	i32 1761245836, ; 453: 0x68fa7a8c => android/content/ClipData
	i32 1763217261, ; 454: 0x69188f6d => com/google/android/gms/tasks/SuccessContinuation
	i32 1765383592, ; 455: 0x69399da8 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i32 1772705556, ; 456: 0x69a95714 => android/graphics/Point
	i32 1775053709, ; 457: 0x69cd2b8d => crc64f728827fec74e9c3/Toolbar_Container
	i32 1775355160, ; 458: 0x69d1c518 => android/content/res/ColorStateList
	i32 1777967370, ; 459: 0x69f9a10a => com/google/android/gms/location/LocationSettingsResponse
	i32 1780695190, ; 460: 0x6a234096 => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i32 1785207866, ; 461: 0x6a681c3a => plugin/LocalNotification/NotificationActionReceiver
	i32 1790236887, ; 462: 0x6ab4d8d7 => android/text/Spanned
	i32 1796407475, ; 463: 0x6b1300b3 => com/google/android/material/button/MaterialButton
	i32 1807220671, ; 464: 0x6bb7ffbf => android/view/View$OnClickListener
	i32 1807287733, ; 465: 0x6bb905b5 => com/google/android/gms/common/api/HasApiKey
	i32 1825825055, ; 466: 0x6cd3e11f => androidx/appcompat/widget/SearchView$OnCloseListener
	i32 1826061187, ; 467: 0x6cd77b83 => androidx/appcompat/view/menu/SubMenuBuilder
	i32 1829255461, ; 468: 0x6d083925 => crc64e1fb321c08285b90/SwitchCellView
	i32 1829923189, ; 469: 0x6d126975 => com/google/android/gms/common/api/Status
	i32 1830766463, ; 470: 0x6d1f477f => android/graphics/drawable/ShapeDrawable
	i32 1835346313, ; 471: 0x6d652989 => androidx/navigation/NavAction
	i32 1837796023, ; 472: 0x6d8a8ab7 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i32 1840863122, ; 473: 0x6db95792 => androidx/core/app/Person
	i32 1846028421, ; 474: 0x6e082885 => crc6452ffdc5b34af3a0f/MauiPageControl
	i32 1849338590, ; 475: 0x6e3aaade => com/google/android/material/appbar/AppBarLayout$Behavior
	i32 1851730788, ; 476: 0x6e5f2b64 => java/lang/Runnable
	i32 1853655829, ; 477: 0x6e7c8b15 => com/google/android/material/badge/BadgeDrawable
	i32 1855124457, ; 478: 0x6e92f3e9 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i32 1855628473, ; 479: 0x6e9aa4b9 => mono/android/text/TextWatcherImplementor
	i32 1859010077, ; 480: 0x6ece3e1d => android/widget/LinearLayout
	i32 1861269606, ; 481: 0x6ef0b866 => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i32 1864726383, ; 482: 0x6f25776f => android/view/ViewConfiguration
	i32 1866304377, ; 483: 0x6f3d8b79 => android/view/SearchEvent
	i32 1871742431, ; 484: 0x6f9085df => android/graphics/drawable/Drawable$ConstantState
	i32 1884164402, ; 485: 0x704e1132 => crc64e1fb321c08285b90/BaseCellView
	i32 1884841200, ; 486: 0x705864f0 => android/os/PowerManager
	i32 1884960853, ; 487: 0x705a3855 => android/content/DialogInterface$OnMultiChoiceClickListener
	i32 1888258715, ; 488: 0x708c8a9b => kotlin/jvm/functions/Function1
	i32 1890166105, ; 489: 0x70a9a559 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i32 1892723841, ; 490: 0x70d0ac81 => com/google/android/gms/common/ConnectionResult
	i32 1893605975, ; 491: 0x70de2257 => androidx/fragment/app/FragmentActivity
	i32 1904678085, ; 492: 0x718714c5 => android/text/style/ForegroundColorSpan
	i32 1905107734, ; 493: 0x718da316 => androidx/lifecycle/ViewModelProvider
	i32 1910754150, ; 494: 0x71e3cb66 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i32 1912915638, ; 495: 0x7204c6b6 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i32 1926992606, ; 496: 0x72db92de => androidx/lifecycle/Lifecycle$Event
	i32 1943778051, ; 497: 0x73dbb303 => android/widget/AdapterView$OnItemSelectedListener
	i32 1944129628, ; 498: 0x73e1105c => java/io/OutputStream
	i32 1960987726, ; 499: 0x74e24c4e => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i32 1962126435, ; 500: 0x74f3ac63 => android/content/BroadcastReceiver
	i32 1965949473, ; 501: 0x752e0221 => androidx/fragment/app/FragmentManager
	i32 1967297202, ; 502: 0x754292b2 => androidx/navigation/NavArgument
	i32 1969410869, ; 503: 0x7562d335 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i32 1970237303, ; 504: 0x756f6f77 => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i32 1970513771, ; 505: 0x7573a76b => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i32 1970549289, ; 506: 0x75743229 => androidx/appcompat/app/AlertDialog$Builder
	i32 1972856963, ; 507: 0x75976883 => crc640ec207abc449b2ca/ShellPageContainer
	i32 1974659158, ; 508: 0x75b2e856 => androidx/core/content/pm/ShortcutInfoCompat
	i32 1975733601, ; 509: 0x75c34d61 => androidx/viewpager2/adapter/FragmentStateAdapter
	i32 1976149055, ; 510: 0x75c9a43f => com/google/android/material/shape/EdgeTreatment
	i32 1976782935, ; 511: 0x75d35057 => com/google/android/material/bottomsheet/BottomSheetDialog
	i32 1985929388, ; 512: 0x765ee0ac => android/app/Activity
	i32 1987841337, ; 513: 0x767c0d39 => java/lang/Boolean
	i32 1988452830, ; 514: 0x768561de => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i32 1990610968, ; 515: 0x76a65018 => android/widget/AdapterView$OnItemClickListener
	i32 1999563224, ; 516: 0x772ee9d8 => android/graphics/drawable/GradientDrawable
	i32 2001752053, ; 517: 0x77504ff5 => com/google/android/gms/common/api/internal/SignInConnectionListener
	i32 2008064836, ; 518: 0x77b0a344 => android/content/Intent
	i32 2009011456, ; 519: 0x77bf1500 => com/google/android/material/elevation/ElevationOverlayProvider
	i32 2011207868, ; 520: 0x77e098bc => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i32 2013969252, ; 521: 0x780abb64 => androidx/appcompat/widget/AppCompatImageView
	i32 2014726135, ; 522: 0x781647f7 => android/view/accessibility/AccessibilityRecord
	i32 2026619833, ; 523: 0x78cbc3b9 => android/widget/FrameLayout$LayoutParams
	i32 2027782872, ; 524: 0x78dd82d8 => android/view/ContextThemeWrapper
	i32 2031450615, ; 525: 0x791579f7 => android/widget/AdapterView
	i32 2036556174, ; 526: 0x7963618e => android/content/DialogInterface
	i32 2039728241, ; 527: 0x7993c871 => android/widget/TimePicker
	i32 2042935261, ; 528: 0x79c4b7dd => android/text/style/BulletSpan
	i32 2043030513, ; 529: 0x79c62bf1 => android/os/Parcelable$Creator
	i32 2043331430, ; 530: 0x79cac366 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i32 2045330957, ; 531: 0x79e9460d => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i32 2046574810, ; 532: 0x79fc40da => java/util/Locale
	i32 2047721020, ; 533: 0x7a0dbe3c => android/webkit/WebChromeClient$FileChooserParams
	i32 2053440974, ; 534: 0x7a6505ce => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i32 2054408678, ; 535: 0x7a73c9e6 => androidx/recyclerview/widget/RecyclerView$Recycler
	i32 2061721420, ; 536: 0x7ae35f4c => android/database/CharArrayBuffer
	i32 2063985753, ; 537: 0x7b05ec59 => android/view/animation/Animation
	i32 2064723667, ; 538: 0x7b112ed3 => android/widget/SpinnerAdapter
	i32 2066129802, ; 539: 0x7b26a38a => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i32 2072634313, ; 540: 0x7b89e3c9 => crc64b5e713d400f589b7/MauiDrawable
	i32 2073337312, ; 541: 0x7b949de0 => android/app/AlertDialog$Builder
	i32 2076112998, ; 542: 0x7bbef866 => androidx/navigation/NavGraphNavigator
	i32 2079753938, ; 543: 0x7bf686d2 => android/content/IntentSender
	i32 2080685156, ; 544: 0x7c04bc64 => java/security/SecureRandom
	i32 2080858891, ; 545: 0x7c07630b => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i32 2091052166, ; 546: 0x7ca2ec86 => androidx/fragment/app/FragmentManager$BackStackEntry
	i32 2096401987, ; 547: 0x7cf48e43 => android/widget/AbsSeekBar
	i32 2100944957, ; 548: 0x7d39e03d => android/graphics/Path
	i32 2113134466, ; 549: 0x7df3df82 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i32 2114237978, ; 550: 0x7e04b61a => android/content/res/Configuration
	i32 2122172224, ; 551: 0x7e7dc740 => kotlin/coroutines/Continuation
	i32 2128294650, ; 552: 0x7edb32fa => androidx/loader/app/LoaderManager
	i32 2130146345, ; 553: 0x7ef77429 => kotlinx/coroutines/flow/SharedFlow
	i32 2131480051, ; 554: 0x7f0bcdf3 => android/animation/AnimatorListenerAdapter
	i32 2136942723, ; 555: 0x7f5f2883 => crc64338477404e88479c/FragmentContainer
	i32 2137427903, ; 556: 0x7f668fbf => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i32 2140205691, ; 557: 0x7f90f27b => androidx/navigation/NavGraph
	i32 2142674759, ; 558: 0x7fb69f47 => com/google/android/material/appbar/AppBarLayout
	i32 2149539229, ; 559: 0x801f5d9d => crc64e1fb321c08285b90/ConditionalFocusLayout
	i32 2154510399, ; 560: 0x806b383f => android/view/animation/AnimationSet
	i32 2154747413, ; 561: 0x806ed615 => com/google/android/material/tabs/TabLayout
	i32 2171523184, ; 562: 0x816ed070 => androidx/navigation/NavDestination
	i32 2175059521, ; 563: 0x81a4c641 => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i32 2176080607, ; 564: 0x81b45adf => android/graphics/drawable/BitmapDrawable
	i32 2177045276, ; 565: 0x81c3131c => androidx/lifecycle/Lifecycle
	i32 2183290666, ; 566: 0x82225f2a => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i32 2191855147, ; 567: 0x82a50e2b => androidx/lifecycle/Lifecycle$State
	i32 2192317535, ; 568: 0x82ac1c5f => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i32 2204262174, ; 569: 0x83625f1e => org/xmlpull/v1/XmlPullParser
	i32 2208460083, ; 570: 0x83a26d33 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i32 2215661969, ; 571: 0x84105191 => crc645d80431ce5f73f11/TextViewHolder
	i32 2223322365, ; 572: 0x848534fd => androidx/appcompat/widget/TooltipCompat
	i32 2226472365, ; 573: 0x84b545ad => com/google/android/gms/location/LocationSettingsRequest
	i32 2226859649, ; 574: 0x84bb2e81 => com/google/android/gms/tasks/CancellationToken
	i32 2227192067, ; 575: 0x84c04103 => androidx/fragment/app/FragmentOnAttachListener
	i32 2231172621, ; 576: 0x84fcfe0d => androidx/core/app/ActivityOptionsCompat
	i32 2235908794, ; 577: 0x854542ba => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i32 2241879133, ; 578: 0x85a05c5d => androidx/appcompat/widget/ScrollingTabContainerView
	i32 2246992727, ; 579: 0x85ee6357 => androidx/navigation/Navigator$Extras
	i32 2256819951, ; 580: 0x868456ef => crc6452ffdc5b34af3a0f/WrapperView
	i32 2266957298, ; 581: 0x871f05f2 => crc6452ffdc5b34af3a0f/MauiWebView
	i32 2267347248, ; 582: 0x8724f930 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i32 2269094561, ; 583: 0x873fa2a1 => java/net/UnknownServiceException
	i32 2270923754, ; 584: 0x875b8bea => java/net/Proxy$Type
	i32 2275473001, ; 585: 0x87a0f669 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i32 2279866227, ; 586: 0x87e3ff73 => androidx/appcompat/widget/AppCompatImageButton
	i32 2284656609, ; 587: 0x882d17e1 => android/app/Application
	i32 2288751702, ; 588: 0x886b9456 => com/google/android/material/checkbox/MaterialCheckBox
	i32 2294676156, ; 589: 0x88c5fabc => android/view/accessibility/AccessibilityNodeInfo
	i32 2295274318, ; 590: 0x88cf1b4e => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i32 2296411383, ; 591: 0x88e074f7 => android/content/IntentFilter
	i32 2311244271, ; 592: 0x89c2c9ef => com/google/android/material/appbar/ViewOffsetBehavior
	i32 2316440185, ; 593: 0x8a121279 => androidx/lifecycle/ViewModelStoreOwner
	i32 2320220715, ; 594: 0x8a4bc22b => crc64338477404e88479c/MauiViewPager
	i32 2323953944, ; 595: 0x8a84b918 => androidx/core/app/NotificationCompat$Action
	i32 2330207644, ; 596: 0x8ae4259c => androidx/activity/result/ActivityResultCallback
	i32 2331022545, ; 597: 0x8af094d1 => crc6452ffdc5b34af3a0f/BorderDrawable
	i32 2340946104, ; 598: 0x8b8800b8 => androidx/recyclerview/widget/PagerSnapHelper
	i32 2350530900, ; 599: 0x8c1a4154 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i32 2360386678, ; 600: 0x8cb0a476 => crc64338477404e88479c/InnerScaleListener
	i32 2363729366, ; 601: 0x8ce3a5d6 => java/lang/Enum
	i32 2367500547, ; 602: 0x8d1d3103 => android/widget/SearchView
	i32 2371350972, ; 603: 0x8d57f1bc => android/widget/Switch
	i32 2395748977, ; 604: 0x8ecc3a71 => android/view/View$OnLayoutChangeListener
	i32 2396624268, ; 605: 0x8ed9958c => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i32 2399092329, ; 606: 0x8eff3e69 => androidx/recyclerview/widget/RecyclerView
	i32 2404057846, ; 607: 0x8f4b02f6 => android/app/PendingIntent
	i32 2405999645, ; 608: 0x8f68a41d => android/graphics/Shader
	i32 2409724717, ; 609: 0x8fa17b2d => android/util/TypedValue
	i32 2411404453, ; 610: 0x8fbb1ca5 => java/lang/UnsupportedOperationException
	i32 2420104680, ; 611: 0x903fdde8 => android/content/res/Resources$Theme
	i32 2427098608, ; 612: 0x90aa95f0 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i32 2429404267, ; 613: 0x90cdc46b => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i32 2436269619, ; 614: 0x91368633 => androidx/cursoradapter/widget/CursorAdapter
	i32 2439299394, ; 615: 0x9164c142 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i32 2442106723, ; 616: 0x918f9763 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i32 2443438835, ; 617: 0x91a3eaf3 => java/net/SocketException
	i32 2443738409, ; 618: 0x91a87d29 => android/graphics/PathEffect
	i32 2443787634, ; 619: 0x91a93d72 => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i32 2444263543, ; 620: 0x91b08077 => crc64e1fb321c08285b90/EntryCellEditText
	i32 2449700811, ; 621: 0x920377cb => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i32 2452264117, ; 622: 0x922a94b5 => java/io/RandomAccessFile
	i32 2455021577, ; 623: 0x9254a809 => android/view/WindowInsetsAnimationControlListener
	i32 2459634245, ; 624: 0x929b0a45 => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i32 2459753066, ; 625: 0x929cda6a => androidx/recyclerview/widget/ItemTouchUIUtil
	i32 2461273673, ; 626: 0x92b40e49 => org/xmlpull/v1/XmlPullParserException
	i32 2461915020, ; 627: 0x92bdd78c => com/google/android/gms/location/LocationListener
	i32 2464444706, ; 628: 0x92e47122 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i32 2467524923, ; 629: 0x9313713b => android/window/OnBackInvokedDispatcher
	i32 2472628627, ; 630: 0x93615193 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i32 2476798898, ; 631: 0x93a0f3b2 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i32 2476842332, ; 632: 0x93a19d5c => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i32 2479240162, ; 633: 0x93c633e2 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i32 2481041228, ; 634: 0x93e1af4c => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i32 2484873381, ; 635: 0x941c28a5 => android/webkit/WebSettings
	i32 2489594490, ; 636: 0x9464327a => crc64338477404e88479c/FormattedStringExtensions_LineHeightSpan
	i32 2493299211, ; 637: 0x949cba0b => android/text/StaticLayout
	i32 2507390128, ; 638: 0x9573bcb0 => crc640ec207abc449b2ca/ShellSearchView
	i32 2510920789, ; 639: 0x95a99c55 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i32 2511755332, ; 640: 0x95b65844 => android/app/NotificationManager
	i32 2521956415, ; 641: 0x9652003f => com/google/android/gms/common/api/Api
	i32 2528672360, ; 642: 0x96b87a68 => crc64338477404e88479c/GradientStrokeDrawable_GradientShaderFactory
	i32 2532846927, ; 643: 0x96f82d4f => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i32 2541780716, ; 644: 0x97807eec => android/view/ContextMenu$ContextMenuInfo
	i32 2544043539, ; 645: 0x97a30613 => androidx/core/view/MenuItemCompat
	i32 2547729979, ; 646: 0x97db463b => com/microsoft/maui/PlatformContentViewGroup
	i32 2552281033, ; 647: 0x9820b7c9 => androidx/core/view/ScrollingView
	i32 2557593866, ; 648: 0x9871c90a => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i32 2557714604, ; 649: 0x9873a0ac => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i32 2558143838, ; 650: 0x987a2d5e => java/io/FileInputStream
	i32 2558429400, ; 651: 0x987e88d8 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i32 2558637264, ; 652: 0x9881b4d0 => android/graphics/drawable/Icon
	i32 2562573719, ; 653: 0x98bdc597 => android/app/Notification$BubbleMetadata
	i32 2565590497, ; 654: 0x98ebcde1 => android/app/DatePickerDialog$OnDateSetListener
	i32 2568582214, ; 655: 0x99197446 => androidx/appcompat/widget/AppCompatEditText
	i32 2569469627, ; 656: 0x9926febb => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i32 2571642468, ; 657: 0x99482664 => com/google/android/gms/location/LocationRequest
	i32 2573408866, ; 658: 0x99631a62 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i32 2578357124, ; 659: 0x99ae9b84 => android/widget/ImageView$ScaleType
	i32 2582561611, ; 660: 0x99eec34b => androidx/navigation/NavController$OnDestinationChangedListener
	i32 2583054407, ; 661: 0x99f64847 => mono/android/animation/AnimatorEventDispatcher
	i32 2585603720, ; 662: 0x9a1d2e88 => java/text/NumberFormat
	i32 2586771995, ; 663: 0x9a2f021b => android/content/DialogInterface$OnKeyListener
	i32 2594241228, ; 664: 0x9aa0facc => android/widget/BaseAdapter
	i32 2601403999, ; 665: 0x9b0e465f => androidx/navigation/NavDeepLinkRequest
	i32 2628279754, ; 666: 0x9ca85dca => android/content/DialogInterface$OnCancelListener
	i32 2633527986, ; 667: 0x9cf872b2 => androidx/core/app/NotificationBuilderWithBuilderAccessor
	i32 2637159311, ; 668: 0x9d2fdb8f => android/content/pm/PackageManager
	i32 2638483996, ; 669: 0x9d44121c => androidx/appcompat/app/AppCompatDelegate
	i32 2641978177, ; 670: 0x9d796341 => com/google/android/material/navigation/NavigationView
	i32 2642404316, ; 671: 0x9d7fe3dc => android/content/pm/Signature
	i32 2645011211, ; 672: 0x9da7ab0b => androidx/core/widget/NestedScrollView
	i32 2645137969, ; 673: 0x9da99a31 => androidx/core/app/ComponentActivity$ExtraData
	i32 2647799060, ; 674: 0x9dd23514 => androidx/core/graphics/drawable/DrawableCompat
	i32 2649962372, ; 675: 0x9df33784 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i32 2650857109, ; 676: 0x9e00de95 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i32 2654672461, ; 677: 0x9e3b164d => java/io/InterruptedIOException
	i32 2661939407, ; 678: 0x9ea9f8cf => android/widget/ImageButton
	i32 2663321095, ; 679: 0x9ebf0e07 => mono/java/lang/Runnable
	i32 2664928003, ; 680: 0x9ed79303 => javax/net/ssl/HostnameVerifier
	i32 2669574217, ; 681: 0x9f1e7849 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i32 2675615863, ; 682: 0x9f7aa877 => android/webkit/WebViewClient
	i32 2680318496, ; 683: 0x9fc26a20 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i32 2681209703, ; 684: 0x9fd00367 => android/widget/Adapter
	i32 2681937445, ; 685: 0x9fdb1e25 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i32 2681988174, ; 686: 0x9fdbe44e => android/view/MotionEvent
	i32 2687778660, ; 687: 0xa0343f64 => android/widget/TextView
	i32 2691166678, ; 688: 0xa067f1d6 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i32 2691558259, ; 689: 0xa06deb73 => android/view/View$OnKeyListener
	i32 2692535938, ; 690: 0xa07cd682 => android/util/Log
	i32 2695694849, ; 691: 0xa0ad0a01 => crc645d80431ce5f73f11/SingleSnapHelper
	i32 2699556053, ; 692: 0xa0e7f4d5 => android/webkit/WebResourceRequest
	i32 2701862962, ; 693: 0xa10b2832 => androidx/lifecycle/viewmodel/ViewModelInitializer
	i32 2702027833, ; 694: 0xa10dac39 => androidx/appcompat/widget/SwitchCompat
	i32 2708569837, ; 695: 0xa1717eed => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i32 2721349606, ; 696: 0xa2347fe6 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i32 2721599187, ; 697: 0xa2384ed3 => android/graphics/drawable/Drawable
	i32 2731618005, ; 698: 0xa2d12ed5 => android/view/View$MeasureSpec
	i32 2734960682, ; 699: 0xa304302a => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i32 2742936588, ; 700: 0xa37de40c => androidx/activity/result/ActivityResultRegistry
	i32 2748204015, ; 701: 0xa3ce43ef => crc64e1fb321c08285b90/TableViewModelRenderer
	i32 2755748727, ; 702: 0xa4416377 => android/text/Spannable
	i32 2762684487, ; 703: 0xa4ab3847 => java/lang/Float
	i32 2767414743, ; 704: 0xa4f365d7 => android/content/LocusId
	i32 2771894941, ; 705: 0xa537c29d => android/graphics/drawable/LayerDrawable
	i32 2782323556, ; 706: 0xa5d6e364 => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i32 2789186058, ; 707: 0xa63f9a0a => androidx/navigation/NavInflater
	i32 2796816157, ; 708: 0xa6b4071d => android/text/format/DateFormat
	i32 2802808876, ; 709: 0xa70f782c => crc6452ffdc5b34af3a0f/MauiScrollView
	i32 2804358856, ; 710: 0xa7271ec8 => com/google/android/gms/common/api/ResultCallback
	i32 2815615939, ; 711: 0xa7d2e3c3 => android/os/Build
	i32 2818171363, ; 712: 0xa7f9e1e3 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i32 2820815306, ; 713: 0xa82239ca => crc6452ffdc5b34af3a0f/MauiBoxView
	i32 2824201895, ; 714: 0xa855e6a7 => androidx/appcompat/widget/AppCompatButton
	i32 2837435745, ; 715: 0xa91fd561 => android/view/DragEvent
	i32 2842584019, ; 716: 0xa96e63d3 => crc645d80431ce5f73f11/ScrollHelper
	i32 2852719702, ; 717: 0xaa090c56 => androidx/cardview/widget/CardView
	i32 2857003403, ; 718: 0xaa4a698b => com/google/android/material/shape/CornerTreatment
	i32 2857352824, ; 719: 0xaa4fbe78 => mono/android/view/View_OnKeyListenerImplementor
	i32 2859608678, ; 720: 0xaa722a66 => android/view/WindowInsetsAnimation$Bounds
	i32 2860681453, ; 721: 0xaa8288ed => crc640ec207abc449b2ca/ShellFlyoutLayout
	i32 2862889935, ; 722: 0xaaa43bcf => androidx/core/view/ActionProvider
	i32 2865855753, ; 723: 0xaad17d09 => androidx/recyclerview/widget/SnapHelper
	i32 2866910344, ; 724: 0xaae19488 => android/view/ActionMode
	i32 2872704101, ; 725: 0xab39fc65 => java/lang/System
	i32 2873107855, ; 726: 0xab40258f => android/content/pm/PackageInfo
	i32 2874673969, ; 727: 0xab580b31 => java/lang/StackTraceElement
	i32 2875901595, ; 728: 0xab6ac69b => crc64338477404e88479c/ModalNavigationManager_ModalContainer
	i32 2904323518, ; 729: 0xad1c75be => com/google/android/gms/location/GeofencingApi
	i32 2904565352, ; 730: 0xad202668 => android/view/WindowInsetsAnimationController
	i32 2905214894, ; 731: 0xad2a0fae => android/text/style/ParagraphStyle
	i32 2909563026, ; 732: 0xad6c6892 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i32 2918613155, ; 733: 0xadf680a3 => android/content/DialogInterface$OnClickListener
	i32 2922690929, ; 734: 0xae34b971 => android/graphics/BlendMode
	i32 2932874700, ; 735: 0xaed01dcc => android/view/InputEvent
	i32 2933762856, ; 736: 0xaeddab28 => android/util/AttributeSet
	i32 2936553858, ; 737: 0xaf084182 => androidx/fragment/app/strictmode/Violation
	i32 2936969538, ; 738: 0xaf0e9942 => androidx/recyclerview/widget/LinearSmoothScroller
	i32 2942792700, ; 739: 0xaf6773fc => java/lang/Exception
	i32 2943609165, ; 740: 0xaf73e94d => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i32 2944575610, ; 741: 0xaf82a87a => com/google/android/gms/location/LocationAvailability
	i32 2944806563, ; 742: 0xaf862ea3 => android/widget/ListView
	i32 2953623320, ; 743: 0xb00cb718 => android/view/WindowInsetsController
	i32 2954825236, ; 744: 0xb01f0e14 => androidx/appcompat/app/ActionBar
	i32 2959362348, ; 745: 0xb064492c => crc6495d4f5d63cc5c882/AwaitableTaskCompleteListener_1
	i32 2963535666, ; 746: 0xb0a3f732 => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i32 2974982681, ; 747: 0xb152a219 => java/text/Format
	i32 2980510762, ; 748: 0xb1a6fc2a => mono/android/runtime/JavaArray
	i32 2983720033, ; 749: 0xb1d7f461 => mono/android/TypeManager
	i32 2985454904, ; 750: 0xb1f26d38 => android/text/method/DigitsKeyListener
	i32 2991841681, ; 751: 0xb253e191 => crc645d80431ce5f73f11/SelectableViewHolder
	i32 2994062909, ; 752: 0xb275c63d => com/google/android/gms/tasks/OnTokenCanceledListener
	i32 2994721532, ; 753: 0xb27fd2fc => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i32 2999435385, ; 754: 0xb2c7c079 => androidx/core/view/ContentInfoCompat
	i32 3000612944, ; 755: 0xb2d9b850 => crc645d80431ce5f73f11/SizedItemContentView
	i32 3001046126, ; 756: 0xb2e0546e => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i32 3001685181, ; 757: 0xb2ea14bd => crc645d80431ce5f73f11/SpacingItemDecoration
	i32 3002147562, ; 758: 0xb2f122ea => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i32 3009639411, ; 759: 0xb36373f3 => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i32 3011148753, ; 760: 0xb37a7bd1 => androidx/appcompat/app/ActionBar$LayoutParams
	i32 3014306725, ; 761: 0xb3aaaba5 => crc64e1fb321c08285b90/CellAdapter
	i32 3014797707, ; 762: 0xb3b2298b => kotlin/Function
	i32 3016362707, ; 763: 0xb3ca0ad3 => androidx/core/graphics/drawable/IconCompat
	i32 3021714559, ; 764: 0xb41bb47f => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i32 3022088294, ; 765: 0xb4216866 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i32 3023394421, ; 766: 0xb4355675 => android/text/SpannableString
	i32 3027993654, ; 767: 0xb47b8436 => crc645d80431ce5f73f11/DataChangeObserver
	i32 3032808825, ; 768: 0xb4c4fd79 => java/io/StringWriter
	i32 3039765176, ; 769: 0xb52f22b8 => com/google/android/gms/location/GeofencingClient
	i32 3052396687, ; 770: 0xb5efe08f => android/view/animation/DecelerateInterpolator
	i32 3052490091, ; 771: 0xb5f14d6b => com/google/android/material/shape/CornerSize
	i32 3055966780, ; 772: 0xb6265a3c => androidx/core/view/WindowInsetsAnimationCompat
	i32 3069863309, ; 773: 0xb6fa658d => com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener
	i32 3072461607, ; 774: 0xb7220b27 => java/util/concurrent/Future
	i32 3074782437, ; 775: 0xb74574e5 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i32 3075597449, ; 776: 0xb751e489 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i32 3078871784, ; 777: 0xb783dae8 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i32 3082379345, ; 778: 0xb7b96051 => crc64e1fb321c08285b90/ListViewAdapter
	i32 3082841782, ; 779: 0xb7c06eb6 => android/util/Pair
	i32 3085278123, ; 780: 0xb7e59bab => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i32 3086955035, ; 781: 0xb7ff321b => androidx/appcompat/app/ActionBarDrawerToggle
	i32 3087255038, ; 782: 0xb803c5fe => android/preference/PreferenceManager
	i32 3098597018, ; 783: 0xb8b0d69a => android/webkit/WebResourceError
	i32 3104370935, ; 784: 0xb908f0f7 => com/google/android/gms/location/Geofence
	i32 3105495572, ; 785: 0xb91a1a14 => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i32 3106600980, ; 786: 0xb92af814 => androidx/viewpager2/widget/ViewPager2
	i32 3108395553, ; 787: 0xb9465a21 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i32 3116706335, ; 788: 0xb9c52a1f => android/view/View$AccessibilityDelegate
	i32 3117349163, ; 789: 0xb9cef92b => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i32 3118190009, ; 790: 0xb9dbcdb9 => crc64338477404e88479c/InnerGestureListener
	i32 3120157766, ; 791: 0xb9f9d446 => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i32 3133611750, ; 792: 0xbac71ee6 => com/google/android/gms/location/Geofence$Builder
	i32 3141422855, ; 793: 0xbb3e4f07 => android/view/ScaleGestureDetector
	i32 3143299449, ; 794: 0xbb5af179 => com/google/android/gms/location/SettingsClient
	i32 3145188486, ; 795: 0xbb77c486 => crc645d80431ce5f73f11/ItemContentView
	i32 3147264387, ; 796: 0xbb977183 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i32 3148065494, ; 797: 0xbba3aad6 => android/animation/ValueAnimator$AnimatorUpdateListener
	i32 3150778034, ; 798: 0xbbcd0eb2 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i32 3151655458, ; 799: 0xbbda7222 => androidx/appcompat/view/menu/MenuItemImpl
	i32 3154115283, ; 800: 0xbbfffad3 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i32 3161706197, ; 801: 0xbc73ced5 => androidx/appcompat/content/res/AppCompatResources
	i32 3164525707, ; 802: 0xbc9ed48b => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i32 3173193659, ; 803: 0xbd2317bb => android/content/pm/ShortcutInfo
	i32 3173395525, ; 804: 0xbd262c45 => android/os/IBinder
	i32 3173414241, ; 805: 0xbd267561 => android/graphics/Path$Direction
	i32 3178304415, ; 806: 0xbd71139f => android/view/inputmethod/InputMethodManager
	i32 3180861164, ; 807: 0xbd9816ec => androidx/appcompat/widget/LinearLayoutCompat
	i32 3183271055, ; 808: 0xbdbcdc8f => android/view/ActionMode$Callback
	i32 3184939993, ; 809: 0xbdd653d9 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i32 3185404740, ; 810: 0xbddd6b44 => androidx/navigation/NavigatorState
	i32 3189262385, ; 811: 0xbe184831 => android/graphics/MaskFilter
	i32 3189649675, ; 812: 0xbe1e310b => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i32 3193424560, ; 813: 0xbe57cab0 => android/text/style/ClickableSpan
	i32 3195156209, ; 814: 0xbe7236f1 => com/google/android/material/shape/ShapeAppearanceModel
	i32 3201749791, ; 815: 0xbed6d31f => android/content/ClipDescription
	i32 3203260291, ; 816: 0xbeeddf83 => android/widget/SeekBar
	i32 3203363508, ; 817: 0xbeef72b4 => android/view/KeyboardShortcutGroup
	i32 3207746877, ; 818: 0xbf32553d => android/os/LocaleList
	i32 3214744068, ; 819: 0xbf9d1a04 => android/view/WindowManager
	i32 3220226745, ; 820: 0xbff0c2b9 => androidx/navigation/NavType
	i32 3222907805, ; 821: 0xc019ab9d => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i32 3224369971, ; 822: 0xc02ffb33 => kotlin/jvm/functions/Function0
	i32 3225005363, ; 823: 0xc039ad33 => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i32 3244743755, ; 824: 0xc166dc4b => crc640ec207abc449b2ca/ShellItemRenderer
	i32 3247040539, ; 825: 0xc189e81b => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i32 3249054538, ; 826: 0xc1a8a34a => kotlinx/coroutines/flow/Flow
	i32 3255647836, ; 827: 0xc20d3e5c => com/google/android/material/navigation/NavigationBarMenuView
	i32 3262645996, ; 828: 0xc27806ec => android/graphics/BlurMaskFilter$Blur
	i32 3271087717, ; 829: 0xc2f8d665 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i32 3281925794, ; 830: 0xc39e36a2 => android/view/MenuItem
	i32 3287471889, ; 831: 0xc3f2d711 => androidx/activity/FullyDrawnReporter
	i32 3287761034, ; 832: 0xc3f7408a => crc645d80431ce5f73f11/EdgeSnapHelper
	i32 3290291610, ; 833: 0xc41ddd9a => android/view/ViewPropertyAnimator
	i32 3293983102, ; 834: 0xc456317e => android/graphics/Shader$TileMode
	i32 3299656254, ; 835: 0xc4acc23e => androidx/core/view/ScaleGestureDetectorCompat
	i32 3300906352, ; 836: 0xc4bfd570 => javax/net/ssl/SSLSession
	i32 3303217566, ; 837: 0xc4e3199e => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i32 3304711809, ; 838: 0xc4f9e681 => androidx/navigation/NavBackStackEntry
	i32 3306958698, ; 839: 0xc51c2f6a => crc64e95e69e34d869711/LocationCallback
	i32 3312352925, ; 840: 0xc56e7e9d => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i32 3319735188, ; 841: 0xc5df2394 => java/net/Proxy
	i32 3320874052, ; 842: 0xc5f08444 => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i32 3339677784, ; 843: 0xc70f7058 => androidx/core/util/Predicate
	i32 3341177627, ; 844: 0xc726531b => androidx/fragment/app/strictmode/FragmentStrictMode
	i32 3342764773, ; 845: 0xc73e8ae5 => androidx/recyclerview/widget/LinearSnapHelper
	i32 3343889639, ; 846: 0xc74fb4e7 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i32 3347458241, ; 847: 0xc78628c1 => android/graphics/Insets
	i32 3356789353, ; 848: 0xc8148a69 => android/graphics/DashPathEffect
	i32 3359636116, ; 849: 0xc83ffa94 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i32 3368559470, ; 850: 0xc8c8236e => android/graphics/drawable/shapes/Shape
	i32 3370156716, ; 851: 0xc8e082ac => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i32 3371638157, ; 852: 0xc8f71d8d => androidx/core/graphics/Insets
	i32 3378932770, ; 853: 0xc9666c22 => androidx/core/util/Consumer
	i32 3379688415, ; 854: 0xc971f3df => android/text/Editable
	i32 3386853318, ; 855: 0xc9df47c6 => androidx/core/content/pm/PackageInfoCompat
	i32 3388763936, ; 856: 0xc9fc6f20 => android/view/View$OnFocusChangeListener
	i32 3401332284, ; 857: 0xcabc363c => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i32 3409419575, ; 858: 0xcb379d37 => javax/net/ssl/HttpsURLConnection
	i32 3410676737, ; 859: 0xcb4acc01 => androidx/lifecycle/viewmodel/CreationExtras
	i32 3417008668, ; 860: 0xcbab6a1c => android/view/View$OnScrollChangeListener
	i32 3421524015, ; 861: 0xcbf0502f => com/google/android/material/tabs/TabLayout$Tab
	i32 3423467887, ; 862: 0xcc0df96f => java/lang/Number
	i32 3430868172, ; 863: 0xcc7ee4cc => android/content/SharedPreferences
	i32 3443033301, ; 864: 0xcd3884d5 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i32 3452178114, ; 865: 0xcdc40ec2 => com/microsoft/maui/BuildConfig
	i32 3455823519, ; 866: 0xcdfbae9f => android/view/accessibility/AccessibilityWindowInfo
	i32 3471044792, ; 867: 0xcee3f0b8 => androidx/core/app/NotificationCompat$BubbleMetadata
	i32 3474761348, ; 868: 0xcf1ca684 => com/google/android/gms/location/LocationSettingsStates
	i32 3481169142, ; 869: 0xcf7e6cf6 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i32 3482500154, ; 870: 0xcf92bc3a => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i32 3491622242, ; 871: 0xd01ded62 => androidx/appcompat/app/AppCompatDialog
	i32 3497630135, ; 872: 0xd07999b7 => android/graphics/Paint$FontMetricsInt
	i32 3498379094, ; 873: 0xd0850756 => crc645d80431ce5f73f11/EndSnapHelper
	i32 3499520136, ; 874: 0xd0967088 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i32 3502701795, ; 875: 0xd0c6fce3 => mono/android/view/View_OnScrollChangeListenerImplementor
	i32 3504008444, ; 876: 0xd0daecfc => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i32 3515974447, ; 877: 0xd191832f => java/util/function/IntConsumer
	i32 3519931621, ; 878: 0xd1cde4e5 => java/net/URLConnection
	i32 3521416662, ; 879: 0xd1e48dd6 => androidx/core/view/ViewCompat
	i32 3532650525, ; 880: 0xd28ff81d => android/text/style/WrapTogetherSpan
	i32 3537398366, ; 881: 0xd2d86a5e => android/graphics/Paint$Cap
	i32 3541988144, ; 882: 0xd31e7330 => com/google/android/material/tabs/TabLayoutMediator
	i32 3546452765, ; 883: 0xd362931d => android/text/TextDirectionHeuristic
	i32 3551598929, ; 884: 0xd3b11951 => crc645d80431ce5f73f11/SimpleViewHolder
	i32 3557984104, ; 885: 0xd4128768 => android/util/SizeF
	i32 3560870582, ; 886: 0xd43e92b6 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i32 3571274152, ; 887: 0xd4dd51a8 => androidx/appcompat/view/menu/MenuBuilder
	i32 3572718161, ; 888: 0xd4f35a51 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i32 3576242387, ; 889: 0xd52920d3 => android/runtime/JavaProxyThrowable
	i32 3586408147, ; 890: 0xd5c43ed3 => crc640ec207abc449b2ca/ShellItemRendererBase
	i32 3597654493, ; 891: 0xd66fd9dd => android/widget/AbsListView
	i32 3598385077, ; 892: 0xd67affb5 => com/google/android/gms/location/SettingsApi
	i32 3602087815, ; 893: 0xd6b37f87 => crc645d80431ce5f73f11/EmptyViewAdapter
	i32 3607985239, ; 894: 0xd70d7c57 => androidx/recyclerview/widget/RecyclerView$State
	i32 3609809655, ; 895: 0xd72952f7 => android/os/CancellationSignal
	i32 3612341153, ; 896: 0xd74ff3a1 => androidx/navigation/fragment/FragmentNavigator$Destination
	i32 3614244735, ; 897: 0xd76cff7f => androidx/appcompat/app/ActionBar$Tab
	i32 3620937142, ; 898: 0xd7d31db6 => androidx/appcompat/app/ActionBar$TabListener
	i32 3621319432, ; 899: 0xd7d8f308 => plugin/LocalNotification/GeofenceTransitionsIntentReceiver
	i32 3634270919, ; 900: 0xd89e92c7 => android/graphics/drawable/AnimationDrawable
	i32 3639027368, ; 901: 0xd8e726a8 => kotlinx/coroutines/flow/FlowCollector
	i32 3646270682, ; 902: 0xd955acda => com/google/android/gms/tasks/TaskCompletionSource
	i32 3651658816, ; 903: 0xd9a7e440 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i32 3661246018, ; 904: 0xda3a2e42 => crc64e1fb321c08285b90/ViewRenderer
	i32 3665774669, ; 905: 0xda7f484d => android/view/LayoutInflater
	i32 3666243682, ; 906: 0xda867062 => java/lang/String
	i32 3666999915, ; 907: 0xda91fa6b => androidx/recyclerview/widget/RecyclerView$Adapter
	i32 3667804956, ; 908: 0xda9e431c => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i32 3669061717, ; 909: 0xdab17055 => java/net/InetSocketAddress
	i32 3673444347, ; 910: 0xdaf44ffb => android/view/accessibility/AccessibilityEvent
	i32 3673549131, ; 911: 0xdaf5e94b => com/google/android/gms/common/api/ResultTransform
	i32 3675961650, ; 912: 0xdb1ab932 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i32 3680247283, ; 913: 0xdb5c1df3 => androidx/activity/ComponentDialog
	i32 3683323802, ; 914: 0xdb8b0f9a => mono/android/runtime/JavaObject
	i32 3684070586, ; 915: 0xdb9674ba => android/view/ActionProvider
	i32 3689014550, ; 916: 0xdbe1e516 => androidx/lifecycle/ViewModel
	i32 3694635824, ; 917: 0xdc37ab30 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i32 3698769169, ; 918: 0xdc76bd11 => android/text/SpannableStringBuilder
	i32 3701331277, ; 919: 0xdc9dd54d => android/graphics/Paint$Style
	i32 3702230909, ; 920: 0xdcab8f7d => java/lang/Double
	i32 3704926438, ; 921: 0xdcd4b0e6 => com/google/android/gms/common/api/Api$AnyClientKey
	i32 3711529970, ; 922: 0xdd3973f2 => android/text/style/MetricAffectingSpan
	i32 3715861037, ; 923: 0xdd7b8a2d => android/os/Build$VERSION
	i32 3721088312, ; 924: 0xddcb4d38 => android/text/NoCopySpan
	i32 3722843854, ; 925: 0xdde616ce => javax/net/SocketFactory
	i32 3722942310, ; 926: 0xdde79766 => android/text/method/NumberKeyListener
	i32 3725604931, ; 927: 0xde103843 => crc640ec207abc449b2ca/ShellSectionRenderer
	i32 3726680736, ; 928: 0xde20a2a0 => java/net/ProtocolException
	i32 3738171500, ; 929: 0xdecff86c => android/webkit/WebChromeClient
	i32 3753320089, ; 930: 0xdfb71e99 => android/text/style/TypefaceSpan
	i32 3759929762, ; 931: 0xe01bf9a2 => android/graphics/Bitmap
	i32 3760420180, ; 932: 0xe0237554 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i32 3762098798, ; 933: 0xe03d126e => androidx/activity/OnBackPressedDispatcher
	i32 3763853270, ; 934: 0xe057d7d6 => android/view/Window
	i32 3775242275, ; 935: 0xe105a023 => androidx/core/view/WindowInsetsControllerCompat
	i32 3784926020, ; 936: 0xe1996344 => androidx/customview/widget/Openable
	i32 3787118371, ; 937: 0xe1bad723 => com/google/android/gms/common/api/GoogleApiClient
	i32 3811192762, ; 938: 0xe32a2fba => android/content/res/TypedArray
	i32 3823421666, ; 939: 0xe3e4c8e2 => android/net/Uri
	i32 3828089420, ; 940: 0xe42c024c => crc640ec207abc449b2ca/RecyclerViewContainer
	i32 3828108282, ; 941: 0xe42c4bfa => android/widget/TextView$BufferType
	i32 3832468359, ; 942: 0xe46ed387 => com/google/android/gms/location/GeofencingRequest
	i32 3833943420, ; 943: 0xe485557c => com/google/android/gms/tasks/OnCompleteListener
	i32 3843901295, ; 944: 0xe51d476f => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i32 3844217531, ; 945: 0xe5221abb => android/graphics/Path$FillType
	i32 3844928680, ; 946: 0xe52cf4a8 => com/google/android/gms/tasks/OnSuccessListener
	i32 3850251058, ; 947: 0xe57e2b32 => androidx/navigation/fragment/NavHostFragment
	i32 3855323559, ; 948: 0xe5cb91a7 => androidx/appcompat/view/ActionMode
	i32 3859315228, ; 949: 0xe6087a1c => androidx/viewpager2/adapter/FragmentViewHolder
	i32 3865571169, ; 950: 0xe667ef61 => android/content/res/XmlResourceParser
	i32 3867610942, ; 951: 0xe6870f3e => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i32 3872328841, ; 952: 0xe6cf0c89 => android/view/animation/BaseInterpolator
	i32 3872548923, ; 953: 0xe6d2683b => com/google/android/material/navigation/NavigationBarView
	i32 3872825215, ; 954: 0xe6d69f7f => android/graphics/ColorFilter
	i32 3882570516, ; 955: 0xe76b5314 => java/lang/Class
	i32 3884080736, ; 956: 0xe7825e60 => android/webkit/WebView
	i32 3884639814, ; 957: 0xe78ae646 => android/text/Html
	i32 3888053904, ; 958: 0xe7befe90 => com/google/android/material/appbar/MaterialToolbar
	i32 3895425567, ; 959: 0xe82f7a1f => androidx/core/app/SharedElementCallback
	i32 3896288302, ; 960: 0xe83ca42e => android/widget/ImageView
	i32 3900328001, ; 961: 0xe87a4841 => android/graphics/Typeface
	i32 3900581163, ; 962: 0xe87e252b => java/io/InputStream
	i32 3901837667, ; 963: 0xe8915163 => android/text/InputFilter
	i32 3906036904, ; 964: 0xe8d164a8 => android/webkit/ValueCallback
	i32 3908062719, ; 965: 0xe8f04dff => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i32 3912451735, ; 966: 0xe9334697 => java/security/KeyStore
	i32 3914339241, ; 967: 0xe95013a9 => kotlin/coroutines/CoroutineContext
	i32 3919758710, ; 968: 0xe9a2c576 => android/view/ContextMenu
	i32 3922115040, ; 969: 0xe9c6b9e0 => com/google/android/material/bottomsheet/BottomSheetBehavior
	i32 3922373341, ; 970: 0xe9caaadd => androidx/fragment/app/Fragment$SavedState
	i32 3922608828, ; 971: 0xe9ce42bc => android/text/method/MetaKeyKeyListener
	i32 3926239517, ; 972: 0xea05a91d => android/app/TimePickerDialog$OnTimeSetListener
	i32 3931120197, ; 973: 0xea502245 => mono/android/content/DialogInterface_OnClickListenerImplementor
	i32 3933245259, ; 974: 0xea708f4b => android/graphics/Rect
	i32 3935004172, ; 975: 0xea8b660c => crc64338477404e88479c/FormattedStringExtensions_FontSpan
	i32 3938250520, ; 976: 0xeabcef18 => androidx/appcompat/widget/AppCompatCheckBox
	i32 3942801793, ; 977: 0xeb026181 => android/graphics/Region
	i32 3943749965, ; 978: 0xeb10d94d => android/content/pm/ShortcutManager
	i32 3944057747, ; 979: 0xeb158b93 => crc64338477404e88479c/GenericAnimatorListener
	i32 3948746266, ; 980: 0xeb5d161a => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i32 3951994042, ; 981: 0xeb8ea4ba => androidx/collection/SparseArrayCompat
	i32 3960484362, ; 982: 0xec10320a => mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor
	i32 3969645507, ; 983: 0xec9bfbc3 => androidx/core/widget/TextViewCompat
	i32 3969984744, ; 984: 0xeca128e8 => mono/android/runtime/InputStreamAdapter
	i32 3972486565, ; 985: 0xecc755a5 => android/graphics/BitmapShader
	i32 3975001277, ; 986: 0xecedb4bd => javax/net/ssl/SSLSocketFactory
	i32 3978181205, ; 987: 0xed1e3a55 => com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks
	i32 3984631894, ; 988: 0xed80a856 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i32 3992634724, ; 989: 0xedfac564 => com/google/android/gms/common/api/PendingResult$StatusListener
	i32 3993327007, ; 990: 0xee05559f => android/content/ContextWrapper
	i32 3995406185, ; 991: 0xee250f69 => android/graphics/Canvas
	i32 4011808769, ; 992: 0xef1f5801 => com/google/android/material/imageview/ShapeableImageView
	i32 4017528531, ; 993: 0xef769ed3 => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i32 4020308495, ; 994: 0xefa10a0f => java/lang/Error
	i32 4020645668, ; 995: 0xefa62f24 => android/graphics/drawable/DrawableContainer
	i32 4023386888, ; 996: 0xefd00308 => android/graphics/drawable/StateListDrawable
	i32 4026034127, ; 997: 0xeff867cf => androidx/core/view/PointerIconCompat
	i32 4029606005, ; 998: 0xf02ee875 => android/widget/FilterQueryProvider
	i32 4030673356, ; 999: 0xf03f31cc => android/app/Dialog
	i32 4030975555, ; 1000: 0xf043ce43 => android/view/animation/Interpolator
	i32 4034484106, ; 1001: 0xf079578a => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i32 4035763391, ; 1002: 0xf08cdcbf => android/view/View$OnDragListener
	i32 4038042141, ; 1003: 0xf0afa21d => android/text/style/UnderlineSpan
	i32 4040218938, ; 1004: 0xf0d0d93a => android/graphics/drawable/RippleDrawable
	i32 4042628807, ; 1005: 0xf0f59ec7 => androidx/recyclerview/widget/GridLayoutManager
	i32 4045677067, ; 1006: 0xf124220b => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i32 4051772911, ; 1007: 0xf18125ef => android/content/Context
	i32 4058436930, ; 1008: 0xf1e6d542 => android/view/GestureDetector
	i32 4060380528, ; 1009: 0xf2047d70 => android/view/WindowInsetsAnimation
	i32 4063030113, ; 1010: 0xf22ceb61 => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i32 4066255456, ; 1011: 0xf25e2260 => android/util/SparseArray
	i32 4066716669, ; 1012: 0xf2652bfd => com/google/android/material/shape/ShapePath
	i32 4082636076, ; 1013: 0xf358152c => androidx/fragment/app/FragmentHostCallback
	i32 4087518402, ; 1014: 0xf3a294c2 => mono/android/view/View_OnTouchListenerImplementor
	i32 4088038176, ; 1015: 0xf3aa8320 => java/io/Reader
	i32 4092040912, ; 1016: 0xf3e796d0 => com/google/android/gms/common/api/internal/ListenerHolder
	i32 4094719362, ; 1017: 0xf4107582 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i32 4096216012, ; 1018: 0xf4274bcc => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i32 4098107575, ; 1019: 0xf44428b7 => mono/android/view/View_OnClickListenerImplementor
	i32 4099031450, ; 1020: 0xf452419a => androidx/core/view/DisplayCutoutCompat
	i32 4101363546, ; 1021: 0xf475d75a => java/io/Writer
	i32 4101882262, ; 1022: 0xf47dc196 => androidx/viewpager/widget/PagerAdapter
	i32 4103358926, ; 1023: 0xf49449ce => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i32 4104288849, ; 1024: 0xf4a27a51 => android/text/TextUtils$TruncateAt
	i32 4112982215, ; 1025: 0xf52720c7 => androidx/loader/content/Loader$OnLoadCanceledListener
	i32 4115120460, ; 1026: 0xf547c14c => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i32 4116628111, ; 1027: 0xf55ec28f => androidx/lifecycle/LifecycleObserver
	i32 4118683314, ; 1028: 0xf57e1eb2 => androidx/navigation/ui/AppBarConfiguration$Builder
	i32 4118831524, ; 1029: 0xf58061a4 => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i32 4118878202, ; 1030: 0xf58117fa => android/os/Looper
	i32 4127266501, ; 1031: 0xf60116c5 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i32 4128216147, ; 1032: 0xf60f9453 => crc64e1fb321c08285b90/VisualElementRenderer_1
	i32 4129306385, ; 1033: 0xf6203711 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i32 4134800831, ; 1034: 0xf6740dbf => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i32 4137330413, ; 1035: 0xf69aa6ed => android/content/pm/ShortcutInfo$Builder
	i32 4138958204, ; 1036: 0xf6b37d7c => androidx/loader/app/LoaderManager$LoaderCallbacks
	i32 4142301000, ; 1037: 0xf6e67f48 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i32 4143999052, ; 1038: 0xf700684c => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i32 4148577720, ; 1039: 0xf74645b8 => androidx/core/app/ComponentActivity
	i32 4148593869, ; 1040: 0xf74684cd => javax/net/ssl/TrustManagerFactory
	i32 4157808693, ; 1041: 0xf7d32035 => java/io/IOException
	i32 4166165970, ; 1042: 0xf852a5d2 => android/text/TextWatcher
	i32 4167305683, ; 1043: 0xf86409d3 => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i32 4179857161, ; 1044: 0xf9238f09 => com/google/android/gms/tasks/Continuation
	i32 4180441522, ; 1045: 0xf92c79b2 => androidx/appcompat/app/AlertDialog
	i32 4184365991, ; 1046: 0xf9685ba7 => crc640ec207abc449b2ca/ShellContentFragment
	i32 4195364970, ; 1047: 0xfa10306a => android/graphics/Region$Op
	i32 4203502565, ; 1048: 0xfa8c5be5 => android/graphics/Bitmap$CompressFormat
	i32 4209385953, ; 1049: 0xfae621e1 => com/google/android/material/bottomnavigation/BottomNavigationView
	i32 4210334537, ; 1050: 0xfaf49b49 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i32 4211567724, ; 1051: 0xfb076c6c => android/view/ScaleGestureDetector$OnScaleGestureListener
	i32 4219996554, ; 1052: 0xfb88098a => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i32 4223518113, ; 1053: 0xfbbdc5a1 => android/text/style/StrikethroughSpan
	i32 4224328081, ; 1054: 0xfbca2191 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i32 4232707919, ; 1055: 0xfc49ff4f => java/util/HashSet
	i32 4236355936, ; 1056: 0xfc81a960 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i32 4236724582, ; 1057: 0xfc874966 => android/os/Parcelable
	i32 4237386260, ; 1058: 0xfc916214 => android/view/MenuItem$OnMenuItemClickListener
	i32 4248811056, ; 1059: 0xfd3fb630 => android/view/Menu
	i32 4250389251, ; 1060: 0xfd57cb03 => android/text/style/BackgroundColorSpan
	i32 4257868140, ; 1061: 0xfdc9e96c => crc6452ffdc5b34af3a0f/MauiTextView
	i32 4268216374, ; 1062: 0xfe67d036 => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i32 4271127433, ; 1063: 0xfe943b89 => android/graphics/PorterDuff
	i32 4272821305, ; 1064: 0xfeae1439 => androidx/lifecycle/ViewModelProvider$Factory
	i32 4274067371, ; 1065: 0xfec117ab => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i32 4275615380, ; 1066: 0xfed8b694 => crc64338477404e88479c/GenericGlobalLayoutListener
	i32 4276122596, ; 1067: 0xfee073e4 => android/media/AudioAttributes
	i32 4277523103, ; 1068: 0xfef5d29f => java/io/Closeable
	i32 4278949669, ; 1069: 0xff0b9725 => android/widget/CompoundButton$OnCheckedChangeListener
	i32 4282423861, ; 1070: 0xff409a35 => com/microsoft/maui/MauiViewGroup
	i32 4285233142, ; 1071: 0xff6b77f6 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i32 4290775940 ; 1072: 0xffc00b84 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
], align 4

@module0_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 57; uint32_t java_map_index (0x39)
	} ; 2
], align 4

@module0_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 236; uint32_t java_map_index (0xec)
	} ; 1
], align 4

@module1_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 1022; uint32_t java_map_index (0x3fe)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 261; uint32_t java_map_index (0x105)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 746; uint32_t java_map_index (0x2ea)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 76; uint32_t java_map_index (0x4c)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 1029; uint32_t java_map_index (0x405)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 534; uint32_t java_map_index (0x216)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 223; uint32_t java_map_index (0xdf)
	} ; 6
], align 4

@module1_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 1022; uint32_t java_map_index (0x3fe)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 746; uint32_t java_map_index (0x2ea)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 1029; uint32_t java_map_index (0x405)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 223; uint32_t java_map_index (0xdf)
	} ; 3
], align 4

@module2_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 826; uint32_t java_map_index (0x33a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 901; uint32_t java_map_index (0x385)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 228; uint32_t java_map_index (0xe4)
	} ; 3
], align 4

@module2_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 826; uint32_t java_map_index (0x33a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 901; uint32_t java_map_index (0x385)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 228; uint32_t java_map_index (0xe4)
	} ; 3
], align 4

@module3_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 95; uint32_t java_map_index (0x5f)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 201; uint32_t java_map_index (0xc9)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 822; uint32_t java_map_index (0x336)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 488; uint32_t java_map_index (0x1e8)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 322; uint32_t java_map_index (0x142)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 551; uint32_t java_map_index (0x227)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 438; uint32_t java_map_index (0x1b6)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 967; uint32_t java_map_index (0x3c7)
	} ; 8
], align 4

@module3_managed_to_java_duplicates = internal dso_local constant [8 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 95; uint32_t java_map_index (0x5f)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 822; uint32_t java_map_index (0x336)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 488; uint32_t java_map_index (0x1e8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 322; uint32_t java_map_index (0x142)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 551; uint32_t java_map_index (0x227)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 438; uint32_t java_map_index (0x1b6)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 967; uint32_t java_map_index (0x3c7)
	} ; 7
], align 4

@module4_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 159; uint32_t java_map_index (0x9f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 1025; uint32_t java_map_index (0x401)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 552; uint32_t java_map_index (0x228)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 1036; uint32_t java_map_index (0x40c)
	} ; 4
], align 4

@module4_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 1025; uint32_t java_map_index (0x401)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1036; uint32_t java_map_index (0x40c)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 552; uint32_t java_map_index (0x228)
	} ; 3
], align 4

@module5_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 280; uint32_t java_map_index (0x118)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 932; uint32_t java_map_index (0x3a4)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 802; uint32_t java_map_index (0x322)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 249; uint32_t java_map_index (0xf9)
	} ; 3
], align 4

@module5_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 932; uint32_t java_map_index (0x3a4)
	} ; 0
], align 4

@module6_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 614; uint32_t java_map_index (0x266)
	} ; 0
], align 4

@module6_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 614; uint32_t java_map_index (0x266)
	} ; 0
], align 4

@module7_managed_to_java = internal dso_local constant [23 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 450; uint32_t java_map_index (0x1c2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 839; uint32_t java_map_index (0x347)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 94; uint32_t java_map_index (0x5e)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 769; uint32_t java_map_index (0x301)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 794; uint32_t java_map_index (0x31a)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 285; uint32_t java_map_index (0x11d)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 942; uint32_t java_map_index (0x3ae)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 65; uint32_t java_map_index (0x41)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 83; uint32_t java_map_index (0x53)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 792; uint32_t java_map_index (0x318)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 784; uint32_t java_map_index (0x310)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 627; uint32_t java_map_index (0x273)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 892; uint32_t java_map_index (0x37c)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 741; uint32_t java_map_index (0x2e5)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 175; uint32_t java_map_index (0xaf)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 657; uint32_t java_map_index (0x291)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 312; uint32_t java_map_index (0x138)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 573; uint32_t java_map_index (0x23d)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 459; uint32_t java_map_index (0x1cb)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 386; uint32_t java_map_index (0x182)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 868; uint32_t java_map_index (0x364)
	} ; 22
], align 4

@module7_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 83; uint32_t java_map_index (0x53)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 94; uint32_t java_map_index (0x5e)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 784; uint32_t java_map_index (0x310)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 769; uint32_t java_map_index (0x301)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 627; uint32_t java_map_index (0x273)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 892; uint32_t java_map_index (0x37c)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 794; uint32_t java_map_index (0x31a)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 175; uint32_t java_map_index (0xaf)
	} ; 8
], align 4

@module8_managed_to_java = internal dso_local constant [12 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 137; uint32_t java_map_index (0x89)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 913; uint32_t java_map_index (0x391)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 831; uint32_t java_map_index (0x33f)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 933; uint32_t java_map_index (0x3a5)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 917; uint32_t java_map_index (0x395)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 278; uint32_t java_map_index (0x116)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 700; uint32_t java_map_index (0x2bc)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 596; uint32_t java_map_index (0x254)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 1043; uint32_t java_map_index (0x413)
	} ; 11
], align 4

@module8_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 278; uint32_t java_map_index (0x116)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 700; uint32_t java_map_index (0x2bc)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 596; uint32_t java_map_index (0x254)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 42; uint32_t java_map_index (0x2a)
	} ; 5
], align 4

@module9_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 565; uint32_t java_map_index (0x235)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 496; uint32_t java_map_index (0x1f0)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 567; uint32_t java_map_index (0x237)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1027; uint32_t java_map_index (0x403)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 90; uint32_t java_map_index (0x5a)
	} ; 4
], align 4

@module9_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1027; uint32_t java_map_index (0x403)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 90; uint32_t java_map_index (0x5a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 565; uint32_t java_map_index (0x235)
	} ; 2
], align 4

@module10_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 407; uint32_t java_map_index (0x197)
	} ; 0
], align 4

@module10_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 407; uint32_t java_map_index (0x197)
	} ; 0
], align 4

@module11_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 340; uint32_t java_map_index (0x154)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 896; uint32_t java_map_index (0x380)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 947; uint32_t java_map_index (0x3b3)
	} ; 2
], align 4

@module12_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 315; uint32_t java_map_index (0x13b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 568; uint32_t java_map_index (0x238)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 776; uint32_t java_map_index (0x308)
	} ; 2
], align 4

@module12_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 568; uint32_t java_map_index (0x238)
	} ; 0
], align 4

@module13_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 490; uint32_t java_map_index (0x1ea)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 320; uint32_t java_map_index (0x140)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 710; uint32_t java_map_index (0x2c6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 210; uint32_t java_map_index (0xd2)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 70; uint32_t java_map_index (0x46)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 52; uint32_t java_map_index (0x34)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 469; uint32_t java_map_index (0x1d5)
	} ; 6
], align 4

@module13_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 320; uint32_t java_map_index (0x140)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 710; uint32_t java_map_index (0x2c6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 70; uint32_t java_map_index (0x46)
	} ; 2
], align 4

@module14_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 593; uint32_t java_map_index (0x251)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 916; uint32_t java_map_index (0x394)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 493; uint32_t java_map_index (0x1ed)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 122; uint32_t java_map_index (0x7a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 1064; uint32_t java_map_index (0x428)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 441; uint32_t java_map_index (0x1b9)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 859; uint32_t java_map_index (0x35b)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 398; uint32_t java_map_index (0x18e)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 693; uint32_t java_map_index (0x2b5)
	} ; 8
], align 4

@module14_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 593; uint32_t java_map_index (0x251)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 916; uint32_t java_map_index (0x394)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 1064; uint32_t java_map_index (0x428)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 398; uint32_t java_map_index (0x18e)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 859; uint32_t java_map_index (0x35b)
	} ; 4
], align 4

@module15_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 981; uint32_t java_map_index (0x3d5)
	} ; 0
], align 4

@module16_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 717; uint32_t java_map_index (0x2cd)
	} ; 0
], align 4

@module17_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 718; uint32_t java_map_index (0x2ce)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 510; uint32_t java_map_index (0x1fe)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 771; uint32_t java_map_index (0x303)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 135; uint32_t java_map_index (0x87)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 246; uint32_t java_map_index (0xf6)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 814; uint32_t java_map_index (0x32e)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 19; uint32_t java_map_index (0x13)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 1012; uint32_t java_map_index (0x3f4)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 180; uint32_t java_map_index (0xb4)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 992; uint32_t java_map_index (0x3e0)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 519; uint32_t java_map_index (0x207)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 588; uint32_t java_map_index (0x24c)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 531; uint32_t java_map_index (0x213)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 181; uint32_t java_map_index (0xb5)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 494; uint32_t java_map_index (0x1ee)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 1034; uint32_t java_map_index (0x40a)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 463; uint32_t java_map_index (0x1cf)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 50; uint32_t java_map_index (0x32)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 45; uint32_t java_map_index (0x2d)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 969; uint32_t java_map_index (0x3c9)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 780; uint32_t java_map_index (0x30c)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 511; uint32_t java_map_index (0x1ff)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 477; uint32_t java_map_index (0x1dd)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 953; uint32_t java_map_index (0x3b9)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 110; uint32_t java_map_index (0x6e)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 621; uint32_t java_map_index (0x26d)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 310; uint32_t java_map_index (0x136)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 944; uint32_t java_map_index (0x3b0)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 205; uint32_t java_map_index (0xcd)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 827; uint32_t java_map_index (0x33b)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 225; uint32_t java_map_index (0xe1)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 670; uint32_t java_map_index (0x29e)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 274; uint32_t java_map_index (0x112)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 561; uint32_t java_map_index (0x231)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 266; uint32_t java_map_index (0x10a)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 563; uint32_t java_map_index (0x233)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 299; uint32_t java_map_index (0x12b)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 861; uint32_t java_map_index (0x35d)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 882; uint32_t java_map_index (0x372)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 1033; uint32_t java_map_index (0x409)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 155; uint32_t java_map_index (0x9b)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 876; uint32_t java_map_index (0x36c)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 290; uint32_t java_map_index (0x122)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 1049; uint32_t java_map_index (0x419)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 1050; uint32_t java_map_index (0x41a)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 1072; uint32_t java_map_index (0x430)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 231; uint32_t java_map_index (0xe7)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 412; uint32_t java_map_index (0x19c)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 475; uint32_t java_map_index (0x1db)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 624; uint32_t java_map_index (0x270)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 66; uint32_t java_map_index (0x42)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 503; uint32_t java_map_index (0x1f7)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 888; uint32_t java_map_index (0x378)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 539; uint32_t java_map_index (0x21b)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 56; uint32_t java_map_index (0x38)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 639; uint32_t java_map_index (0x27f)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 958; uint32_t java_map_index (0x3be)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 592; uint32_t java_map_index (0x250)
	} ; 66
], align 4

@module17_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 771; uint32_t java_map_index (0x303)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 531; uint32_t java_map_index (0x213)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 494; uint32_t java_map_index (0x1ee)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 50; uint32_t java_map_index (0x32)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 780; uint32_t java_map_index (0x30c)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 110; uint32_t java_map_index (0x6e)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 310; uint32_t java_map_index (0x136)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 205; uint32_t java_map_index (0xcd)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 827; uint32_t java_map_index (0x33b)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 953; uint32_t java_map_index (0x3b9)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 563; uint32_t java_map_index (0x233)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 1033; uint32_t java_map_index (0x409)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 1050; uint32_t java_map_index (0x41a)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 1072; uint32_t java_map_index (0x430)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 231; uint32_t java_map_index (0xe7)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 624; uint32_t java_map_index (0x270)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 888; uint32_t java_map_index (0x378)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 639; uint32_t java_map_index (0x27f)
	} ; 24
], align 4

@module18_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 435; uint32_t java_map_index (0x1b3)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 415; uint32_t java_map_index (0x19f)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 471; uint32_t java_map_index (0x1d7)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 502; uint32_t java_map_index (0x1f6)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 838; uint32_t java_map_index (0x346)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 54; uint32_t java_map_index (0x36)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 665; uint32_t java_map_index (0x299)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 562; uint32_t java_map_index (0x232)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 431; uint32_t java_map_index (0x1af)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 557; uint32_t java_map_index (0x22d)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 542; uint32_t java_map_index (0x21e)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 61; uint32_t java_map_index (0x3d)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 579; uint32_t java_map_index (0x243)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 810; uint32_t java_map_index (0x32a)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 406; uint32_t java_map_index (0x196)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 820; uint32_t java_map_index (0x334)
	} ; 16
], align 4

@module18_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 435; uint32_t java_map_index (0x1b3)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 415; uint32_t java_map_index (0x19f)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 579; uint32_t java_map_index (0x243)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 61; uint32_t java_map_index (0x3d)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 810; uint32_t java_map_index (0x32a)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 820; uint32_t java_map_index (0x334)
	} ; 5
], align 4

@module19_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 899; uint32_t java_map_index (0x383)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 461; uint32_t java_map_index (0x1cd)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 408; uint32_t java_map_index (0x198)
	} ; 2
], align 4

@module20_managed_to_java = internal dso_local constant [11 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 434; uint32_t java_map_index (0x1b2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 902; uint32_t java_map_index (0x386)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 574; uint32_t java_map_index (0x23e)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 1044; uint32_t java_map_index (0x414)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 308; uint32_t java_map_index (0x134)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 946; uint32_t java_map_index (0x3b2)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 752; uint32_t java_map_index (0x2f0)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 745; uint32_t java_map_index (0x2e9)
	} ; 10
], align 4

@module20_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 574; uint32_t java_map_index (0x23e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 1044; uint32_t java_map_index (0x414)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 308; uint32_t java_map_index (0x134)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 946; uint32_t java_map_index (0x3b2)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 752; uint32_t java_map_index (0x2f0)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 434; uint32_t java_map_index (0x1b2)
	} ; 8
], align 4

@module21_managed_to_java = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 163; uint32_t java_map_index (0xa3)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 309; uint32_t java_map_index (0x135)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 517; uint32_t java_map_index (0x205)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 1016; uint32_t java_map_index (0x3f8)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 140; uint32_t java_map_index (0x8c)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 987; uint32_t java_map_index (0x3db)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 773; uint32_t java_map_index (0x305)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 641; uint32_t java_map_index (0x281)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 402; uint32_t java_map_index (0x192)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 921; uint32_t java_map_index (0x399)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 182; uint32_t java_map_index (0xb6)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 23; uint32_t java_map_index (0x17)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 465; uint32_t java_map_index (0x1d1)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 397; uint32_t java_map_index (0x18d)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 982; uint32_t java_map_index (0x3d6)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 911; uint32_t java_map_index (0x38f)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554482, ; uint32_t type_token_id (0x2000032)
		i32 388; uint32_t java_map_index (0x184)
	} ; 20
], align 4

@module21_managed_to_java_duplicates = internal dso_local constant [14 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 309; uint32_t java_map_index (0x135)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 517; uint32_t java_map_index (0x205)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 987; uint32_t java_map_index (0x3db)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 773; uint32_t java_map_index (0x305)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 402; uint32_t java_map_index (0x192)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 182; uint32_t java_map_index (0xb6)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 465; uint32_t java_map_index (0x1d1)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 397; uint32_t java_map_index (0x18d)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 911; uint32_t java_map_index (0x38f)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554483, ; uint32_t type_token_id (0x2000033)
		i32 388; uint32_t java_map_index (0x184)
	} ; 13
], align 4

@module22_managed_to_java = internal dso_local constant [461 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 569; uint32_t java_map_index (0x239)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 626; uint32_t java_map_index (0x272)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 379; uint32_t java_map_index (0x17b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 925; uint32_t java_map_index (0x39d)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 858; uint32_t java_map_index (0x35a)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 680; uint32_t java_map_index (0x2a8)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 836; uint32_t java_map_index (0x344)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 208; uint32_t java_map_index (0xd0)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 271; uint32_t java_map_index (0x10f)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 333; uint32_t java_map_index (0x14d)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 986; uint32_t java_map_index (0x3da)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 1040; uint32_t java_map_index (0x410)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 48; uint32_t java_map_index (0x30)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 629; uint32_t java_map_index (0x275)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 891; uint32_t java_map_index (0x37b)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 260; uint32_t java_map_index (0x104)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554636, ; uint32_t type_token_id (0x20000cc)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 515; uint32_t java_map_index (0x203)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 1031; uint32_t java_map_index (0x407)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554641, ; uint32_t type_token_id (0x20000d1)
		i32 279; uint32_t java_map_index (0x117)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554643, ; uint32_t type_token_id (0x20000d3)
		i32 497; uint32_t java_map_index (0x1f1)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 400; uint32_t java_map_index (0x190)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 664; uint32_t java_map_index (0x298)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 390; uint32_t java_map_index (0x186)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554653, ; uint32_t type_token_id (0x20000dd)
		i32 428; uint32_t java_map_index (0x1ac)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554655, ; uint32_t type_token_id (0x20000df)
		i32 1069; uint32_t java_map_index (0x42d)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 566; uint32_t java_map_index (0x236)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 430; uint32_t java_map_index (0x1ae)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554665, ; uint32_t type_token_id (0x20000e9)
		i32 248; uint32_t java_map_index (0xf8)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 321; uint32_t java_map_index (0x141)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 442; uint32_t java_map_index (0x1ba)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 523; uint32_t java_map_index (0x20b)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 235; uint32_t java_map_index (0xeb)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 684; uint32_t java_map_index (0x2ac)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 332; uint32_t java_map_index (0x14c)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 998; uint32_t java_map_index (0x3e6)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554678, ; uint32_t type_token_id (0x20000f6)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 678; uint32_t java_map_index (0x2a6)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 960; uint32_t java_map_index (0x3c0)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 659; uint32_t java_map_index (0x293)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554683, ; uint32_t type_token_id (0x20000fb)
		i32 128; uint32_t java_map_index (0x80)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 538; uint32_t java_map_index (0x21a)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 480; uint32_t java_map_index (0x1e0)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 367; uint32_t java_map_index (0x16f)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 742; uint32_t java_map_index (0x2e6)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 373; uint32_t java_map_index (0x175)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 287; uint32_t java_map_index (0x11f)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 202; uint32_t java_map_index (0xca)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 602; uint32_t java_map_index (0x25a)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 816; uint32_t java_map_index (0x330)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 319; uint32_t java_map_index (0x13f)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 603; uint32_t java_map_index (0x25b)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 687; uint32_t java_map_index (0x2af)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 941; uint32_t java_map_index (0x3ad)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 612; uint32_t java_map_index (0x264)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 527; uint32_t java_map_index (0x20f)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554713, ; uint32_t type_token_id (0x2000119)
		i32 413; uint32_t java_map_index (0x19d)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554715, ; uint32_t type_token_id (0x200011b)
		i32 964; uint32_t java_map_index (0x3c4)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554717, ; uint32_t type_token_id (0x200011d)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554719, ; uint32_t type_token_id (0x200011f)
		i32 929; uint32_t java_map_index (0x3a1)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 533; uint32_t java_map_index (0x215)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554722, ; uint32_t type_token_id (0x2000122)
		i32 783; uint32_t java_map_index (0x30f)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554724, ; uint32_t type_token_id (0x2000124)
		i32 635; uint32_t java_map_index (0x27b)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 956; uint32_t java_map_index (0x3bc)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 682; uint32_t java_map_index (0x2aa)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554730, ; uint32_t type_token_id (0x200012a)
		i32 25; uint32_t java_map_index (0x19)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554731, ; uint32_t type_token_id (0x200012b)
		i32 736; uint32_t java_map_index (0x2e0)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554733, ; uint32_t type_token_id (0x200012d)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554734, ; uint32_t type_token_id (0x200012e)
		i32 779; uint32_t java_map_index (0x30b)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554735, ; uint32_t type_token_id (0x200012f)
		i32 885; uint32_t java_map_index (0x375)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 1011; uint32_t java_map_index (0x3f3)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554737, ; uint32_t type_token_id (0x2000131)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 609; uint32_t java_map_index (0x261)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 957; uint32_t java_map_index (0x3bd)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 854; uint32_t java_map_index (0x356)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 256; uint32_t java_map_index (0x100)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 963; uint32_t java_map_index (0x3c3)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 924; uint32_t java_map_index (0x39c)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 702; uint32_t java_map_index (0x2be)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 462; uint32_t java_map_index (0x1ce)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 883; uint32_t java_map_index (0x373)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 1042; uint32_t java_map_index (0x412)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 448; uint32_t java_map_index (0x1c0)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 276; uint32_t java_map_index (0x114)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 766; uint32_t java_map_index (0x2fe)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 918; uint32_t java_map_index (0x396)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 372; uint32_t java_map_index (0x174)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 637; uint32_t java_map_index (0x27d)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554773, ; uint32_t type_token_id (0x2000155)
		i32 283; uint32_t java_map_index (0x11b)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 230; uint32_t java_map_index (0xe6)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 229; uint32_t java_map_index (0xe5)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 1024; uint32_t java_map_index (0x400)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 479; uint32_t java_map_index (0x1df)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554783, ; uint32_t type_token_id (0x200015f)
		i32 1060; uint32_t java_map_index (0x424)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554784, ; uint32_t type_token_id (0x2000160)
		i32 528; uint32_t java_map_index (0x210)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554785, ; uint32_t type_token_id (0x2000161)
		i32 84; uint32_t java_map_index (0x54)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554787, ; uint32_t type_token_id (0x2000163)
		i32 813; uint32_t java_map_index (0x32d)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 492; uint32_t java_map_index (0x1ec)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33554790, ; uint32_t type_token_id (0x2000166)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 731; uint32_t java_map_index (0x2db)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 880; uint32_t java_map_index (0x370)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33554796, ; uint32_t type_token_id (0x200016c)
		i32 922; uint32_t java_map_index (0x39a)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 1053; uint32_t java_map_index (0x41d)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33554799, ; uint32_t type_token_id (0x200016f)
		i32 300; uint32_t java_map_index (0x12c)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 179; uint32_t java_map_index (0xb3)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 930; uint32_t java_map_index (0x3a2)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33554803, ; uint32_t type_token_id (0x2000173)
		i32 1003; uint32_t java_map_index (0x3eb)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 240; uint32_t java_map_index (0xf0)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33554806, ; uint32_t type_token_id (0x2000176)
		i32 750; uint32_t java_map_index (0x2ee)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 153; uint32_t java_map_index (0x99)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 971; uint32_t java_map_index (0x3cb)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33554811, ; uint32_t type_token_id (0x200017b)
		i32 926; uint32_t java_map_index (0x39e)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 708; uint32_t java_map_index (0x2c4)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 782; uint32_t java_map_index (0x30e)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 452; uint32_t java_map_index (0x1c4)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33554816, ; uint32_t type_token_id (0x2000180)
		i32 711; uint32_t java_map_index (0x2c7)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 923; uint32_t java_map_index (0x39b)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 141; uint32_t java_map_index (0x8d)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 895; uint32_t java_map_index (0x37f)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33554820, ; uint32_t type_token_id (0x2000184)
		i32 405; uint32_t java_map_index (0x195)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33554821, ; uint32_t type_token_id (0x2000185)
		i32 190; uint32_t java_map_index (0xbe)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33554823, ; uint32_t type_token_id (0x2000187)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33554825, ; uint32_t type_token_id (0x2000189)
		i32 443; uint32_t java_map_index (0x1bb)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33554827, ; uint32_t type_token_id (0x200018b)
		i32 529; uint32_t java_map_index (0x211)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33554829, ; uint32_t type_token_id (0x200018d)
		i32 1057; uint32_t java_map_index (0x421)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 818; uint32_t java_map_index (0x332)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 1030; uint32_t java_map_index (0x406)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 349; uint32_t java_map_index (0x15d)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 121; uint32_t java_map_index (0x79)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33554835, ; uint32_t type_token_id (0x2000193)
		i32 197; uint32_t java_map_index (0xc5)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 486; uint32_t java_map_index (0x1e6)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 325; uint32_t java_map_index (0x145)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 314; uint32_t java_map_index (0x13a)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33554842, ; uint32_t type_token_id (0x200019a)
		i32 126; uint32_t java_map_index (0x7e)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 939; uint32_t java_map_index (0x3ab)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33554845, ; uint32_t type_token_id (0x200019d)
		i32 1067; uint32_t java_map_index (0x42b)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33554846, ; uint32_t type_token_id (0x200019e)
		i32 195; uint32_t java_map_index (0xc3)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33554847, ; uint32_t type_token_id (0x200019f)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 245; uint32_t java_map_index (0xf5)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33554852, ; uint32_t type_token_id (0x20001a4)
		i32 536; uint32_t java_map_index (0x218)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 263; uint32_t java_map_index (0x107)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33554855, ; uint32_t type_token_id (0x20001a7)
		i32 253; uint32_t java_map_index (0xfd)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33554857, ; uint32_t type_token_id (0x20001a9)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33554861, ; uint32_t type_token_id (0x20001ad)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33554864, ; uint32_t type_token_id (0x20001b0)
		i32 554; uint32_t java_map_index (0x22a)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33554866, ; uint32_t type_token_id (0x20001b2)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33554868, ; uint32_t type_token_id (0x20001b4)
		i32 301; uint32_t java_map_index (0x12d)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33554869, ; uint32_t type_token_id (0x20001b5)
		i32 797; uint32_t java_map_index (0x31d)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33554872, ; uint32_t type_token_id (0x20001b8)
		i32 265; uint32_t java_map_index (0x109)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33554873, ; uint32_t type_token_id (0x20001b9)
		i32 193; uint32_t java_map_index (0xc1)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33554878, ; uint32_t type_token_id (0x20001be)
		i32 661; uint32_t java_map_index (0x295)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33554881, ; uint32_t type_token_id (0x20001c1)
		i32 512; uint32_t java_map_index (0x200)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 241; uint32_t java_map_index (0xf1)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33554883, ; uint32_t type_token_id (0x20001c3)
		i32 401; uint32_t java_map_index (0x191)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33554884, ; uint32_t type_token_id (0x20001c4)
		i32 541; uint32_t java_map_index (0x21d)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33554885, ; uint32_t type_token_id (0x20001c5)
		i32 587; uint32_t java_map_index (0x24b)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33554886, ; uint32_t type_token_id (0x20001c6)
		i32 444; uint32_t java_map_index (0x1bc)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33554888, ; uint32_t type_token_id (0x20001c8)
		i32 302; uint32_t java_map_index (0x12e)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 654; uint32_t java_map_index (0x28e)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33554892, ; uint32_t type_token_id (0x20001cc)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33554893, ; uint32_t type_token_id (0x20001cd)
		i32 999; uint32_t java_map_index (0x3e7)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33554901, ; uint32_t type_token_id (0x20001d5)
		i32 143; uint32_t java_map_index (0x8f)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33554902, ; uint32_t type_token_id (0x20001d6)
		i32 653; uint32_t java_map_index (0x28d)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33554903, ; uint32_t type_token_id (0x20001d7)
		i32 375; uint32_t java_map_index (0x177)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33554904, ; uint32_t type_token_id (0x20001d8)
		i32 289; uint32_t java_map_index (0x121)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33554905, ; uint32_t type_token_id (0x20001d9)
		i32 211; uint32_t java_map_index (0xd3)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33554906, ; uint32_t type_token_id (0x20001da)
		i32 640; uint32_t java_map_index (0x280)
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 33554907, ; uint32_t type_token_id (0x20001db)
		i32 607; uint32_t java_map_index (0x25f)
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 33554908, ; uint32_t type_token_id (0x20001dc)
		i32 221; uint32_t java_map_index (0xdd)
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 33554909, ; uint32_t type_token_id (0x20001dd)
		i32 123; uint32_t java_map_index (0x7b)
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 154; uint32_t java_map_index (0x9a)
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 33554911, ; uint32_t type_token_id (0x20001df)
		i32 972; uint32_t java_map_index (0x3cc)
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 33554914, ; uint32_t type_token_id (0x20001e2)
		i32 207; uint32_t java_map_index (0xcf)
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 33554915, ; uint32_t type_token_id (0x20001e3)
		i32 104; uint32_t java_map_index (0x68)
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 33554927, ; uint32_t type_token_id (0x20001ef)
		i32 395; uint32_t java_map_index (0x18b)
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 33554928, ; uint32_t type_token_id (0x20001f0)
		i32 724; uint32_t java_map_index (0x2d4)
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 33554929, ; uint32_t type_token_id (0x20001f1)
		i32 808; uint32_t java_map_index (0x328)
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 33554932, ; uint32_t type_token_id (0x20001f4)
		i32 915; uint32_t java_map_index (0x393)
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 33554934, ; uint32_t type_token_id (0x20001f6)
		i32 433; uint32_t java_map_index (0x1b1)
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 33554935, ; uint32_t type_token_id (0x20001f7)
		i32 524; uint32_t java_map_index (0x20c)
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 33554936, ; uint32_t type_token_id (0x20001f8)
		i32 404; uint32_t java_map_index (0x194)
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 33554937, ; uint32_t type_token_id (0x20001f9)
		i32 715; uint32_t java_map_index (0x2cb)
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 33554938, ; uint32_t type_token_id (0x20001fa)
		i32 1008; uint32_t java_map_index (0x3f0)
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 33554939, ; uint32_t type_token_id (0x20001fb)
		i32 258; uint32_t java_map_index (0x102)
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 157; uint32_t java_map_index (0x9d)
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 33554943, ; uint32_t type_token_id (0x20001ff)
		i32 644; uint32_t java_map_index (0x284)
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 33554945, ; uint32_t type_token_id (0x2000201)
		i32 968; uint32_t java_map_index (0x3c8)
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 33554947, ; uint32_t type_token_id (0x2000203)
		i32 1059; uint32_t java_map_index (0x423)
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 33554950, ; uint32_t type_token_id (0x2000206)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 33554952, ; uint32_t type_token_id (0x2000208)
		i32 1058; uint32_t java_map_index (0x422)
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 33554954, ; uint32_t type_token_id (0x200020a)
		i32 830; uint32_t java_map_index (0x33e)
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 33554957, ; uint32_t type_token_id (0x200020d)
		i32 735; uint32_t java_map_index (0x2df)
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 33554959, ; uint32_t type_token_id (0x200020f)
		i32 295; uint32_t java_map_index (0x127)
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 33554961, ; uint32_t type_token_id (0x2000211)
		i32 361; uint32_t java_map_index (0x169)
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 33554963, ; uint32_t type_token_id (0x2000213)
		i32 119; uint32_t java_map_index (0x77)
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 33554965, ; uint32_t type_token_id (0x2000215)
		i32 730; uint32_t java_map_index (0x2da)
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 33554967, ; uint32_t type_token_id (0x2000217)
		i32 623; uint32_t java_map_index (0x26f)
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 33554969, ; uint32_t type_token_id (0x2000219)
		i32 743; uint32_t java_map_index (0x2e7)
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 33554970, ; uint32_t type_token_id (0x200021a)
		i32 656; uint32_t java_map_index (0x290)
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 33554973, ; uint32_t type_token_id (0x200021d)
		i32 819; uint32_t java_map_index (0x333)
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 33554975, ; uint32_t type_token_id (0x200021f)
		i32 817; uint32_t java_map_index (0x331)
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 33554976, ; uint32_t type_token_id (0x2000220)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 33554977, ; uint32_t type_token_id (0x2000221)
		i32 905; uint32_t java_map_index (0x389)
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 33554979, ; uint32_t type_token_id (0x2000223)
		i32 439; uint32_t java_map_index (0x1b7)
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 33554980, ; uint32_t type_token_id (0x2000224)
		i32 686; uint32_t java_map_index (0x2ae)
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 49; uint32_t java_map_index (0x31)
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 793; uint32_t java_map_index (0x319)
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 1051; uint32_t java_map_index (0x41b)
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 33554986, ; uint32_t type_token_id (0x200022a)
		i32 857; uint32_t java_map_index (0x359)
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 33554987, ; uint32_t type_token_id (0x200022b)
		i32 483; uint32_t java_map_index (0x1e3)
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 419; uint32_t java_map_index (0x1a3)
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 33554989, ; uint32_t type_token_id (0x200022d)
		i32 788; uint32_t java_map_index (0x314)
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 151; uint32_t java_map_index (0x97)
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 698; uint32_t java_map_index (0x2ba)
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 33554992, ; uint32_t type_token_id (0x2000230)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 33554996, ; uint32_t type_token_id (0x2000234)
		i32 427; uint32_t java_map_index (0x1ab)
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 33554997, ; uint32_t type_token_id (0x2000235)
		i32 464; uint32_t java_map_index (0x1d0)
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 33554999, ; uint32_t type_token_id (0x2000237)
		i32 1019; uint32_t java_map_index (0x3fb)
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 33555000, ; uint32_t type_token_id (0x2000238)
		i32 1002; uint32_t java_map_index (0x3ea)
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 856; uint32_t java_map_index (0x358)
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 33555005, ; uint32_t type_token_id (0x200023d)
		i32 275; uint32_t java_map_index (0x113)
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 33555006, ; uint32_t type_token_id (0x200023e)
		i32 381; uint32_t java_map_index (0x17d)
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 33555008, ; uint32_t type_token_id (0x2000240)
		i32 689; uint32_t java_map_index (0x2b1)
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 33555011, ; uint32_t type_token_id (0x2000243)
		i32 719; uint32_t java_map_index (0x2cf)
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 33555012, ; uint32_t type_token_id (0x2000244)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 33555015, ; uint32_t type_token_id (0x2000247)
		i32 829; uint32_t java_map_index (0x33d)
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 33555016, ; uint32_t type_token_id (0x2000248)
		i32 860; uint32_t java_map_index (0x35c)
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 33555019, ; uint32_t type_token_id (0x200024b)
		i32 875; uint32_t java_map_index (0x36b)
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 33555020, ; uint32_t type_token_id (0x200024c)
		i32 423; uint32_t java_map_index (0x1a7)
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 33555023, ; uint32_t type_token_id (0x200024f)
		i32 1014; uint32_t java_map_index (0x3f6)
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 33555041, ; uint32_t type_token_id (0x2000261)
		i32 482; uint32_t java_map_index (0x1e2)
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 33555042, ; uint32_t type_token_id (0x2000262)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 33555043, ; uint32_t type_token_id (0x2000263)
		i32 86; uint32_t java_map_index (0x56)
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 33555044, ; uint32_t type_token_id (0x2000264)
		i32 117; uint32_t java_map_index (0x75)
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 33555045, ; uint32_t type_token_id (0x2000265)
		i32 67; uint32_t java_map_index (0x43)
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 33555049, ; uint32_t type_token_id (0x2000269)
		i32 683; uint32_t java_map_index (0x2ab)
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 33555054, ; uint32_t type_token_id (0x200026e)
		i32 833; uint32_t java_map_index (0x341)
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 33555055, ; uint32_t type_token_id (0x200026f)
		i32 138; uint32_t java_map_index (0x8a)
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 33555056, ; uint32_t type_token_id (0x2000270)
		i32 1056; uint32_t java_map_index (0x420)
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 33555058, ; uint32_t type_token_id (0x2000272)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 316; uint32_t java_map_index (0x13c)
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 33555062, ; uint32_t type_token_id (0x2000276)
		i32 62; uint32_t java_map_index (0x3e)
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 33555063, ; uint32_t type_token_id (0x2000277)
		i32 1009; uint32_t java_map_index (0x3f1)
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 33555064, ; uint32_t type_token_id (0x2000278)
		i32 720; uint32_t java_map_index (0x2d0)
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 33555065, ; uint32_t type_token_id (0x2000279)
		i32 251; uint32_t java_map_index (0xfb)
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 33555094, ; uint32_t type_token_id (0x2000296)
		i32 806; uint32_t java_map_index (0x326)
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 33555098, ; uint32_t type_token_id (0x200029a)
		i32 368; uint32_t java_map_index (0x170)
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 33555099, ; uint32_t type_token_id (0x200029b)
		i32 537; uint32_t java_map_index (0x219)
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 33555100, ; uint32_t type_token_id (0x200029c)
		i32 437; uint32_t java_map_index (0x1b5)
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 33555103, ; uint32_t type_token_id (0x200029f)
		i32 560; uint32_t java_map_index (0x230)
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 33555104, ; uint32_t type_token_id (0x20002a0)
		i32 377; uint32_t java_map_index (0x179)
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 33555105, ; uint32_t type_token_id (0x20002a1)
		i32 952; uint32_t java_map_index (0x3b8)
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 770; uint32_t java_map_index (0x302)
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 33555108, ; uint32_t type_token_id (0x20002a4)
		i32 1000; uint32_t java_map_index (0x3e8)
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 33555110, ; uint32_t type_token_id (0x20002a6)
		i32 144; uint32_t java_map_index (0x90)
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 33555111, ; uint32_t type_token_id (0x20002a7)
		i32 910; uint32_t java_map_index (0x38e)
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 33555112, ; uint32_t type_token_id (0x20002a8)
		i32 589; uint32_t java_map_index (0x24d)
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 294; uint32_t java_map_index (0x126)
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 33555114, ; uint32_t type_token_id (0x20002aa)
		i32 522; uint32_t java_map_index (0x20a)
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 866; uint32_t java_map_index (0x362)
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 33555140, ; uint32_t type_token_id (0x20002c4)
		i32 984; uint32_t java_map_index (0x3d8)
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 33555143, ; uint32_t type_token_id (0x20002c7)
		i32 748; uint32_t java_map_index (0x2ec)
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 33555145, ; uint32_t type_token_id (0x20002c9)
		i32 336; uint32_t java_map_index (0x150)
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 33555147, ; uint32_t type_token_id (0x20002cb)
		i32 378; uint32_t java_map_index (0x17a)
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 33555156, ; uint32_t type_token_id (0x20002d4)
		i32 168; uint32_t java_map_index (0xa8)
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 33555158, ; uint32_t type_token_id (0x20002d6)
		i32 914; uint32_t java_map_index (0x392)
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 33555159, ; uint32_t type_token_id (0x20002d7)
		i32 889; uint32_t java_map_index (0x379)
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 33555160, ; uint32_t type_token_id (0x20002d8)
		i32 1055; uint32_t java_map_index (0x41f)
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 33555172, ; uint32_t type_token_id (0x20002e4)
		i32 124; uint32_t java_map_index (0x7c)
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 33555184, ; uint32_t type_token_id (0x20002f0)
		i32 102; uint32_t java_map_index (0x66)
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 33555185, ; uint32_t type_token_id (0x20002f1)
		i32 931; uint32_t java_map_index (0x3a3)
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 33555186, ; uint32_t type_token_id (0x20002f2)
		i32 1048; uint32_t java_map_index (0x418)
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 33555187, ; uint32_t type_token_id (0x20002f3)
		i32 206; uint32_t java_map_index (0xce)
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 33555189, ; uint32_t type_token_id (0x20002f5)
		i32 222; uint32_t java_map_index (0xde)
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 985; uint32_t java_map_index (0x3d9)
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 734; uint32_t java_map_index (0x2de)
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 24; uint32_t java_map_index (0x18)
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 828; uint32_t java_map_index (0x33c)
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 991; uint32_t java_map_index (0x3df)
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 954; uint32_t java_map_index (0x3ba)
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 848; uint32_t java_map_index (0x350)
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 847; uint32_t java_map_index (0x34f)
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 396; uint32_t java_map_index (0x18c)
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 811; uint32_t java_map_index (0x32b)
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 417; uint32_t java_map_index (0x1a1)
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 339; uint32_t java_map_index (0x153)
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 881; uint32_t java_map_index (0x371)
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 872; uint32_t java_map_index (0x368)
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 178; uint32_t java_map_index (0xb2)
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 33555208, ; uint32_t type_token_id (0x2000308)
		i32 919; uint32_t java_map_index (0x397)
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 548; uint32_t java_map_index (0x224)
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 33555210, ; uint32_t type_token_id (0x200030a)
		i32 805; uint32_t java_map_index (0x325)
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 945; uint32_t java_map_index (0x3b1)
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 618; uint32_t java_map_index (0x26a)
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 456; uint32_t java_map_index (0x1c8)
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 237; uint32_t java_map_index (0xed)
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 1063; uint32_t java_map_index (0x427)
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 345; uint32_t java_map_index (0x159)
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 60; uint32_t java_map_index (0x3c)
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 974; uint32_t java_map_index (0x3ce)
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 359; uint32_t java_map_index (0x167)
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 977; uint32_t java_map_index (0x3d1)
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 1047; uint32_t java_map_index (0x417)
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 608; uint32_t java_map_index (0x260)
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 834; uint32_t java_map_index (0x342)
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 961; uint32_t java_map_index (0x3c1)
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 303; uint32_t java_map_index (0x12f)
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 900; uint32_t java_map_index (0x384)
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 564; uint32_t java_map_index (0x234)
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 125; uint32_t java_map_index (0x7d)
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 697; uint32_t java_map_index (0x2b9)
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 484; uint32_t java_map_index (0x1e4)
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 33555238, ; uint32_t type_token_id (0x2000326)
		i32 995; uint32_t java_map_index (0x3e3)
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 33555239, ; uint32_t type_token_id (0x2000327)
		i32 516; uint32_t java_map_index (0x204)
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 171; uint32_t java_map_index (0xab)
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 33555241, ; uint32_t type_token_id (0x2000329)
		i32 380; uint32_t java_map_index (0x17c)
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 33555243, ; uint32_t type_token_id (0x200032b)
		i32 652; uint32_t java_map_index (0x28c)
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 705; uint32_t java_map_index (0x2c1)
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 185; uint32_t java_map_index (0xb9)
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 1004; uint32_t java_map_index (0x3ec)
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 470; uint32_t java_map_index (0x1d6)
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 695; uint32_t java_map_index (0x2b7)
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 33555250, ; uint32_t type_token_id (0x2000332)
		i32 996; uint32_t java_map_index (0x3e4)
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 259; uint32_t java_map_index (0x103)
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 449; uint32_t java_map_index (0x1c1)
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 850; uint32_t java_map_index (0x352)
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 33555258, ; uint32_t type_token_id (0x200033a)
		i32 500; uint32_t java_map_index (0x1f4)
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 33555260, ; uint32_t type_token_id (0x200033c)
		i32 453; uint32_t java_map_index (0x1c5)
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 33555261, ; uint32_t type_token_id (0x200033d)
		i32 440; uint32_t java_map_index (0x1b8)
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 33555262, ; uint32_t type_token_id (0x200033e)
		i32 815; uint32_t java_map_index (0x32f)
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 33555263, ; uint32_t type_token_id (0x200033f)
		i32 351; uint32_t java_map_index (0x15f)
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 33555264, ; uint32_t type_token_id (0x2000340)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 990; uint32_t java_map_index (0x3de)
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 666; uint32_t java_map_index (0x29a)
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 371; uint32_t java_map_index (0x173)
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 733; uint32_t java_map_index (0x2dd)
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 973; uint32_t java_map_index (0x3cd)
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 127; uint32_t java_map_index (0x7f)
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 499; uint32_t java_map_index (0x1f3)
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 663; uint32_t java_map_index (0x297)
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 487; uint32_t java_map_index (0x1e7)
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 570; uint32_t java_map_index (0x23a)
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 526; uint32_t java_map_index (0x20e)
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 518; uint32_t java_map_index (0x206)
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 591; uint32_t java_map_index (0x24f)
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 543; uint32_t java_map_index (0x21f)
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 69; uint32_t java_map_index (0x45)
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 33555294, ; uint32_t type_token_id (0x200035e)
		i32 643; uint32_t java_map_index (0x283)
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 863; uint32_t java_map_index (0x35f)
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 704; uint32_t java_map_index (0x2c0)
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 204; uint32_t java_map_index (0xcc)
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 458; uint32_t java_map_index (0x1ca)
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 550; uint32_t java_map_index (0x226)
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 33555305, ; uint32_t type_token_id (0x2000369)
		i32 950; uint32_t java_map_index (0x3b6)
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 254; uint32_t java_map_index (0xfe)
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 611; uint32_t java_map_index (0x263)
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 33555309, ; uint32_t type_token_id (0x200036d)
		i32 938; uint32_t java_map_index (0x3aa)
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 668; uint32_t java_map_index (0x29c)
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 355; uint32_t java_map_index (0x163)
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 33555314, ; uint32_t type_token_id (0x2000372)
		i32 726; uint32_t java_map_index (0x2d6)
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 33555315, ; uint32_t type_token_id (0x2000373)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 33555317, ; uint32_t type_token_id (0x2000375)
		i32 803; uint32_t java_map_index (0x323)
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 1035; uint32_t java_map_index (0x40b)
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 978; uint32_t java_map_index (0x3d2)
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 671; uint32_t java_map_index (0x29f)
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 284; uint32_t java_map_index (0x11c)
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 532; uint32_t java_map_index (0x214)
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 446; uint32_t java_map_index (0x1be)
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 267; uint32_t java_map_index (0x10b)
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 877; uint32_t java_map_index (0x36d)
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 383; uint32_t java_map_index (0x17f)
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 774; uint32_t java_map_index (0x306)
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 114; uint32_t java_map_index (0x72)
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 164; uint32_t java_map_index (0xa4)
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 44; uint32_t java_map_index (0x2c)
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 662; uint32_t java_map_index (0x296)
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 33555347, ; uint32_t type_token_id (0x2000393)
		i32 747; uint32_t java_map_index (0x2eb)
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 416; uint32_t java_map_index (0x1a0)
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 33555351, ; uint32_t type_token_id (0x2000397)
		i32 966; uint32_t java_map_index (0x3c6)
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 544; uint32_t java_map_index (0x220)
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 130; uint32_t java_map_index (0x82)
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 97; uint32_t java_map_index (0x61)
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 358; uint32_t java_map_index (0x166)
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 909; uint32_t java_map_index (0x38d)
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 928; uint32_t java_map_index (0x3a0)
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 584; uint32_t java_map_index (0x248)
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 252; uint32_t java_map_index (0xfc)
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 617; uint32_t java_map_index (0x269)
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 317; uint32_t java_map_index (0x13d)
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 583; uint32_t java_map_index (0x247)
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 148; uint32_t java_map_index (0x94)
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 33555372, ; uint32_t type_token_id (0x20003ac)
		i32 878; uint32_t java_map_index (0x36e)
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 394; uint32_t java_map_index (0x18a)
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 242; uint32_t java_map_index (0xf2)
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 650; uint32_t java_map_index (0x28a)
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 33555378, ; uint32_t type_token_id (0x20003b2)
		i32 1068; uint32_t java_map_index (0x42c)
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 677; uint32_t java_map_index (0x2a5)
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 1041; uint32_t java_map_index (0x411)
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 33555384, ; uint32_t type_token_id (0x20003b8)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 33555386, ; uint32_t type_token_id (0x20003ba)
		i32 184; uint32_t java_map_index (0xb8)
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 1015; uint32_t java_map_index (0x3f7)
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 33555390, ; uint32_t type_token_id (0x20003be)
		i32 768; uint32_t java_map_index (0x300)
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 33555391, ; uint32_t type_token_id (0x20003bf)
		i32 1021; uint32_t java_map_index (0x3fd)
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 33555393, ; uint32_t type_token_id (0x20003c1)
		i32 513; uint32_t java_map_index (0x201)
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 33555394, ; uint32_t type_token_id (0x20003c2)
		i32 425; uint32_t java_map_index (0x1a9)
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 33555395, ; uint32_t type_token_id (0x20003c3)
		i32 436; uint32_t java_map_index (0x1b4)
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 955; uint32_t java_map_index (0x3bb)
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 33555397, ; uint32_t type_token_id (0x20003c5)
		i32 344; uint32_t java_map_index (0x158)
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 33555398, ; uint32_t type_token_id (0x20003c6)
		i32 99; uint32_t java_map_index (0x63)
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 33555400, ; uint32_t type_token_id (0x20003c8)
		i32 920; uint32_t java_map_index (0x398)
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 33555401, ; uint32_t type_token_id (0x20003c9)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 994; uint32_t java_map_index (0x3e2)
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 33555404, ; uint32_t type_token_id (0x20003cc)
		i32 739; uint32_t java_map_index (0x2e3)
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 703; uint32_t java_map_index (0x2bf)
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 33555406, ; uint32_t type_token_id (0x20003ce)
		i32 298; uint32_t java_map_index (0x12a)
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 33555408, ; uint32_t type_token_id (0x20003d0)
		i32 183; uint32_t java_map_index (0xb7)
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 33555411, ; uint32_t type_token_id (0x20003d3)
		i32 47; uint32_t java_map_index (0x2f)
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 134; uint32_t java_map_index (0x86)
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 422; uint32_t java_map_index (0x1a6)
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 188; uint32_t java_map_index (0xbc)
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 476; uint32_t java_map_index (0x1dc)
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 725; uint32_t java_map_index (0x2d5)
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 33555418, ; uint32_t type_token_id (0x20003da)
		i32 92; uint32_t java_map_index (0x5c)
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 200; uint32_t java_map_index (0xc8)
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 33555420, ; uint32_t type_token_id (0x20003dc)
		i32 862; uint32_t java_map_index (0x35e)
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 33555422, ; uint32_t type_token_id (0x20003de)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 33555423, ; uint32_t type_token_id (0x20003df)
		i32 420; uint32_t java_map_index (0x1a4)
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 357; uint32_t java_map_index (0x165)
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 33555425, ; uint32_t type_token_id (0x20003e1)
		i32 212; uint32_t java_map_index (0xd4)
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 33555426, ; uint32_t type_token_id (0x20003e2)
		i32 727; uint32_t java_map_index (0x2d7)
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 33555427, ; uint32_t type_token_id (0x20003e3)
		i32 906; uint32_t java_map_index (0x38a)
	}, ; 454
	%struct.TypeMapModuleEntry {
		i32 33555429, ; uint32_t type_token_id (0x20003e5)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 455
	%struct.TypeMapModuleEntry {
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 89; uint32_t java_map_index (0x59)
	}, ; 456
	%struct.TypeMapModuleEntry {
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 326; uint32_t java_map_index (0x146)
	}, ; 457
	%struct.TypeMapModuleEntry {
		i32 33555432, ; uint32_t type_token_id (0x20003e8)
		i32 610; uint32_t java_map_index (0x262)
	}, ; 458
	%struct.TypeMapModuleEntry {
		i32 33555433, ; uint32_t type_token_id (0x20003e9)
		i32 679; uint32_t java_map_index (0x2a7)
	}, ; 459
	%struct.TypeMapModuleEntry {
		i32 33555448, ; uint32_t type_token_id (0x20003f8)
		i32 749; uint32_t java_map_index (0x2ed)
	} ; 460
], align 4

@module22_managed_to_java_duplicates = internal dso_local constant [171 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 569; uint32_t java_map_index (0x239)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 925; uint32_t java_map_index (0x39d)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 858; uint32_t java_map_index (0x35a)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 680; uint32_t java_map_index (0x2a8)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 836; uint32_t java_map_index (0x344)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 208; uint32_t java_map_index (0xd0)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 986; uint32_t java_map_index (0x3da)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 48; uint32_t java_map_index (0x30)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 629; uint32_t java_map_index (0x275)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554630, ; uint32_t type_token_id (0x20000c6)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 891; uint32_t java_map_index (0x37b)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554635, ; uint32_t type_token_id (0x20000cb)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 515; uint32_t java_map_index (0x203)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554642, ; uint32_t type_token_id (0x20000d2)
		i32 279; uint32_t java_map_index (0x117)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 497; uint32_t java_map_index (0x1f1)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 664; uint32_t java_map_index (0x298)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 1069; uint32_t java_map_index (0x42d)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 684; uint32_t java_map_index (0x2ac)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 332; uint32_t java_map_index (0x14c)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554677, ; uint32_t type_token_id (0x20000f5)
		i32 998; uint32_t java_map_index (0x3e6)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 128; uint32_t java_map_index (0x80)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 538; uint32_t java_map_index (0x21a)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 319; uint32_t java_map_index (0x13f)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554712, ; uint32_t type_token_id (0x2000118)
		i32 664; uint32_t java_map_index (0x298)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554714, ; uint32_t type_token_id (0x200011a)
		i32 413; uint32_t java_map_index (0x19d)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554716, ; uint32_t type_token_id (0x200011c)
		i32 964; uint32_t java_map_index (0x3c4)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554718, ; uint32_t type_token_id (0x200011e)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 533; uint32_t java_map_index (0x215)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554723, ; uint32_t type_token_id (0x2000123)
		i32 783; uint32_t java_map_index (0x30f)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 635; uint32_t java_map_index (0x27b)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554732, ; uint32_t type_token_id (0x200012c)
		i32 736; uint32_t java_map_index (0x2e0)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 854; uint32_t java_map_index (0x356)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 963; uint32_t java_map_index (0x3c3)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 924; uint32_t java_map_index (0x39c)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 702; uint32_t java_map_index (0x2be)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 462; uint32_t java_map_index (0x1ce)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 883; uint32_t java_map_index (0x373)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 1042; uint32_t java_map_index (0x412)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 448; uint32_t java_map_index (0x1c0)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 372; uint32_t java_map_index (0x174)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554786, ; uint32_t type_token_id (0x2000162)
		i32 84; uint32_t java_map_index (0x54)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554788, ; uint32_t type_token_id (0x2000164)
		i32 813; uint32_t java_map_index (0x32d)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554791, ; uint32_t type_token_id (0x2000167)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554793, ; uint32_t type_token_id (0x2000169)
		i32 731; uint32_t java_map_index (0x2db)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 880; uint32_t java_map_index (0x370)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 922; uint32_t java_map_index (0x39a)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554805, ; uint32_t type_token_id (0x2000175)
		i32 240; uint32_t java_map_index (0xf0)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554808, ; uint32_t type_token_id (0x2000178)
		i32 153; uint32_t java_map_index (0x99)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554810, ; uint32_t type_token_id (0x200017a)
		i32 971; uint32_t java_map_index (0x3cb)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554812, ; uint32_t type_token_id (0x200017c)
		i32 926; uint32_t java_map_index (0x39e)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554822, ; uint32_t type_token_id (0x2000186)
		i32 190; uint32_t java_map_index (0xbe)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554824, ; uint32_t type_token_id (0x2000188)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554826, ; uint32_t type_token_id (0x200018a)
		i32 443; uint32_t java_map_index (0x1bb)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 529; uint32_t java_map_index (0x211)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554830, ; uint32_t type_token_id (0x200018e)
		i32 1057; uint32_t java_map_index (0x421)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554844, ; uint32_t type_token_id (0x200019c)
		i32 939; uint32_t java_map_index (0x3ab)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554854, ; uint32_t type_token_id (0x20001a6)
		i32 263; uint32_t java_map_index (0x107)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554856, ; uint32_t type_token_id (0x20001a8)
		i32 253; uint32_t java_map_index (0xfd)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554858, ; uint32_t type_token_id (0x20001aa)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554863, ; uint32_t type_token_id (0x20001af)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 554; uint32_t java_map_index (0x22a)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554867, ; uint32_t type_token_id (0x20001b3)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554870, ; uint32_t type_token_id (0x20001b6)
		i32 797; uint32_t java_map_index (0x31d)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554874, ; uint32_t type_token_id (0x20001ba)
		i32 193; uint32_t java_map_index (0xc1)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554887, ; uint32_t type_token_id (0x20001c7)
		i32 444; uint32_t java_map_index (0x1bc)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554890, ; uint32_t type_token_id (0x20001ca)
		i32 654; uint32_t java_map_index (0x28e)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554912, ; uint32_t type_token_id (0x20001e0)
		i32 972; uint32_t java_map_index (0x3cc)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554930, ; uint32_t type_token_id (0x20001f2)
		i32 808; uint32_t java_map_index (0x328)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554931, ; uint32_t type_token_id (0x20001f3)
		i32 724; uint32_t java_map_index (0x2d4)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554933, ; uint32_t type_token_id (0x20001f5)
		i32 915; uint32_t java_map_index (0x393)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554940, ; uint32_t type_token_id (0x20001fc)
		i32 258; uint32_t java_map_index (0x102)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554942, ; uint32_t type_token_id (0x20001fe)
		i32 157; uint32_t java_map_index (0x9d)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554944, ; uint32_t type_token_id (0x2000200)
		i32 644; uint32_t java_map_index (0x284)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554946, ; uint32_t type_token_id (0x2000202)
		i32 968; uint32_t java_map_index (0x3c8)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554949, ; uint32_t type_token_id (0x2000205)
		i32 1059; uint32_t java_map_index (0x423)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554951, ; uint32_t type_token_id (0x2000207)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554953, ; uint32_t type_token_id (0x2000209)
		i32 1058; uint32_t java_map_index (0x422)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554956, ; uint32_t type_token_id (0x200020c)
		i32 830; uint32_t java_map_index (0x33e)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554958, ; uint32_t type_token_id (0x200020e)
		i32 735; uint32_t java_map_index (0x2df)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554960, ; uint32_t type_token_id (0x2000210)
		i32 295; uint32_t java_map_index (0x127)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554962, ; uint32_t type_token_id (0x2000212)
		i32 361; uint32_t java_map_index (0x169)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554964, ; uint32_t type_token_id (0x2000214)
		i32 119; uint32_t java_map_index (0x77)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554966, ; uint32_t type_token_id (0x2000216)
		i32 730; uint32_t java_map_index (0x2da)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554968, ; uint32_t type_token_id (0x2000218)
		i32 623; uint32_t java_map_index (0x26f)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554971, ; uint32_t type_token_id (0x200021b)
		i32 656; uint32_t java_map_index (0x290)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554972, ; uint32_t type_token_id (0x200021c)
		i32 743; uint32_t java_map_index (0x2e7)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554974, ; uint32_t type_token_id (0x200021e)
		i32 819; uint32_t java_map_index (0x333)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554978, ; uint32_t type_token_id (0x2000222)
		i32 905; uint32_t java_map_index (0x389)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 49; uint32_t java_map_index (0x31)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554985, ; uint32_t type_token_id (0x2000229)
		i32 1051; uint32_t java_map_index (0x41b)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554993, ; uint32_t type_token_id (0x2000231)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554998, ; uint32_t type_token_id (0x2000236)
		i32 464; uint32_t java_map_index (0x1d0)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33555001, ; uint32_t type_token_id (0x2000239)
		i32 1002; uint32_t java_map_index (0x3ea)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33555003, ; uint32_t type_token_id (0x200023b)
		i32 856; uint32_t java_map_index (0x358)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33555007, ; uint32_t type_token_id (0x200023f)
		i32 381; uint32_t java_map_index (0x17d)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33555009, ; uint32_t type_token_id (0x2000241)
		i32 689; uint32_t java_map_index (0x2b1)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33555013, ; uint32_t type_token_id (0x2000245)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33555017, ; uint32_t type_token_id (0x2000249)
		i32 860; uint32_t java_map_index (0x35c)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33555021, ; uint32_t type_token_id (0x200024d)
		i32 423; uint32_t java_map_index (0x1a7)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33555046, ; uint32_t type_token_id (0x2000266)
		i32 67; uint32_t java_map_index (0x43)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33555053, ; uint32_t type_token_id (0x200026d)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33555057, ; uint32_t type_token_id (0x2000271)
		i32 1056; uint32_t java_map_index (0x420)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33555060, ; uint32_t type_token_id (0x2000274)
		i32 316; uint32_t java_map_index (0x13c)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 437; uint32_t java_map_index (0x1b5)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33555102, ; uint32_t type_token_id (0x200029e)
		i32 537; uint32_t java_map_index (0x219)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33555106, ; uint32_t type_token_id (0x20002a2)
		i32 952; uint32_t java_map_index (0x3b8)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 1000; uint32_t java_map_index (0x3e8)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33555146, ; uint32_t type_token_id (0x20002ca)
		i32 336; uint32_t java_map_index (0x150)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33555152, ; uint32_t type_token_id (0x20002d0)
		i32 378; uint32_t java_map_index (0x17a)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33555157, ; uint32_t type_token_id (0x20002d5)
		i32 168; uint32_t java_map_index (0xa8)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33555161, ; uint32_t type_token_id (0x20002d9)
		i32 1055; uint32_t java_map_index (0x41f)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 484; uint32_t java_map_index (0x1e4)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 697; uint32_t java_map_index (0x2b9)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33555242, ; uint32_t type_token_id (0x200032a)
		i32 380; uint32_t java_map_index (0x17c)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33555249, ; uint32_t type_token_id (0x2000331)
		i32 695; uint32_t java_map_index (0x2b7)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33555256, ; uint32_t type_token_id (0x2000338)
		i32 850; uint32_t java_map_index (0x352)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33555259, ; uint32_t type_token_id (0x200033b)
		i32 500; uint32_t java_map_index (0x1f4)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33555265, ; uint32_t type_token_id (0x2000341)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33555267, ; uint32_t type_token_id (0x2000343)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 666; uint32_t java_map_index (0x29a)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 733; uint32_t java_map_index (0x2dd)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 127; uint32_t java_map_index (0x7f)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 663; uint32_t java_map_index (0x297)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 487; uint32_t java_map_index (0x1e7)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33555285, ; uint32_t type_token_id (0x2000355)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33555288, ; uint32_t type_token_id (0x2000358)
		i32 526; uint32_t java_map_index (0x20e)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33555293, ; uint32_t type_token_id (0x200035d)
		i32 69; uint32_t java_map_index (0x45)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 643; uint32_t java_map_index (0x283)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 863; uint32_t java_map_index (0x35f)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 950; uint32_t java_map_index (0x3b6)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33555316, ; uint32_t type_token_id (0x2000374)
		i32 668; uint32_t java_map_index (0x29c)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 284; uint32_t java_map_index (0x11c)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 267; uint32_t java_map_index (0x10b)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 877; uint32_t java_map_index (0x36d)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 383; uint32_t java_map_index (0x17f)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 774; uint32_t java_map_index (0x306)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 662; uint32_t java_map_index (0x296)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33555348, ; uint32_t type_token_id (0x2000394)
		i32 747; uint32_t java_map_index (0x2eb)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 416; uint32_t java_map_index (0x1a0)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 130; uint32_t java_map_index (0x82)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 358; uint32_t java_map_index (0x166)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 252; uint32_t java_map_index (0xfc)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33555373, ; uint32_t type_token_id (0x20003ad)
		i32 878; uint32_t java_map_index (0x36e)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33555379, ; uint32_t type_token_id (0x20003b3)
		i32 1068; uint32_t java_map_index (0x42c)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33555381, ; uint32_t type_token_id (0x20003b5)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33555385, ; uint32_t type_token_id (0x20003b9)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 1015; uint32_t java_map_index (0x3f7)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33555392, ; uint32_t type_token_id (0x20003c0)
		i32 1021; uint32_t java_map_index (0x3fd)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33555399, ; uint32_t type_token_id (0x20003c7)
		i32 99; uint32_t java_map_index (0x63)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33555407, ; uint32_t type_token_id (0x20003cf)
		i32 298; uint32_t java_map_index (0x12a)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 183; uint32_t java_map_index (0xb7)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 476; uint32_t java_map_index (0x1dc)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33555421, ; uint32_t type_token_id (0x20003dd)
		i32 862; uint32_t java_map_index (0x35e)
	} ; 170
], align 4

@module23_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 350; uint32_t java_map_index (0x15e)
	} ; 0
], align 4

@module24_managed_to_java = internal dso_local constant [78 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 843; uint32_t java_map_index (0x34b)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 348; uint32_t java_map_index (0x15c)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 338; uint32_t java_map_index (0x152)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 194; uint32_t java_map_index (0xc2)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 852; uint32_t java_map_index (0x354)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 674; uint32_t java_map_index (0x2a2)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 763; uint32_t java_map_index (0x2fb)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 239; uint32_t java_map_index (0xef)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 112; uint32_t java_map_index (0x70)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 855; uint32_t java_map_index (0x357)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 508; uint32_t java_map_index (0x1fc)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 576; uint32_t java_map_index (0x240)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 1039; uint32_t java_map_index (0x40f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 673; uint32_t java_map_index (0x2a1)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 667; uint32_t java_map_index (0x29b)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 214; uint32_t java_map_index (0xd6)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 595; uint32_t java_map_index (0x253)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 244; uint32_t java_map_index (0xf4)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 218; uint32_t java_map_index (0xda)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 867; uint32_t java_map_index (0x363)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 17; uint32_t java_map_index (0x11)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 131; uint32_t java_map_index (0x83)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 421; uint32_t java_map_index (0x1a5)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 473; uint32_t java_map_index (0x1d9)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 72; uint32_t java_map_index (0x48)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 409; uint32_t java_map_index (0x199)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 959; uint32_t java_map_index (0x3bf)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 162; uint32_t java_map_index (0xa2)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 311; uint32_t java_map_index (0x137)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 672; uint32_t java_map_index (0x2a0)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 699; uint32_t java_map_index (0x2bb)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 170; uint32_t java_map_index (0xaa)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 199; uint32_t java_map_index (0xc7)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 983; uint32_t java_map_index (0x3d7)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 376; uint32_t java_map_index (0x178)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 722; uint32_t java_map_index (0x2d2)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 577; uint32_t java_map_index (0x241)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 352; uint32_t java_map_index (0x160)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 447; uint32_t java_map_index (0x1bf)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 754; uint32_t java_map_index (0x2f2)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 1020; uint32_t java_map_index (0x3fc)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 328; uint32_t java_map_index (0x148)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 167; uint32_t java_map_index (0xa7)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 269; uint32_t java_map_index (0x10d)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 647; uint32_t java_map_index (0x287)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 282; uint32_t java_map_index (0x11a)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 460; uint32_t java_map_index (0x1cc)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 645; uint32_t java_map_index (0x285)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 585; uint32_t java_map_index (0x249)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 997; uint32_t java_map_index (0x3e5)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 835; uint32_t java_map_index (0x343)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 879; uint32_t java_map_index (0x36f)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 520; uint32_t java_map_index (0x208)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 224; uint32_t java_map_index (0xe0)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 772; uint32_t java_map_index (0x304)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 753; uint32_t java_map_index (0x2f1)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 189; uint32_t java_map_index (0xbd)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 633; uint32_t java_map_index (0x279)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 389; uint32_t java_map_index (0x185)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 935; uint32_t java_map_index (0x3a7)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 616; uint32_t java_map_index (0x268)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 1054; uint32_t java_map_index (0x41e)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 1065; uint32_t java_map_index (0x429)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 837; uint32_t java_map_index (0x345)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 676; uint32_t java_map_index (0x2a4)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 411; uint32_t java_map_index (0x19b)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 789; uint32_t java_map_index (0x315)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 530; uint32_t java_map_index (0x212)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 1071; uint32_t java_map_index (0x42f)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 296; uint32_t java_map_index (0x128)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 1017; uint32_t java_map_index (0x3f9)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 145; uint32_t java_map_index (0x91)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 177; uint32_t java_map_index (0xb1)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 391; uint32_t java_map_index (0x187)
	} ; 77
], align 4

@module24_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 843; uint32_t java_map_index (0x34b)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 194; uint32_t java_map_index (0xc2)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 667; uint32_t java_map_index (0x29b)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 131; uint32_t java_map_index (0x83)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 421; uint32_t java_map_index (0x1a5)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 162; uint32_t java_map_index (0xa2)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 959; uint32_t java_map_index (0x3bf)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 699; uint32_t java_map_index (0x2bb)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 577; uint32_t java_map_index (0x241)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 447; uint32_t java_map_index (0x1bf)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 722; uint32_t java_map_index (0x2d2)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 328; uint32_t java_map_index (0x148)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 167; uint32_t java_map_index (0xa7)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 269; uint32_t java_map_index (0x10d)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 647; uint32_t java_map_index (0x287)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 282; uint32_t java_map_index (0x11a)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 460; uint32_t java_map_index (0x1cc)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 585; uint32_t java_map_index (0x249)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 520; uint32_t java_map_index (0x208)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 189; uint32_t java_map_index (0xbd)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 616; uint32_t java_map_index (0x268)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 1017; uint32_t java_map_index (0x3f9)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 145; uint32_t java_map_index (0x91)
	} ; 24
], align 4

@module25_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 936; uint32_t java_map_index (0x3a8)
	} ; 0
], align 4

@module25_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 936; uint32_t java_map_index (0x3a8)
	} ; 0
], align 4

@module26_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 366; uint32_t java_map_index (0x16e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 556; uint32_t java_map_index (0x22c)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 306; uint32_t java_map_index (0x132)
	} ; 2
], align 4

@module27_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 912; uint32_t java_map_index (0x390)
	} ; 0
], align 4

@module28_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 281; uint32_t java_map_index (0x119)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 1028; uint32_t java_map_index (0x404)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 318; uint32_t java_map_index (0x13e)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 217; uint32_t java_map_index (0xd9)
	} ; 3
], align 4

@module28_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 318; uint32_t java_map_index (0x13e)
	} ; 0
], align 4

@module29_managed_to_java = internal dso_local constant [61 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 756; uint32_t java_map_index (0x2f4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 87; uint32_t java_map_index (0x57)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 851; uint32_t java_map_index (0x353)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 329; uint32_t java_map_index (0x149)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 865; uint32_t java_map_index (0x361)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 414; uint32_t java_map_index (0x19e)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 1070; uint32_t java_map_index (0x42e)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 646; uint32_t java_map_index (0x286)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 53; uint32_t java_map_index (0x35)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 429; uint32_t java_map_index (0x1ad)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 951; uint32_t java_map_index (0x3b7)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554715, ; uint32_t type_token_id (0x200011b)
		i32 597; uint32_t java_map_index (0x255)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 46; uint32_t java_map_index (0x2e)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 630; uint32_t java_map_index (0x276)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 203; uint32_t java_map_index (0xcb)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554740, ; uint32_t type_token_id (0x2000134)
		i32 323; uint32_t java_map_index (0x143)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 651; uint32_t java_map_index (0x28b)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 681; uint32_t java_map_index (0x2a9)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 713; uint32_t java_map_index (0x2c9)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 495; uint32_t java_map_index (0x1ef)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 1001; uint32_t java_map_index (0x3e9)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 474; uint32_t java_map_index (0x1da)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 109; uint32_t java_map_index (0x6d)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 426; uint32_t java_map_index (0x1aa)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 709; uint32_t java_map_index (0x2c5)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 1018; uint32_t java_map_index (0x3fa)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 149; uint32_t java_map_index (0x95)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 74; uint32_t java_map_index (0x4a)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 111; uint32_t java_map_index (0x6f)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 1026; uint32_t java_map_index (0x402)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 1061; uint32_t java_map_index (0x425)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 451; uint32_t java_map_index (0x1c3)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 581; uint32_t java_map_index (0x245)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 1038; uint32_t java_map_index (0x40e)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 255; uint32_t java_map_index (0xff)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 980; uint32_t java_map_index (0x3d4)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 392; uint32_t java_map_index (0x188)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 132; uint32_t java_map_index (0x84)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554786, ; uint32_t type_token_id (0x2000162)
		i32 504; uint32_t java_map_index (0x1f8)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 628; uint32_t java_map_index (0x274)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 580; uint32_t java_map_index (0x244)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554975, ; uint32_t type_token_id (0x200021f)
		i32 399; uint32_t java_map_index (0x18f)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554976, ; uint32_t type_token_id (0x2000220)
		i32 688; uint32_t java_map_index (0x2b0)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 540; uint32_t java_map_index (0x21c)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33555048, ; uint32_t type_token_id (0x2000268)
		i32 658; uint32_t java_map_index (0x292)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33555090, ; uint32_t type_token_id (0x2000292)
		i32 514; uint32_t java_map_index (0x202)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33555096, ; uint32_t type_token_id (0x2000298)
		i32 198; uint32_t java_map_index (0xc6)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555097, ; uint32_t type_token_id (0x2000299)
		i32 791; uint32_t java_map_index (0x317)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555102, ; uint32_t type_token_id (0x200029e)
		i32 993; uint32_t java_map_index (0x3e1)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 613; uint32_t java_map_index (0x265)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555183, ; uint32_t type_token_id (0x20002ef)
		i32 696; uint32_t java_map_index (0x2b8)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555184, ; uint32_t type_token_id (0x20002f0)
		i32 330; uint32_t java_map_index (0x14a)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 545; uint32_t java_map_index (0x221)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 472; uint32_t java_map_index (0x1d8)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 160; uint32_t java_map_index (0xa0)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 825; uint32_t java_map_index (0x339)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 169; uint32_t java_map_index (0xa9)
	} ; 60
], align 4

@module29_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 414; uint32_t java_map_index (0x19e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 646; uint32_t java_map_index (0x286)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 429; uint32_t java_map_index (0x1ad)
	} ; 2
], align 4

@module30_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 270; uint32_t java_map_index (0x10e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 660; uint32_t java_map_index (0x294)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 264; uint32_t java_map_index (0x108)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 58; uint32_t java_map_index (0x3a)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 707; uint32_t java_map_index (0x2c3)
	} ; 5
], align 4

@module30_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 660; uint32_t java_map_index (0x294)
	} ; 0
], align 4

@module31_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 1005; uint32_t java_map_index (0x3ed)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 908; uint32_t java_map_index (0x38c)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 625; uint32_t java_map_index (0x271)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 247; uint32_t java_map_index (0xf7)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 738; uint32_t java_map_index (0x2e2)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 845; uint32_t java_map_index (0x34d)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 598; uint32_t java_map_index (0x256)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 606; uint32_t java_map_index (0x25e)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 907; uint32_t java_map_index (0x38b)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 675; uint32_t java_map_index (0x2a3)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 107; uint32_t java_map_index (0x6b)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 619; uint32_t java_map_index (0x26b)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 481; uint32_t java_map_index (0x1e1)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 1052; uint32_t java_map_index (0x41c)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 353; uint32_t java_map_index (0x161)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 732; uint32_t java_map_index (0x2dc)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 268; uint32_t java_map_index (0x10c)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 113; uint32_t java_map_index (0x71)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 227; uint32_t java_map_index (0xe3)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 823; uint32_t java_map_index (0x337)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 356; uint32_t java_map_index (0x164)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 842; uint32_t java_map_index (0x34a)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 582; uint32_t java_map_index (0x246)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 648; uint32_t java_map_index (0x288)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 599; uint32_t java_map_index (0x257)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 334; uint32_t java_map_index (0x14e)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 535; uint32_t java_map_index (0x217)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 346; uint32_t java_map_index (0x15a)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 146; uint32_t java_map_index (0x92)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 758; uint32_t java_map_index (0x2f6)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 894; uint32_t java_map_index (0x37e)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 156; uint32_t java_map_index (0x9c)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 120; uint32_t java_map_index (0x78)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 723; uint32_t java_map_index (0x2d3)
	} ; 40
], align 4

@module31_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 908; uint32_t java_map_index (0x38c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 625; uint32_t java_map_index (0x271)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 907; uint32_t java_map_index (0x38b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 107; uint32_t java_map_index (0x6b)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 619; uint32_t java_map_index (0x26b)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 353; uint32_t java_map_index (0x161)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 1052; uint32_t java_map_index (0x41c)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 268; uint32_t java_map_index (0x10c)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 227; uint32_t java_map_index (0xe3)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 113; uint32_t java_map_index (0x71)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 842; uint32_t java_map_index (0x34a)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 582; uint32_t java_map_index (0x246)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 599; uint32_t java_map_index (0x257)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 346; uint32_t java_map_index (0x15a)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 156; uint32_t java_map_index (0x9c)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 120; uint32_t java_map_index (0x78)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 723; uint32_t java_map_index (0x2d3)
	} ; 20
], align 4

@module32_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 13; uint32_t java_map_index (0xd)
	} ; 1
], align 4

@module33_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 759; uint32_t java_map_index (0x2f7)
	} ; 1
], align 4

@module33_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 759; uint32_t java_map_index (0x2f7)
	} ; 0
], align 4

@module34_managed_to_java = internal dso_local constant [110 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 142; uint32_t java_map_index (0x8e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 765; uint32_t java_map_index (0x2fd)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 219; uint32_t java_map_index (0xdb)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 555; uint32_t java_map_index (0x22b)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 979; uint32_t java_map_index (0x3d3)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 1066; uint32_t java_map_index (0x42a)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 150; uint32_t java_map_index (0x96)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 234; uint32_t java_map_index (0xea)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 790; uint32_t java_map_index (0x316)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 600; uint32_t java_map_index (0x258)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 594; uint32_t java_map_index (0x252)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33555228, ; uint32_t type_token_id (0x200031c)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 288; uint32_t java_map_index (0x120)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 369; uint32_t java_map_index (0x171)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 354; uint32_t java_map_index (0x162)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33555249, ; uint32_t type_token_id (0x2000331)
		i32 262; uint32_t java_map_index (0x106)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33555263, ; uint32_t type_token_id (0x200033f)
		i32 1046; uint32_t java_map_index (0x416)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33555265, ; uint32_t type_token_id (0x2000341)
		i32 721; uint32_t java_map_index (0x2d1)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 777; uint32_t java_map_index (0x309)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33555267, ; uint32_t type_token_id (0x2000343)
		i32 304; uint32_t java_map_index (0x130)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 75; uint32_t java_map_index (0x4b)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 940; uint32_t java_map_index (0x3ac)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 286; uint32_t java_map_index (0x11e)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 632; uint32_t java_map_index (0x278)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 824; uint32_t java_map_index (0x338)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 890; uint32_t java_map_index (0x37a)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 507; uint32_t java_map_index (0x1fb)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 638; uint32_t java_map_index (0x27e)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 785; uint32_t java_map_index (0x311)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 927; uint32_t java_map_index (0x39f)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 374; uint32_t java_map_index (0x176)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 787; uint32_t java_map_index (0x313)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 893; uint32_t java_map_index (0x37d)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33555293, ; uint32_t type_token_id (0x200035d)
		i32 870; uint32_t java_map_index (0x366)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33555294, ; uint32_t type_token_id (0x200035e)
		i32 172; uint32_t java_map_index (0xac)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 849; uint32_t java_map_index (0x351)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 965; uint32_t java_map_index (0x3c5)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 187; uint32_t java_map_index (0xbb)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 988; uint32_t java_map_index (0x3dc)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 796; uint32_t java_map_index (0x31c)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 767; uint32_t java_map_index (0x2ff)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 213; uint32_t java_map_index (0xd5)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 795; uint32_t java_map_index (0x31b)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 740; uint32_t java_map_index (0x2e4)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 165; uint32_t java_map_index (0xa5)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 455; uint32_t java_map_index (0x1c7)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 71; uint32_t java_map_index (0x47)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33555323, ; uint32_t type_token_id (0x200037b)
		i32 362; uint32_t java_map_index (0x16a)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 716; uint32_t java_map_index (0x2cc)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 751; uint32_t java_map_index (0x2ef)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 809; uint32_t java_map_index (0x329)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 884; uint32_t java_map_index (0x374)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 755; uint32_t java_map_index (0x2f3)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 174; uint32_t java_map_index (0xae)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 832; uint32_t java_map_index (0x340)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 874; uint32_t java_map_index (0x36a)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 873; uint32_t java_map_index (0x369)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 115; uint32_t java_map_index (0x73)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 691; uint32_t java_map_index (0x2b3)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 139; uint32_t java_map_index (0x8b)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 43; uint32_t java_map_index (0x2b)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 757; uint32_t java_map_index (0x2f5)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 424; uint32_t java_map_index (0x1a8)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 571; uint32_t java_map_index (0x23b)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 118; uint32_t java_map_index (0x76)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 904; uint32_t java_map_index (0x388)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33555351, ; uint32_t type_token_id (0x2000397)
		i32 64; uint32_t java_map_index (0x40)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 1032; uint32_t java_map_index (0x408)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 485; uint32_t java_map_index (0x1e5)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 761; uint32_t java_map_index (0x2f9)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 559; uint32_t java_map_index (0x22f)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 620; uint32_t java_map_index (0x26c)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 129; uint32_t java_map_index (0x81)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 778; uint32_t java_map_index (0x30a)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 55; uint32_t java_map_index (0x37)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 468; uint32_t java_map_index (0x1d4)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 701; uint32_t java_map_index (0x2bd)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 291; uint32_t java_map_index (0x123)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33555525, ; uint32_t type_token_id (0x2000445)
		i32 1006; uint32_t java_map_index (0x3ee)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33555694, ; uint32_t type_token_id (0x20004ee)
		i32 457; uint32_t java_map_index (0x1c9)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33555771, ; uint32_t type_token_id (0x200053b)
		i32 505; uint32_t java_map_index (0x1f9)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33555778, ; uint32_t type_token_id (0x2000542)
		i32 975; uint32_t java_map_index (0x3cf)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33555779, ; uint32_t type_token_id (0x2000543)
		i32 6; uint32_t java_map_index (0x6)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33555780, ; uint32_t type_token_id (0x2000544)
		i32 636; uint32_t java_map_index (0x27c)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33555781, ; uint32_t type_token_id (0x2000545)
		i32 1023; uint32_t java_map_index (0x3ff)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33555787, ; uint32_t type_token_id (0x200054b)
		i32 642; uint32_t java_map_index (0x282)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33555793, ; uint32_t type_token_id (0x2000551)
		i32 728; uint32_t java_map_index (0x2d8)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 712; uint32_t java_map_index (0x2c8)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33555805, ; uint32_t type_token_id (0x200055d)
		i32 418; uint32_t java_map_index (0x1a2)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33555806, ; uint32_t type_token_id (0x200055e)
		i32 88; uint32_t java_map_index (0x58)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 631; uint32_t java_map_index (0x277)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33555817, ; uint32_t type_token_id (0x2000569)
		i32 305; uint32_t java_map_index (0x131)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33555818, ; uint32_t type_token_id (0x200056a)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33555821, ; uint32_t type_token_id (0x200056d)
		i32 615; uint32_t java_map_index (0x267)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33555825, ; uint32_t type_token_id (0x2000571)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 385; uint32_t java_map_index (0x181)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33555838, ; uint32_t type_token_id (0x200057e)
		i32 78; uint32_t java_map_index (0x4e)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33555843, ; uint32_t type_token_id (0x2000583)
		i32 272; uint32_t java_map_index (0x110)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33555844, ; uint32_t type_token_id (0x2000584)
		i32 342; uint32_t java_map_index (0x156)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 292; uint32_t java_map_index (0x124)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33555846, ; uint32_t type_token_id (0x2000586)
		i32 116; uint32_t java_map_index (0x74)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 1010; uint32_t java_map_index (0x3f2)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33555849, ; uint32_t type_token_id (0x2000589)
		i32 764; uint32_t java_map_index (0x2fc)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33555946, ; uint32_t type_token_id (0x20005ea)
		i32 173; uint32_t java_map_index (0xad)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33555948, ; uint32_t type_token_id (0x20005ec)
		i32 846; uint32_t java_map_index (0x34e)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33555949, ; uint32_t type_token_id (0x20005ed)
		i32 903; uint32_t java_map_index (0x387)
	} ; 109
], align 4

@module35_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 605; uint32_t java_map_index (0x25d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 775; uint32_t java_map_index (0x307)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 136; uint32_t java_map_index (0x88)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 12; uint32_t java_map_index (0xc)
	} ; 3
], align 4

@module35_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 775; uint32_t java_map_index (0x307)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 136; uint32_t java_map_index (0x88)
	} ; 1
], align 4

@module36_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 786; uint32_t java_map_index (0x312)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 869; uint32_t java_map_index (0x365)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 393; uint32_t java_map_index (0x189)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 509; uint32_t java_map_index (0x1fd)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 949; uint32_t java_map_index (0x3b5)
	} ; 4
], align 4

@module36_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 869; uint32_t java_map_index (0x365)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 393; uint32_t java_map_index (0x189)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 509; uint32_t java_map_index (0x1fd)
	} ; 2
], align 4

@module37_managed_to_java = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 970; uint32_t java_map_index (0x3ca)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 158; uint32_t java_map_index (0x9e)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 257; uint32_t java_map_index (0x101)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 105; uint32_t java_map_index (0x69)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 1013; uint32_t java_map_index (0x3f5)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 501; uint32_t java_map_index (0x1f5)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 546; uint32_t java_map_index (0x222)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 1062; uint32_t java_map_index (0x426)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 590; uint32_t java_map_index (0x24e)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 41; uint32_t java_map_index (0x29)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 161; uint32_t java_map_index (0xa1)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 634; uint32_t java_map_index (0x27a)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 101; uint32_t java_map_index (0x65)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 844; uint32_t java_map_index (0x34c)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 737; uint32_t java_map_index (0x2e1)
	} ; 18
], align 4

@module37_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 158; uint32_t java_map_index (0x9e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 1013; uint32_t java_map_index (0x3f5)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 546; uint32_t java_map_index (0x222)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 1062; uint32_t java_map_index (0x426)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 590; uint32_t java_map_index (0x24e)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 501; uint32_t java_map_index (0x1f5)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 161; uint32_t java_map_index (0xa1)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 101; uint32_t java_map_index (0x65)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 737; uint32_t java_map_index (0x2e1)
	} ; 9
], align 4

@module38_managed_to_java = internal dso_local constant [55 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 1045; uint32_t java_map_index (0x415)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 506; uint32_t java_map_index (0x1fa)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 387; uint32_t java_map_index (0x183)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 238; uint32_t java_map_index (0xee)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 478; uint32_t java_map_index (0x1de)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 760; uint32_t java_map_index (0x2f8)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 277; uint32_t java_map_index (0x115)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 864; uint32_t java_map_index (0x360)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 147; uint32_t java_map_index (0x93)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 897; uint32_t java_map_index (0x381)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 898; uint32_t java_map_index (0x382)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 781; uint32_t java_map_index (0x30d)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 232; uint32_t java_map_index (0xe8)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 152; uint32_t java_map_index (0x98)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 669; uint32_t java_map_index (0x29d)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 871; uint32_t java_map_index (0x367)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 166; uint32_t java_map_index (0xa6)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 489; uint32_t java_map_index (0x1e9)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 343; uint32_t java_map_index (0x157)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 812; uint32_t java_map_index (0x32c)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 403; uint32_t java_map_index (0x193)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 293; uint32_t java_map_index (0x125)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 714; uint32_t java_map_index (0x2ca)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 976; uint32_t java_map_index (0x3d0)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 655; uint32_t java_map_index (0x28f)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 521; uint32_t java_map_index (0x209)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 85; uint32_t java_map_index (0x55)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 410; uint32_t java_map_index (0x19a)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 807; uint32_t java_map_index (0x327)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 1037; uint32_t java_map_index (0x40d)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 578; uint32_t java_map_index (0x242)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 106; uint32_t java_map_index (0x6a)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 176; uint32_t java_map_index (0xb0)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 466; uint32_t java_map_index (0x1d2)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 11; uint32_t java_map_index (0xb)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 549; uint32_t java_map_index (0x225)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 186; uint32_t java_map_index (0xba)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 798; uint32_t java_map_index (0x31e)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 694; uint32_t java_map_index (0x2b6)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 572; uint32_t java_map_index (0x23c)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 948; uint32_t java_map_index (0x3b4)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 887; uint32_t java_map_index (0x377)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 800; uint32_t java_map_index (0x320)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 384; uint32_t java_map_index (0x180)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 341; uint32_t java_map_index (0x155)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 363; uint32_t java_map_index (0x16b)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 799; uint32_t java_map_index (0x31f)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 467; uint32_t java_map_index (0x1d3)
	} ; 54
], align 4

@module38_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 277; uint32_t java_map_index (0x115)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 147; uint32_t java_map_index (0x93)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 897; uint32_t java_map_index (0x381)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 898; uint32_t java_map_index (0x382)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 232; uint32_t java_map_index (0xe8)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 669; uint32_t java_map_index (0x29d)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 812; uint32_t java_map_index (0x32c)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 466; uint32_t java_map_index (0x1d2)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 549; uint32_t java_map_index (0x225)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 948; uint32_t java_map_index (0x3b4)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 800; uint32_t java_map_index (0x320)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 384; uint32_t java_map_index (0x180)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 341; uint32_t java_map_index (0x155)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 363; uint32_t java_map_index (0x16b)
	} ; 18
], align 4

@module39_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 685; uint32_t java_map_index (0x2ad)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 801; uint32_t java_map_index (0x321)
	} ; 1
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [1073 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 373; uint32_t java_name_index (0x175)
	}, ; 0
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 799; uint32_t java_name_index (0x31f)
	}, ; 1
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555422, ; uint32_t type_token_id (0x20003de)
		i32 666; uint32_t java_name_index (0x29a)
	}, ; 2
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 326; uint32_t java_name_index (0x146)
	}, ; 3
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 838; uint32_t java_name_index (0x346)
	}, ; 4
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 998; uint32_t java_name_index (0x3e6)
	}, ; 5
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555779, ; uint32_t type_token_id (0x2000543)
		i32 885; uint32_t java_name_index (0x375)
	}, ; 6
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554847, ; uint32_t type_token_id (0x200019f)
		i32 366; uint32_t java_name_index (0x16e)
	}, ; 7
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 262; uint32_t java_name_index (0x106)
	}, ; 8
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 616; uint32_t java_name_index (0x268)
	}, ; 9
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555315, ; uint32_t type_token_id (0x2000373)
		i32 593; uint32_t java_name_index (0x251)
	}, ; 10
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 1055; uint32_t java_name_index (0x41f)
	}, ; 11
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 991; uint32_t java_name_index (0x3df)
	}, ; 12
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 875; uint32_t java_name_index (0x36b)
	}, ; 13
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 808; uint32_t java_name_index (0x328)
	}, ; 14
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 740; uint32_t java_name_index (0x2e4)
	}, ; 15
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555042, ; uint32_t type_token_id (0x2000262)
		i32 461; uint32_t java_name_index (0x1cd)
	}, ; 16
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 700; uint32_t java_name_index (0x2bc)
	}, ; 17
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 860; uint32_t java_name_index (0x35c)
	}, ; 18
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 104; uint32_t java_name_index (0x68)
	}, ; 19
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554892, ; uint32_t type_token_id (0x20001cc)
		i32 389; uint32_t java_name_index (0x185)
	}, ; 20
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1048; uint32_t java_name_index (0x418)
	}, ; 21
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 178; uint32_t java_name_index (0xb2)
	}, ; 22
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 210; uint32_t java_name_index (0xd2)
	}, ; 23
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 506; uint32_t java_name_index (0x1fa)
	}, ; 24
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554730, ; uint32_t type_token_id (0x200012a)
		i32 292; uint32_t java_name_index (0x124)
	}, ; 25
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 105; uint32_t java_name_index (0x69)
	}, ; 26
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 1014; uint32_t java_name_index (0x3f6)
	}, ; 27
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 528; uint32_t java_name_index (0x210)
	}, ; 28
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 767; uint32_t java_name_index (0x2ff)
	}, ; 29
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 59; uint32_t java_name_index (0x3b)
	}, ; 30
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555818, ; uint32_t type_token_id (0x200056a)
		i32 925; uint32_t java_name_index (0x39d)
	}, ; 31
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 227; uint32_t java_name_index (0xe3)
	}, ; 32
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554976, ; uint32_t type_token_id (0x2000220)
		i32 431; uint32_t java_name_index (0x1af)
	}, ; 33
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 332; uint32_t java_name_index (0x14c)
	}, ; 34
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 302; uint32_t java_name_index (0x12e)
	}, ; 35
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 897; uint32_t java_name_index (0x381)
	}, ; 36
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 61; uint32_t java_name_index (0x3d)
	}, ; 37
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 874; uint32_t java_name_index (0x36a)
	}, ; 38
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 47; uint32_t java_name_index (0x2f)
	}, ; 39
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 929; uint32_t java_name_index (0x3a1)
	}, ; 40
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 1008; uint32_t java_name_index (0x3f0)
	}, ; 41
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 66; uint32_t java_name_index (0x42)
	}, ; 42
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 960; uint32_t java_name_index (0x3c0)
	}, ; 43
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 609; uint32_t java_name_index (0x261)
	}, ; 44
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 117; uint32_t java_name_index (0x75)
	}, ; 45
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 780; uint32_t java_name_index (0x30c)
	}, ; 46
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555411, ; uint32_t type_token_id (0x20003d3)
		i32 657; uint32_t java_name_index (0x291)
	}, ; 47
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 233; uint32_t java_name_index (0xe9)
	}, ; 48
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 435; uint32_t java_name_index (0x1b3)
	}, ; 49
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 116; uint32_t java_name_index (0x74)
	}, ; 50
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555825, ; uint32_t type_token_id (0x2000571)
		i32 928; uint32_t java_name_index (0x3a0)
	}, ; 51
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 85; uint32_t java_name_index (0x55)
	}, ; 52
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 776; uint32_t java_name_index (0x308)
	}, ; 53
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 170; uint32_t java_name_index (0xaa)
	}, ; 54
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 976; uint32_t java_name_index (0x3d0)
	}, ; 55
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 160; uint32_t java_name_index (0xa0)
	}, ; 56
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 2; uint32_t java_name_index (0x2)
	}, ; 57
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 831; uint32_t java_name_index (0x33f)
	}, ; 58
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 251; uint32_t java_name_index (0xfb)
	}, ; 59
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 529; uint32_t java_name_index (0x211)
	}, ; 60
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 176; uint32_t java_name_index (0xb0)
	}, ; 61
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555062, ; uint32_t type_token_id (0x2000276)
		i32 471; uint32_t java_name_index (0x1d7)
	}, ; 62
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 220; uint32_t java_name_index (0xdc)
	}, ; 63
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 966; uint32_t java_name_index (0x3c6)
	}, ; 64
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 40; uint32_t java_name_index (0x28)
	}, ; 65
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 155; uint32_t java_name_index (0x9b)
	}, ; 66
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 464; uint32_t java_name_index (0x1d0)
	}, ; 67
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 973; uint32_t java_name_index (0x3cd)
	}, ; 68
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 579; uint32_t java_name_index (0x243)
	}, ; 69
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 84; uint32_t java_name_index (0x54)
	}, ; 70
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 945; uint32_t java_name_index (0x3b1)
	}, ; 71
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 704; uint32_t java_name_index (0x2c0)
	}, ; 72
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 25; uint32_t java_name_index (0x19)
	}, ; 73
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 796; uint32_t java_name_index (0x31c)
	}, ; 74
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 910; uint32_t java_name_index (0x38e)
	}, ; 75
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 6; uint32_t java_name_index (0x6)
	}, ; 76
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 876; uint32_t java_name_index (0x36c)
	}, ; 77
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555838, ; uint32_t type_token_id (0x200057e)
		i32 970; uint32_t java_name_index (0x3ca)
	}, ; 78
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 418; uint32_t java_name_index (0x1a2)
	}, ; 79
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 372; uint32_t java_name_index (0x174)
	}, ; 80
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 148; uint32_t java_name_index (0x94)
	}, ; 81
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 236; uint32_t java_name_index (0xec)
	}, ; 82
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 41; uint32_t java_name_index (0x29)
	}, ; 83
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554785, ; uint32_t type_token_id (0x2000161)
		i32 323; uint32_t java_name_index (0x143)
	}, ; 84
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 1046; uint32_t java_name_index (0x416)
	}, ; 85
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555043, ; uint32_t type_token_id (0x2000263)
		i32 462; uint32_t java_name_index (0x1ce)
	}, ; 86
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 768; uint32_t java_name_index (0x300)
	}, ; 87
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555806, ; uint32_t type_token_id (0x200055e)
		i32 911; uint32_t java_name_index (0x38f)
	}, ; 88
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 673; uint32_t java_name_index (0x2a1)
	}, ; 89
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 72; uint32_t java_name_index (0x48)
	}, ; 90
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 375; uint32_t java_name_index (0x177)
	}, ; 91
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555418, ; uint32_t type_token_id (0x20003da)
		i32 663; uint32_t java_name_index (0x297)
	}, ; 92
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554737, ; uint32_t type_token_id (0x2000131)
		i32 298; uint32_t java_name_index (0x12a)
	}, ; 93
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 35; uint32_t java_name_index (0x23)
	}, ; 94
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 15; uint32_t java_name_index (0xf)
	}, ; 95
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 599; uint32_t java_name_index (0x257)
	}, ; 96
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 619; uint32_t java_name_index (0x26b)
	}, ; 97
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 872; uint32_t java_name_index (0x368)
	}, ; 98
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555398, ; uint32_t type_token_id (0x20003c6)
		i32 649; uint32_t java_name_index (0x289)
	}, ; 99
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 829; uint32_t java_name_index (0x33d)
	}, ; 100
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1012; uint32_t java_name_index (0x3f4)
	}, ; 101
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555184, ; uint32_t type_token_id (0x20002f0)
		i32 499; uint32_t java_name_index (0x1f3)
	}, ; 102
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 573; uint32_t java_name_index (0x23d)
	}, ; 103
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554915, ; uint32_t type_token_id (0x20001e3)
		i32 403; uint32_t java_name_index (0x193)
	}, ; 104
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 1002; uint32_t java_name_index (0x3ea)
	}, ; 105
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 1052; uint32_t java_name_index (0x41c)
	}, ; 106
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 846; uint32_t java_name_index (0x34e)
	}, ; 107
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 841; uint32_t java_name_index (0x349)
	}, ; 108
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 791; uint32_t java_name_index (0x317)
	}, ; 109
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 123; uint32_t java_name_index (0x7b)
	}, ; 110
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 797; uint32_t java_name_index (0x31d)
	}, ; 111
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 688; uint32_t java_name_index (0x2b0)
	}, ; 112
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 853; uint32_t java_name_index (0x355)
	}, ; 113
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 607; uint32_t java_name_index (0x25f)
	}, ; 114
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 956; uint32_t java_name_index (0x3bc)
	}, ; 115
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555846, ; uint32_t type_token_id (0x2000586)
		i32 980; uint32_t java_name_index (0x3d4)
	}, ; 116
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555044, ; uint32_t type_token_id (0x2000264)
		i32 463; uint32_t java_name_index (0x1cf)
	}, ; 117
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 964; uint32_t java_name_index (0x3c4)
	}, ; 118
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 424; uint32_t java_name_index (0x1a8)
	}, ; 119
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 871; uint32_t java_name_index (0x367)
	}, ; 120
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 357; uint32_t java_name_index (0x165)
	}, ; 121
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 90; uint32_t java_name_index (0x5a)
	}, ; 122
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554909, ; uint32_t type_token_id (0x20001dd)
		i32 399; uint32_t java_name_index (0x18f)
	}, ; 123
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555172, ; uint32_t type_token_id (0x20002e4)
		i32 498; uint32_t java_name_index (0x1f2)
	}, ; 124
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 540; uint32_t java_name_index (0x21c)
	}, ; 125
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554842, ; uint32_t type_token_id (0x200019a)
		i32 362; uint32_t java_name_index (0x16a)
	}, ; 126
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 569; uint32_t java_name_index (0x239)
	}, ; 127
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 266; uint32_t java_name_index (0x10a)
	}, ; 128
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 974; uint32_t java_name_index (0x3ce)
	}, ; 129
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 617; uint32_t java_name_index (0x269)
	}, ; 130
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 701; uint32_t java_name_index (0x2bd)
	}, ; 131
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 811; uint32_t java_name_index (0x32b)
	}, ; 132
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 254; uint32_t java_name_index (0xfe)
	}, ; 133
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 658; uint32_t java_name_index (0x292)
	}, ; 134
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 101; uint32_t java_name_index (0x65)
	}, ; 135
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 990; uint32_t java_name_index (0x3de)
	}, ; 136
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 56; uint32_t java_name_index (0x38)
	}, ; 137
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555055, ; uint32_t type_token_id (0x200026f)
		i32 467; uint32_t java_name_index (0x1d3)
	}, ; 138
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 959; uint32_t java_name_index (0x3bf)
	}, ; 139
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 201; uint32_t java_name_index (0xc9)
	}, ; 140
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 346; uint32_t java_name_index (0x15a)
	}, ; 141
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 880; uint32_t java_name_index (0x370)
	}, ; 142
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554901, ; uint32_t type_token_id (0x20001d5)
		i32 391; uint32_t java_name_index (0x187)
	}, ; 143
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555110, ; uint32_t type_token_id (0x20002a6)
		i32 484; uint32_t java_name_index (0x1e4)
	}, ; 144
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 754; uint32_t java_name_index (0x2f2)
	}, ; 145
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 866; uint32_t java_name_index (0x362)
	}, ; 146
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1026; uint32_t java_name_index (0x402)
	}, ; 147
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 629; uint32_t java_name_index (0x275)
	}, ; 148
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 795; uint32_t java_name_index (0x31b)
	}, ; 149
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 891; uint32_t java_name_index (0x37b)
	}, ; 150
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 442; uint32_t java_name_index (0x1ba)
	}, ; 151
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 1031; uint32_t java_name_index (0x407)
	}, ; 152
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 338; uint32_t java_name_index (0x152)
	}, ; 153
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 400; uint32_t java_name_index (0x190)
	}, ; 154
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 142; uint32_t java_name_index (0x8e)
	}, ; 155
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 870; uint32_t java_name_index (0x366)
	}, ; 156
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 414; uint32_t java_name_index (0x19e)
	}, ; 157
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 1000; uint32_t java_name_index (0x3e8)
	}, ; 158
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 23; uint32_t java_name_index (0x17)
	}, ; 159
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 821; uint32_t java_name_index (0x335)
	}, ; 160
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 1009; uint32_t java_name_index (0x3f1)
	}, ; 161
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 707; uint32_t java_name_index (0x2c3)
	}, ; 162
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 196; uint32_t java_name_index (0xc4)
	}, ; 163
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 608; uint32_t java_name_index (0x260)
	}, ; 164
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 943; uint32_t java_name_index (0x3af)
	}, ; 165
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 1035; uint32_t java_name_index (0x40b)
	}, ; 166
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 723; uint32_t java_name_index (0x2d3)
	}, ; 167
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555156, ; uint32_t type_token_id (0x20002d4)
		i32 494; uint32_t java_name_index (0x1ee)
	}, ; 168
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 826; uint32_t java_name_index (0x33a)
	}, ; 169
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 711; uint32_t java_name_index (0x2c7)
	}, ; 170
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 545; uint32_t java_name_index (0x221)
	}, ; 171
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 933; uint32_t java_name_index (0x3a5)
	}, ; 172
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555946, ; uint32_t type_token_id (0x20005ea)
		i32 901; uint32_t java_name_index (0x385)
	}, ; 173
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 952; uint32_t java_name_index (0x3b8)
	}, ; 174
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 49; uint32_t java_name_index (0x31)
	}, ; 175
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 1053; uint32_t java_name_index (0x41d)
	}, ; 176
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 755; uint32_t java_name_index (0x2f3)
	}, ; 177
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 518; uint32_t java_name_index (0x206)
	}, ; 178
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 333; uint32_t java_name_index (0x14d)
	}, ; 179
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 107; uint32_t java_name_index (0x6b)
	}, ; 180
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 112; uint32_t java_name_index (0x70)
	}, ; 181
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 209; uint32_t java_name_index (0xd1)
	}, ; 182
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 656; uint32_t java_name_index (0x290)
	}, ; 183
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555386, ; uint32_t type_token_id (0x20003ba)
		i32 639; uint32_t java_name_index (0x27f)
	}, ; 184
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 549; uint32_t java_name_index (0x225)
	}, ; 185
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 1057; uint32_t java_name_index (0x421)
	}, ; 186
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 936; uint32_t java_name_index (0x3a8)
	}, ; 187
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 660; uint32_t java_name_index (0x294)
	}, ; 188
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 738; uint32_t java_name_index (0x2e2)
	}, ; 189
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 349; uint32_t java_name_index (0x15d)
	}, ; 190
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555429, ; uint32_t type_token_id (0x20003e5)
		i32 672; uint32_t java_name_index (0x2a0)
	}, ; 191
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 610; uint32_t java_name_index (0x262)
	}, ; 192
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 379; uint32_t java_name_index (0x17b)
	}, ; 193
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 683; uint32_t java_name_index (0x2ab)
	}, ; 194
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554846, ; uint32_t type_token_id (0x200019e)
		i32 365; uint32_t java_name_index (0x16d)
	}, ; 195
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 1016; uint32_t java_name_index (0x3f8)
	}, ; 196
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554835, ; uint32_t type_token_id (0x2000193)
		i32 358; uint32_t java_name_index (0x166)
	}, ; 197
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555096, ; uint32_t type_token_id (0x2000298)
		i32 806; uint32_t java_name_index (0x326)
	}, ; 198
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 712; uint32_t java_name_index (0x2c8)
	}, ; 199
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 664; uint32_t java_name_index (0x298)
	}, ; 200
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 16; uint32_t java_name_index (0x10)
	}, ; 201
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 273; uint32_t java_name_index (0x111)
	}, ; 202
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 782; uint32_t java_name_index (0x30e)
	}, ; 203
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 583; uint32_t java_name_index (0x247)
	}, ; 204
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 127; uint32_t java_name_index (0x7f)
	}, ; 205
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555187, ; uint32_t type_token_id (0x20002f3)
		i32 502; uint32_t java_name_index (0x1f6)
	}, ; 206
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554914, ; uint32_t type_token_id (0x20001e2)
		i32 402; uint32_t java_name_index (0x192)
	}, ; 207
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 228; uint32_t java_name_index (0xe4)
	}, ; 208
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555264, ; uint32_t type_token_id (0x2000340)
		i32 562; uint32_t java_name_index (0x232)
	}, ; 209
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 83; uint32_t java_name_index (0x53)
	}, ; 210
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554905, ; uint32_t type_token_id (0x20001d9)
		i32 395; uint32_t java_name_index (0x18b)
	}, ; 211
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555425, ; uint32_t type_token_id (0x20003e1)
		i32 669; uint32_t java_name_index (0x29d)
	}, ; 212
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 940; uint32_t java_name_index (0x3ac)
	}, ; 213
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 695; uint32_t java_name_index (0x2b7)
	}, ; 214
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 719; uint32_t java_name_index (0x2cf)
	}, ; 215
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 371; uint32_t java_name_index (0x173)
	}, ; 216
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 765; uint32_t java_name_index (0x2fd)
	}, ; 217
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 698; uint32_t java_name_index (0x2ba)
	}, ; 218
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 882; uint32_t java_name_index (0x372)
	}, ; 219
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 858; uint32_t java_name_index (0x35a)
	}, ; 220
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554908, ; uint32_t type_token_id (0x20001dc)
		i32 398; uint32_t java_name_index (0x18e)
	}, ; 221
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555189, ; uint32_t type_token_id (0x20002f5)
		i32 503; uint32_t java_name_index (0x1f7)
	}, ; 222
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 9; uint32_t java_name_index (0x9)
	}, ; 223
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 735; uint32_t java_name_index (0x2df)
	}, ; 224
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 129; uint32_t java_name_index (0x81)
	}, ; 225
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 802; uint32_t java_name_index (0x322)
	}, ; 226
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 854; uint32_t java_name_index (0x356)
	}, ; 227
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 13; uint32_t java_name_index (0xd)
	}, ; 228
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 318; uint32_t java_name_index (0x13e)
	}, ; 229
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 317; uint32_t java_name_index (0x13d)
	}, ; 230
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 149; uint32_t java_name_index (0x95)
	}, ; 231
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1030; uint32_t java_name_index (0x406)
	}, ; 232
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 202; uint32_t java_name_index (0xca)
	}, ; 233
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 892; uint32_t java_name_index (0x37c)
	}, ; 234
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 258; uint32_t java_name_index (0x102)
	}, ; 235
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1; uint32_t java_name_index (0x1)
	}, ; 236
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 525; uint32_t java_name_index (0x20d)
	}, ; 237
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 1020; uint32_t java_name_index (0x3fc)
	}, ; 238
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 687; uint32_t java_name_index (0x2af)
	}, ; 239
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 336; uint32_t java_name_index (0x150)
	}, ; 240
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 382; uint32_t java_name_index (0x17e)
	}, ; 241
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 632; uint32_t java_name_index (0x278)
	}, ; 242
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 0; uint32_t java_name_index (0x0)
	}, ; 243
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 697; uint32_t java_name_index (0x2b9)
	}, ; 244
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 367; uint32_t java_name_index (0x16f)
	}, ; 245
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 102; uint32_t java_name_index (0x66)
	}, ; 246
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 836; uint32_t java_name_index (0x344)
	}, ; 247
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554665, ; uint32_t type_token_id (0x20000e9)
		i32 253; uint32_t java_name_index (0xfd)
	}, ; 248
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 31; uint32_t java_name_index (0x1f)
	}, ; 249
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 189; uint32_t java_name_index (0xbd)
	}, ; 250
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555065, ; uint32_t type_token_id (0x2000279)
		i32 474; uint32_t java_name_index (0x1da)
	}, ; 251
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 625; uint32_t java_name_index (0x271)
	}, ; 252
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554855, ; uint32_t type_token_id (0x20001a7)
		i32 370; uint32_t java_name_index (0x172)
	}, ; 253
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 587; uint32_t java_name_index (0x24b)
	}, ; 254
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 805; uint32_t java_name_index (0x325)
	}, ; 255
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 303; uint32_t java_name_index (0x12f)
	}, ; 256
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 1001; uint32_t java_name_index (0x3e9)
	}, ; 257
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 413; uint32_t java_name_index (0x19d)
	}, ; 258
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 554; uint32_t java_name_index (0x22a)
	}, ; 259
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 237; uint32_t java_name_index (0xed)
	}, ; 260
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 4; uint32_t java_name_index (0x4)
	}, ; 261
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555249, ; uint32_t type_token_id (0x2000331)
		i32 903; uint32_t java_name_index (0x387)
	}, ; 262
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 369; uint32_t java_name_index (0x171)
	}, ; 263
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 830; uint32_t java_name_index (0x33e)
	}, ; 264
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554872, ; uint32_t type_token_id (0x20001b8)
		i32 378; uint32_t java_name_index (0x17a)
	}, ; 265
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 134; uint32_t java_name_index (0x86)
	}, ; 266
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 602; uint32_t java_name_index (0x25a)
	}, ; 267
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 852; uint32_t java_name_index (0x354)
	}, ; 268
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 724; uint32_t java_name_index (0x2d4)
	}, ; 269
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 827; uint32_t java_name_index (0x33b)
	}, ; 270
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 229; uint32_t java_name_index (0xe5)
	}, ; 271
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555843, ; uint32_t type_token_id (0x2000583)
		i32 977; uint32_t java_name_index (0x3d1)
	}, ; 272
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 280; uint32_t java_name_index (0x118)
	}, ; 273
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 132; uint32_t java_name_index (0x84)
	}, ; 274
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555005, ; uint32_t type_token_id (0x200023d)
		i32 450; uint32_t java_name_index (0x1c2)
	}, ; 275
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 311; uint32_t java_name_index (0x137)
	}, ; 276
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1024; uint32_t java_name_index (0x400)
	}, ; 277
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 63; uint32_t java_name_index (0x3f)
	}, ; 278
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 242; uint32_t java_name_index (0xf2)
	}, ; 279
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 28; uint32_t java_name_index (0x1c)
	}, ; 280
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 762; uint32_t java_name_index (0x2fa)
	}, ; 281
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 726; uint32_t java_name_index (0x2d6)
	}, ; 282
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554773, ; uint32_t type_token_id (0x2000155)
		i32 316; uint32_t java_name_index (0x13c)
	}, ; 283
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 598; uint32_t java_name_index (0x256)
	}, ; 284
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 38; uint32_t java_name_index (0x26)
	}, ; 285
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 914; uint32_t java_name_index (0x392)
	}, ; 286
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 272; uint32_t java_name_index (0x110)
	}, ; 287
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 898; uint32_t java_name_index (0x382)
	}, ; 288
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554904, ; uint32_t type_token_id (0x20001d8)
		i32 394; uint32_t java_name_index (0x18a)
	}, ; 289
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 144; uint32_t java_name_index (0x90)
	}, ; 290
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 987; uint32_t java_name_index (0x3db)
	}, ; 291
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 979; uint32_t java_name_index (0x3d3)
	}, ; 292
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 1040; uint32_t java_name_index (0x410)
	}, ; 293
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 487; uint32_t java_name_index (0x1e7)
	}, ; 294
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 422; uint32_t java_name_index (0x1a6)
	}, ; 295
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 752; uint32_t java_name_index (0x2f0)
	}, ; 296
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 920; uint32_t java_name_index (0x398)
	}, ; 297
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 655; uint32_t java_name_index (0x28f)
	}, ; 298
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 136; uint32_t java_name_index (0x88)
	}, ; 299
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554799, ; uint32_t type_token_id (0x200016f)
		i32 331; uint32_t java_name_index (0x14b)
	}, ; 300
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554868, ; uint32_t type_token_id (0x20001b4)
		i32 376; uint32_t java_name_index (0x178)
	}, ; 301
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554888, ; uint32_t type_token_id (0x20001c8)
		i32 387; uint32_t java_name_index (0x183)
	}, ; 302
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 537; uint32_t java_name_index (0x219)
	}, ; 303
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555267, ; uint32_t type_token_id (0x2000343)
		i32 909; uint32_t java_name_index (0x38d)
	}, ; 304
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555817, ; uint32_t type_token_id (0x2000569)
		i32 923; uint32_t java_name_index (0x39b)
	}, ; 305
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 760; uint32_t java_name_index (0x2f8)
	}, ; 306
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 219; uint32_t java_name_index (0xdb)
	}, ; 307
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 191; uint32_t java_name_index (0xbf)
	}, ; 308
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 197; uint32_t java_name_index (0xc5)
	}, ; 309
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 125; uint32_t java_name_index (0x7d)
	}, ; 310
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 708; uint32_t java_name_index (0x2c4)
	}, ; 311
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 51; uint32_t java_name_index (0x33)
	}, ; 312
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1063; uint32_t java_name_index (0x427)
	}, ; 313
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 361; uint32_t java_name_index (0x169)
	}, ; 314
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 77; uint32_t java_name_index (0x4d)
	}, ; 315
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 470; uint32_t java_name_index (0x1d6)
	}, ; 316
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 627; uint32_t java_name_index (0x273)
	}, ; 317
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 764; uint32_t java_name_index (0x2fc)
	}, ; 318
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 276; uint32_t java_name_index (0x114)
	}, ; 319
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 81; uint32_t java_name_index (0x51)
	}, ; 320
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 255; uint32_t java_name_index (0xff)
	}, ; 321
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 19; uint32_t java_name_index (0x13)
	}, ; 322
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554740, ; uint32_t type_token_id (0x2000134)
		i32 783; uint32_t java_name_index (0x30f)
	}, ; 323
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 161; uint32_t java_name_index (0xa1)
	}, ; 324
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 360; uint32_t java_name_index (0x168)
	}, ; 325
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 674; uint32_t java_name_index (0x2a2)
	}, ; 326
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 867; uint32_t java_name_index (0x363)
	}, ; 327
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 722; uint32_t java_name_index (0x2d2)
	}, ; 328
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 770; uint32_t java_name_index (0x302)
	}, ; 329
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555184, ; uint32_t type_token_id (0x20002f0)
		i32 818; uint32_t java_name_index (0x332)
	}, ; 330
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1034; uint32_t java_name_index (0x40a)
	}, ; 331
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 260; uint32_t java_name_index (0x104)
	}, ; 332
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 230; uint32_t java_name_index (0xe6)
	}, ; 333
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 863; uint32_t java_name_index (0x35f)
	}, ; 334
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 913; uint32_t java_name_index (0x391)
	}, ; 335
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555145, ; uint32_t type_token_id (0x20002c9)
		i32 492; uint32_t java_name_index (0x1ec)
	}, ; 336
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 152; uint32_t java_name_index (0x98)
	}, ; 337
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 682; uint32_t java_name_index (0x2aa)
	}, ; 338
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 515; uint32_t java_name_index (0x203)
	}, ; 339
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 74; uint32_t java_name_index (0x4a)
	}, ; 340
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1067; uint32_t java_name_index (0x42b)
	}, ; 341
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555844, ; uint32_t type_token_id (0x2000584)
		i32 978; uint32_t java_name_index (0x3d2)
	}, ; 342
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 1037; uint32_t java_name_index (0x40d)
	}, ; 343
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555397, ; uint32_t type_token_id (0x20003c5)
		i32 648; uint32_t java_name_index (0x288)
	}, ; 344
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 527; uint32_t java_name_index (0x20f)
	}, ; 345
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 865; uint32_t java_name_index (0x361)
	}, ; 346
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 225; uint32_t java_name_index (0xe1)
	}, ; 347
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 681; uint32_t java_name_index (0x2a9)
	}, ; 348
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 356; uint32_t java_name_index (0x164)
	}, ; 349
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 678; uint32_t java_name_index (0x2a6)
	}, ; 350
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555263, ; uint32_t type_token_id (0x200033f)
		i32 561; uint32_t java_name_index (0x231)
	}, ; 351
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 717; uint32_t java_name_index (0x2cd)
	}, ; 352
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 850; uint32_t java_name_index (0x352)
	}, ; 353
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 902; uint32_t java_name_index (0x386)
	}, ; 354
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 591; uint32_t java_name_index (0x24f)
	}, ; 355
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 856; uint32_t java_name_index (0x358)
	}, ; 356
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 668; uint32_t java_name_index (0x29c)
	}, ; 357
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 620; uint32_t java_name_index (0x26c)
	}, ; 358
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 531; uint32_t java_name_index (0x213)
	}, ; 359
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 198; uint32_t java_name_index (0xc6)
	}, ; 360
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 423; uint32_t java_name_index (0x1a7)
	}, ; 361
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 946; uint32_t java_name_index (0x3b2)
	}, ; 362
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1068; uint32_t java_name_index (0x42c)
	}, ; 363
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 444; uint32_t java_name_index (0x1bc)
	}, ; 364
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 604; uint32_t java_name_index (0x25c)
	}, ; 365
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 758; uint32_t java_name_index (0x2f6)
	}, ; 366
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 269; uint32_t java_name_index (0x10d)
	}, ; 367
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555098, ; uint32_t type_token_id (0x200029a)
		i32 476; uint32_t java_name_index (0x1dc)
	}, ; 368
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 899; uint32_t java_name_index (0x383)
	}, ; 369
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 140; uint32_t java_name_index (0x8c)
	}, ; 370
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 566; uint32_t java_name_index (0x236)
	}, ; 371
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 314; uint32_t java_name_index (0x13a)
	}, ; 372
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 271; uint32_t java_name_index (0x10f)
	}, ; 373
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 926; uint32_t java_name_index (0x39e)
	}, ; 374
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554903, ; uint32_t type_token_id (0x20001d7)
		i32 393; uint32_t java_name_index (0x189)
	}, ; 375
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 714; uint32_t java_name_index (0x2ca)
	}, ; 376
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555104, ; uint32_t type_token_id (0x20002a0)
		i32 480; uint32_t java_name_index (0x1e0)
	}, ; 377
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555147, ; uint32_t type_token_id (0x20002cb)
		i32 493; uint32_t java_name_index (0x1ed)
	}, ; 378
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 221; uint32_t java_name_index (0xdd)
	}, ; 379
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 546; uint32_t java_name_index (0x222)
	}, ; 380
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 451; uint32_t java_name_index (0x1c3)
	}, ; 381
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 618; uint32_t java_name_index (0x26a)
	}, ; 382
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 605; uint32_t java_name_index (0x25d)
	}, ; 383
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1066; uint32_t java_name_index (0x42a)
	}, ; 384
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 957; uint32_t java_name_index (0x3bd)
	}, ; 385
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 54; uint32_t java_name_index (0x36)
	}, ; 386
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 1019; uint32_t java_name_index (0x3fb)
	}, ; 387
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554482, ; uint32_t type_token_id (0x2000032)
		i32 216; uint32_t java_name_index (0xd8)
	}, ; 388
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 741; uint32_t java_name_index (0x2e5)
	}, ; 389
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 246; uint32_t java_name_index (0xf6)
	}, ; 390
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 756; uint32_t java_name_index (0x2f4)
	}, ; 391
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 810; uint32_t java_name_index (0x32a)
	}, ; 392
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 994; uint32_t java_name_index (0x3e2)
	}, ; 393
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 631; uint32_t java_name_index (0x277)
	}, ; 394
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554927, ; uint32_t type_token_id (0x20001ef)
		i32 404; uint32_t java_name_index (0x194)
	}, ; 395
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 512; uint32_t java_name_index (0x200)
	}, ; 396
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 212; uint32_t java_name_index (0xd4)
	}, ; 397
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 94; uint32_t java_name_index (0x5e)
	}, ; 398
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554975, ; uint32_t type_token_id (0x200021f)
		i32 823; uint32_t java_name_index (0x337)
	}, ; 399
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 244; uint32_t java_name_index (0xf4)
	}, ; 400
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554883, ; uint32_t type_token_id (0x20001c3)
		i32 383; uint32_t java_name_index (0x17f)
	}, ; 401
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 207; uint32_t java_name_index (0xcf)
	}, ; 402
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 1039; uint32_t java_name_index (0x40f)
	}, ; 403
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554936, ; uint32_t type_token_id (0x20001f8)
		i32 410; uint32_t java_name_index (0x19a)
	}, ; 404
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554820, ; uint32_t type_token_id (0x2000184)
		i32 348; uint32_t java_name_index (0x15c)
	}, ; 405
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 180; uint32_t java_name_index (0xb4)
	}, ; 406
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 73; uint32_t java_name_index (0x49)
	}, ; 407
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 184; uint32_t java_name_index (0xb8)
	}, ; 408
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 705; uint32_t java_name_index (0x2c1)
	}, ; 409
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 1047; uint32_t java_name_index (0x417)
	}, ; 410
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 748; uint32_t java_name_index (0x2ec)
	}, ; 411
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 151; uint32_t java_name_index (0x97)
	}, ; 412
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554713, ; uint32_t type_token_id (0x2000119)
		i32 283; uint32_t java_name_index (0x11b)
	}, ; 413
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 773; uint32_t java_name_index (0x305)
	}, ; 414
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 166; uint32_t java_name_index (0xa6)
	}, ; 415
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 613; uint32_t java_name_index (0x265)
	}, ; 416
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 514; uint32_t java_name_index (0x202)
	}, ; 417
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555805, ; uint32_t type_token_id (0x200055d)
		i32 908; uint32_t java_name_index (0x38c)
	}, ; 418
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 440; uint32_t java_name_index (0x1b8)
	}, ; 419
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555423, ; uint32_t type_token_id (0x20003df)
		i32 667; uint32_t java_name_index (0x29b)
	}, ; 420
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 702; uint32_t java_name_index (0x2be)
	}, ; 421
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 659; uint32_t java_name_index (0x293)
	}, ; 422
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 458; uint32_t java_name_index (0x1ca)
	}, ; 423
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 962; uint32_t java_name_index (0x3c2)
	}, ; 424
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555394, ; uint32_t type_token_id (0x20003c2)
		i32 645; uint32_t java_name_index (0x285)
	}, ; 425
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 792; uint32_t java_name_index (0x318)
	}, ; 426
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554996, ; uint32_t type_token_id (0x2000234)
		i32 445; uint32_t java_name_index (0x1bd)
	}, ; 427
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554653, ; uint32_t type_token_id (0x20000dd)
		i32 247; uint32_t java_name_index (0xf7)
	}, ; 428
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 777; uint32_t java_name_index (0x309)
	}, ; 429
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 252; uint32_t java_name_index (0xfc)
	}, ; 430
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 173; uint32_t java_name_index (0xad)
	}, ; 431
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 248; uint32_t java_name_index (0xf8)
	}, ; 432
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554934, ; uint32_t type_token_id (0x20001f6)
		i32 408; uint32_t java_name_index (0x198)
	}, ; 433
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 185; uint32_t java_name_index (0xb9)
	}, ; 434
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 165; uint32_t java_name_index (0xa5)
	}, ; 435
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555395, ; uint32_t type_token_id (0x20003c3)
		i32 646; uint32_t java_name_index (0x286)
	}, ; 436
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 478; uint32_t java_name_index (0x1de)
	}, ; 437
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 21; uint32_t java_name_index (0x15)
	}, ; 438
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554979, ; uint32_t type_token_id (0x2000223)
		i32 433; uint32_t java_name_index (0x1b1)
	}, ; 439
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555261, ; uint32_t type_token_id (0x200033d)
		i32 559; uint32_t java_name_index (0x22f)
	}, ; 440
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 92; uint32_t java_name_index (0x5c)
	}, ; 441
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 256; uint32_t java_name_index (0x100)
	}, ; 442
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 351; uint32_t java_name_index (0x15f)
	}, ; 443
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 386; uint32_t java_name_index (0x182)
	}, ; 444
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 156; uint32_t java_name_index (0x9c)
	}, ; 445
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 601; uint32_t java_name_index (0x259)
	}, ; 446
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 718; uint32_t java_name_index (0x2ce)
	}, ; 447
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 310; uint32_t java_name_index (0x136)
	}, ; 448
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 555; uint32_t java_name_index (0x22b)
	}, ; 449
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 33; uint32_t java_name_index (0x21)
	}, ; 450
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 801; uint32_t java_name_index (0x321)
	}, ; 451
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 343; uint32_t java_name_index (0x157)
	}, ; 452
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555260, ; uint32_t type_token_id (0x200033c)
		i32 558; uint32_t java_name_index (0x22e)
	}, ; 453
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 194; uint32_t java_name_index (0xc2)
	}, ; 454
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 944; uint32_t java_name_index (0x3b0)
	}, ; 455
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 524; uint32_t java_name_index (0x20c)
	}, ; 456
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555694, ; uint32_t type_token_id (0x20004ee)
		i32 879; uint32_t java_name_index (0x36f)
	}, ; 457
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 584; uint32_t java_name_index (0x248)
	}, ; 458
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 53; uint32_t java_name_index (0x35)
	}, ; 459
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 728; uint32_t java_name_index (0x2d8)
	}, ; 460
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 183; uint32_t java_name_index (0xb7)
	}, ; 461
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 307; uint32_t java_name_index (0x133)
	}, ; 462
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 115; uint32_t java_name_index (0x73)
	}, ; 463
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 446; uint32_t java_name_index (0x1be)
	}, ; 464
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 211; uint32_t java_name_index (0xd3)
	}, ; 465
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1054; uint32_t java_name_index (0x41e)
	}, ; 466
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 1070; uint32_t java_name_index (0x42e)
	}, ; 467
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 981; uint32_t java_name_index (0x3d5)
	}, ; 468
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 86; uint32_t java_name_index (0x56)
	}, ; 469
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 551; uint32_t java_name_index (0x227)
	}, ; 470
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 167; uint32_t java_name_index (0xa7)
	}, ; 471
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 820; uint32_t java_name_index (0x334)
	}, ; 472
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 703; uint32_t java_name_index (0x2bf)
	}, ; 473
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 789; uint32_t java_name_index (0x315)
	}, ; 474
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 153; uint32_t java_name_index (0x99)
	}, ; 475
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 661; uint32_t java_name_index (0x295)
	}, ; 476
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 121; uint32_t java_name_index (0x79)
	}, ; 477
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 1021; uint32_t java_name_index (0x3fd)
	}, ; 478
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 320; uint32_t java_name_index (0x140)
	}, ; 479
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 268; uint32_t java_name_index (0x10c)
	}, ; 480
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 848; uint32_t java_name_index (0x350)
	}, ; 481
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555041, ; uint32_t type_token_id (0x2000261)
		i32 460; uint32_t java_name_index (0x1cc)
	}, ; 482
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554987, ; uint32_t type_token_id (0x200022b)
		i32 439; uint32_t java_name_index (0x1b7)
	}, ; 483
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 542; uint32_t java_name_index (0x21e)
	}, ; 484
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 968; uint32_t java_name_index (0x3c8)
	}, ; 485
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 359; uint32_t java_name_index (0x167)
	}, ; 486
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 572; uint32_t java_name_index (0x23c)
	}, ; 487
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 18; uint32_t java_name_index (0x12)
	}, ; 488
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 1036; uint32_t java_name_index (0x40c)
	}, ; 489
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 80; uint32_t java_name_index (0x50)
	}, ; 490
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 997; uint32_t java_name_index (0x3e5)
	}, ; 491
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 325; uint32_t java_name_index (0x145)
	}, ; 492
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 89; uint32_t java_name_index (0x59)
	}, ; 493
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 113; uint32_t java_name_index (0x71)
	}, ; 494
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 787; uint32_t java_name_index (0x313)
	}, ; 495
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 69; uint32_t java_name_index (0x45)
	}, ; 496
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 243; uint32_t java_name_index (0xf3)
	}, ; 497
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555384, ; uint32_t type_token_id (0x20003b8)
		i32 638; uint32_t java_name_index (0x27e)
	}, ; 498
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 570; uint32_t java_name_index (0x23a)
	}, ; 499
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555258, ; uint32_t type_token_id (0x200033a)
		i32 557; uint32_t java_name_index (0x22d)
	}, ; 500
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 1004; uint32_t java_name_index (0x3ec)
	}, ; 501
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 168; uint32_t java_name_index (0xa8)
	}, ; 502
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 157; uint32_t java_name_index (0x9d)
	}, ; 503
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554786, ; uint32_t type_token_id (0x2000162)
		i32 812; uint32_t java_name_index (0x32c)
	}, ; 504
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555771, ; uint32_t type_token_id (0x200053b)
		i32 883; uint32_t java_name_index (0x373)
	}, ; 505
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 1018; uint32_t java_name_index (0x3fa)
	}, ; 506
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 918; uint32_t java_name_index (0x396)
	}, ; 507
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 690; uint32_t java_name_index (0x2b2)
	}, ; 508
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 995; uint32_t java_name_index (0x3e3)
	}, ; 509
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 99; uint32_t java_name_index (0x63)
	}, ; 510
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 120; uint32_t java_name_index (0x78)
	}, ; 511
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554881, ; uint32_t type_token_id (0x20001c1)
		i32 381; uint32_t java_name_index (0x17d)
	}, ; 512
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555393, ; uint32_t type_token_id (0x20003c1)
		i32 644; uint32_t java_name_index (0x284)
	}, ; 513
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555090, ; uint32_t type_token_id (0x2000292)
		i32 790; uint32_t java_name_index (0x316)
	}, ; 514
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 240; uint32_t java_name_index (0xf0)
	}, ; 515
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555239, ; uint32_t type_token_id (0x2000327)
		i32 544; uint32_t java_name_index (0x220)
	}, ; 516
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 199; uint32_t java_name_index (0xc7)
	}, ; 517
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 576; uint32_t java_name_index (0x240)
	}, ; 518
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 109; uint32_t java_name_index (0x6d)
	}, ; 519
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 734; uint32_t java_name_index (0x2de)
	}, ; 520
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 1045; uint32_t java_name_index (0x415)
	}, ; 521
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555114, ; uint32_t type_token_id (0x20002aa)
		i32 488; uint32_t java_name_index (0x1e8)
	}, ; 522
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 257; uint32_t java_name_index (0x101)
	}, ; 523
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554935, ; uint32_t type_token_id (0x20001f7)
		i32 409; uint32_t java_name_index (0x199)
	}, ; 524
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554636, ; uint32_t type_token_id (0x20000cc)
		i32 239; uint32_t java_name_index (0xef)
	}, ; 525
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 575; uint32_t java_name_index (0x23f)
	}, ; 526
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 282; uint32_t java_name_index (0x11a)
	}, ; 527
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554784, ; uint32_t type_token_id (0x2000160)
		i32 322; uint32_t java_name_index (0x142)
	}, ; 528
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 352; uint32_t java_name_index (0x160)
	}, ; 529
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 750; uint32_t java_name_index (0x2ee)
	}, ; 530
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 111; uint32_t java_name_index (0x6f)
	}, ; 531
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 600; uint32_t java_name_index (0x258)
	}, ; 532
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 287; uint32_t java_name_index (0x11f)
	}, ; 533
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 8; uint32_t java_name_index (0x8)
	}, ; 534
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 864; uint32_t java_name_index (0x360)
	}, ; 535
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554852, ; uint32_t type_token_id (0x20001a4)
		i32 368; uint32_t java_name_index (0x170)
	}, ; 536
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555099, ; uint32_t type_token_id (0x200029b)
		i32 477; uint32_t java_name_index (0x1dd)
	}, ; 537
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 267; uint32_t java_name_index (0x10b)
	}, ; 538
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 159; uint32_t java_name_index (0x9f)
	}, ; 539
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 825; uint32_t java_name_index (0x339)
	}, ; 540
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554884, ; uint32_t type_token_id (0x20001c4)
		i32 384; uint32_t java_name_index (0x180)
	}, ; 541
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 175; uint32_t java_name_index (0xaf)
	}, ; 542
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 578; uint32_t java_name_index (0x242)
	}, ; 543
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 615; uint32_t java_name_index (0x267)
	}, ; 544
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 819; uint32_t java_name_index (0x333)
	}, ; 545
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1005; uint32_t java_name_index (0x3ed)
	}, ; 546
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 238; uint32_t java_name_index (0xee)
	}, ; 547
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 520; uint32_t java_name_index (0x208)
	}, ; 548
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1056; uint32_t java_name_index (0x420)
	}, ; 549
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 585; uint32_t java_name_index (0x249)
	}, ; 550
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 20; uint32_t java_name_index (0x14)
	}, ; 551
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 26; uint32_t java_name_index (0x1a)
	}, ; 552
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 12; uint32_t java_name_index (0xc)
	}, ; 553
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554864, ; uint32_t type_token_id (0x20001b0)
		i32 374; uint32_t java_name_index (0x176)
	}, ; 554
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 888; uint32_t java_name_index (0x378)
	}, ; 555
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 759; uint32_t java_name_index (0x2f7)
	}, ; 556
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 174; uint32_t java_name_index (0xae)
	}, ; 557
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 150; uint32_t java_name_index (0x96)
	}, ; 558
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 971; uint32_t java_name_index (0x3cb)
	}, ; 559
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555103, ; uint32_t type_token_id (0x200029f)
		i32 479; uint32_t java_name_index (0x1df)
	}, ; 560
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 133; uint32_t java_name_index (0x85)
	}, ; 561
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 172; uint32_t java_name_index (0xac)
	}, ; 562
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 135; uint32_t java_name_index (0x87)
	}, ; 563
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 539; uint32_t java_name_index (0x21b)
	}, ; 564
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 68; uint32_t java_name_index (0x44)
	}, ; 565
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 250; uint32_t java_name_index (0xfa)
	}, ; 566
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 70; uint32_t java_name_index (0x46)
	}, ; 567
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 78; uint32_t java_name_index (0x4e)
	}, ; 568
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 217; uint32_t java_name_index (0xd9)
	}, ; 569
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 574; uint32_t java_name_index (0x23e)
	}, ; 570
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 963; uint32_t java_name_index (0x3c3)
	}, ; 571
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 1061; uint32_t java_name_index (0x425)
	}, ; 572
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 52; uint32_t java_name_index (0x34)
	}, ; 573
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 187; uint32_t java_name_index (0xbb)
	}, ; 574
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1010; uint32_t java_name_index (0x3f2)
	}, ; 575
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 691; uint32_t java_name_index (0x2b3)
	}, ; 576
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 716; uint32_t java_name_index (0x2cc)
	}, ; 577
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 1051; uint32_t java_name_index (0x41b)
	}, ; 578
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 177; uint32_t java_name_index (0xb1)
	}, ; 579
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 816; uint32_t java_name_index (0x330)
	}, ; 580
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 803; uint32_t java_name_index (0x323)
	}, ; 581
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 859; uint32_t java_name_index (0x35b)
	}, ; 582
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 628; uint32_t java_name_index (0x274)
	}, ; 583
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 624; uint32_t java_name_index (0x270)
	}, ; 584
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 730; uint32_t java_name_index (0x2da)
	}, ; 585
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 1044; uint32_t java_name_index (0x414)
	}, ; 586
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554885, ; uint32_t type_token_id (0x20001c5)
		i32 385; uint32_t java_name_index (0x181)
	}, ; 587
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 110; uint32_t java_name_index (0x6e)
	}, ; 588
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555112, ; uint32_t type_token_id (0x20002a8)
		i32 486; uint32_t java_name_index (0x1e6)
	}, ; 589
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1007; uint32_t java_name_index (0x3ef)
	}, ; 590
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 577; uint32_t java_name_index (0x241)
	}, ; 591
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 164; uint32_t java_name_index (0xa4)
	}, ; 592
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 87; uint32_t java_name_index (0x57)
	}, ; 593
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 896; uint32_t java_name_index (0x380)
	}, ; 594
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 696; uint32_t java_name_index (0x2b8)
	}, ; 595
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 65; uint32_t java_name_index (0x41)
	}, ; 596
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554715, ; uint32_t type_token_id (0x200011b)
		i32 779; uint32_t java_name_index (0x30b)
	}, ; 597
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 842; uint32_t java_name_index (0x34a)
	}, ; 598
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 862; uint32_t java_name_index (0x35e)
	}, ; 599
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 895; uint32_t java_name_index (0x37f)
	}, ; 600
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555401, ; uint32_t type_token_id (0x20003c9)
		i32 651; uint32_t java_name_index (0x28b)
	}, ; 601
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 274; uint32_t java_name_index (0x112)
	}, ; 602
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 277; uint32_t java_name_index (0x115)
	}, ; 603
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 454; uint32_t java_name_index (0x1c6)
	}, ; 604
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 988; uint32_t java_name_index (0x3dc)
	}, ; 605
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 843; uint32_t java_name_index (0x34b)
	}, ; 606
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554907, ; uint32_t type_token_id (0x20001db)
		i32 397; uint32_t java_name_index (0x18d)
	}, ; 607
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 534; uint32_t java_name_index (0x216)
	}, ; 608
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 299; uint32_t java_name_index (0x12b)
	}, ; 609
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555432, ; uint32_t type_token_id (0x20003e8)
		i32 675; uint32_t java_name_index (0x2a3)
	}, ; 610
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 588; uint32_t java_name_index (0x24c)
	}, ; 611
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 281; uint32_t java_name_index (0x119)
	}, ; 612
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 815; uint32_t java_name_index (0x32f)
	}, ; 613
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 32; uint32_t java_name_index (0x20)
	}, ; 614
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555821, ; uint32_t type_token_id (0x200056d)
		i32 927; uint32_t java_name_index (0x39f)
	}, ; 615
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 743; uint32_t java_name_index (0x2e7)
	}, ; 616
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 626; uint32_t java_name_index (0x272)
	}, ; 617
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 523; uint32_t java_name_index (0x20b)
	}, ; 618
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 847; uint32_t java_name_index (0x34f)
	}, ; 619
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 972; uint32_t java_name_index (0x3cc)
	}, ; 620
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 124; uint32_t java_name_index (0x7c)
	}, ; 621
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 640; uint32_t java_name_index (0x280)
	}, ; 622
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 426; uint32_t java_name_index (0x1aa)
	}, ; 623
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 154; uint32_t java_name_index (0x9a)
	}, ; 624
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 835; uint32_t java_name_index (0x343)
	}, ; 625
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 218; uint32_t java_name_index (0xda)
	}, ; 626
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 45; uint32_t java_name_index (0x2d)
	}, ; 627
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 814; uint32_t java_name_index (0x32e)
	}, ; 628
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 234; uint32_t java_name_index (0xea)
	}, ; 629
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 781; uint32_t java_name_index (0x30d)
	}, ; 630
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 922; uint32_t java_name_index (0x39a)
	}, ; 631
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 915; uint32_t java_name_index (0x393)
	}, ; 632
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 739; uint32_t java_name_index (0x2e3)
	}, ; 633
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 1011; uint32_t java_name_index (0x3f3)
	}, ; 634
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554724, ; uint32_t type_token_id (0x2000124)
		i32 289; uint32_t java_name_index (0x121)
	}, ; 635
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555780, ; uint32_t type_token_id (0x2000544)
		i32 886; uint32_t java_name_index (0x376)
	}, ; 636
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 315; uint32_t java_name_index (0x13b)
	}, ; 637
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 919; uint32_t java_name_index (0x397)
	}, ; 638
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 162; uint32_t java_name_index (0xa2)
	}, ; 639
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554906, ; uint32_t type_token_id (0x20001da)
		i32 396; uint32_t java_name_index (0x18c)
	}, ; 640
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 206; uint32_t java_name_index (0xce)
	}, ; 641
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555787, ; uint32_t type_token_id (0x200054b)
		i32 893; uint32_t java_name_index (0x37d)
	}, ; 642
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 580; uint32_t java_name_index (0x244)
	}, ; 643
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 415; uint32_t java_name_index (0x19f)
	}, ; 644
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 729; uint32_t java_name_index (0x2d9)
	}, ; 645
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 775; uint32_t java_name_index (0x307)
	}, ; 646
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 725; uint32_t java_name_index (0x2d5)
	}, ; 647
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 861; uint32_t java_name_index (0x35d)
	}, ; 648
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 137; uint32_t java_name_index (0x89)
	}, ; 649
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 633; uint32_t java_name_index (0x279)
	}, ; 650
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 784; uint32_t java_name_index (0x310)
	}, ; 651
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555243, ; uint32_t type_token_id (0x200032b)
		i32 547; uint32_t java_name_index (0x223)
	}, ; 652
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554902, ; uint32_t type_token_id (0x20001d6)
		i32 392; uint32_t java_name_index (0x188)
	}, ; 653
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 388; uint32_t java_name_index (0x184)
	}, ; 654
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 1043; uint32_t java_name_index (0x413)
	}, ; 655
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 428; uint32_t java_name_index (0x1ac)
	}, ; 656
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 50; uint32_t java_name_index (0x32)
	}, ; 657
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555048, ; uint32_t type_token_id (0x2000268)
		i32 771; uint32_t java_name_index (0x303)
	}, ; 658
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 265; uint32_t java_name_index (0x109)
	}, ; 659
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 828; uint32_t java_name_index (0x33c)
	}, ; 660
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554878, ; uint32_t type_token_id (0x20001be)
		i32 380; uint32_t java_name_index (0x17c)
	}, ; 661
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 611; uint32_t java_name_index (0x263)
	}, ; 662
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 571; uint32_t java_name_index (0x23b)
	}, ; 663
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 245; uint32_t java_name_index (0xf5)
	}, ; 664
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 171; uint32_t java_name_index (0xab)
	}, ; 665
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 565; uint32_t java_name_index (0x235)
	}, ; 666
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 694; uint32_t java_name_index (0x2b6)
	}, ; 667
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 590; uint32_t java_name_index (0x24e)
	}, ; 668
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 1032; uint32_t java_name_index (0x408)
	}, ; 669
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 130; uint32_t java_name_index (0x82)
	}, ; 670
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 597; uint32_t java_name_index (0x255)
	}, ; 671
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 709; uint32_t java_name_index (0x2c5)
	}, ; 672
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 693; uint32_t java_name_index (0x2b5)
	}, ; 673
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 685; uint32_t java_name_index (0x2ad)
	}, ; 674
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 845; uint32_t java_name_index (0x34d)
	}, ; 675
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 747; uint32_t java_name_index (0x2eb)
	}, ; 676
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 636; uint32_t java_name_index (0x27c)
	}, ; 677
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 263; uint32_t java_name_index (0x107)
	}, ; 678
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555433, ; uint32_t type_token_id (0x20003e9)
		i32 676; uint32_t java_name_index (0x2a4)
	}, ; 679
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 224; uint32_t java_name_index (0xe0)
	}, ; 680
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 785; uint32_t java_name_index (0x311)
	}, ; 681
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 291; uint32_t java_name_index (0x123)
	}, ; 682
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555049, ; uint32_t type_token_id (0x2000269)
		i32 465; uint32_t java_name_index (0x1d1)
	}, ; 683
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 259; uint32_t java_name_index (0x103)
	}, ; 684
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1071; uint32_t java_name_index (0x42f)
	}, ; 685
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554980, ; uint32_t type_token_id (0x2000224)
		i32 434; uint32_t java_name_index (0x1b2)
	}, ; 686
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 278; uint32_t java_name_index (0x116)
	}, ; 687
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554976, ; uint32_t type_token_id (0x2000220)
		i32 824; uint32_t java_name_index (0x338)
	}, ; 688
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 452; uint32_t java_name_index (0x1c4)
	}, ; 689
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554733, ; uint32_t type_token_id (0x200012d)
		i32 294; uint32_t java_name_index (0x126)
	}, ; 690
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 958; uint32_t java_name_index (0x3be)
	}, ; 691
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 285; uint32_t java_name_index (0x11d)
	}, ; 692
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 95; uint32_t java_name_index (0x5f)
	}, ; 693
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 1060; uint32_t java_name_index (0x424)
	}, ; 694
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 552; uint32_t java_name_index (0x228)
	}, ; 695
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555183, ; uint32_t type_token_id (0x20002ef)
		i32 817; uint32_t java_name_index (0x331)
	}, ; 696
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 541; uint32_t java_name_index (0x21d)
	}, ; 697
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 443; uint32_t java_name_index (0x1bb)
	}, ; 698
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 710; uint32_t java_name_index (0x2c6)
	}, ; 699
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 64; uint32_t java_name_index (0x40)
	}, ; 700
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 986; uint32_t java_name_index (0x3da)
	}, ; 701
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 306; uint32_t java_name_index (0x132)
	}, ; 702
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 654; uint32_t java_name_index (0x28e)
	}, ; 703
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 582; uint32_t java_name_index (0x246)
	}, ; 704
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 548; uint32_t java_name_index (0x224)
	}, ; 705
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1058; uint32_t java_name_index (0x422)
	}, ; 706
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 832; uint32_t java_name_index (0x340)
	}, ; 707
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 341; uint32_t java_name_index (0x155)
	}, ; 708
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 793; uint32_t java_name_index (0x319)
	}, ; 709
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 82; uint32_t java_name_index (0x52)
	}, ; 710
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554816, ; uint32_t type_token_id (0x2000180)
		i32 344; uint32_t java_name_index (0x158)
	}, ; 711
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 907; uint32_t java_name_index (0x38b)
	}, ; 712
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 786; uint32_t java_name_index (0x312)
	}, ; 713
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 1041; uint32_t java_name_index (0x411)
	}, ; 714
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554937, ; uint32_t type_token_id (0x20001f9)
		i32 411; uint32_t java_name_index (0x19b)
	}, ; 715
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 947; uint32_t java_name_index (0x3b3)
	}, ; 716
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 97; uint32_t java_name_index (0x61)
	}, ; 717
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 98; uint32_t java_name_index (0x62)
	}, ; 718
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555011, ; uint32_t type_token_id (0x2000243)
		i32 453; uint32_t java_name_index (0x1c5)
	}, ; 719
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555064, ; uint32_t type_token_id (0x2000278)
		i32 473; uint32_t java_name_index (0x1d9)
	}, ; 720
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555265, ; uint32_t type_token_id (0x2000341)
		i32 905; uint32_t java_name_index (0x389)
	}, ; 721
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 715; uint32_t java_name_index (0x2cb)
	}, ; 722
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 873; uint32_t java_name_index (0x369)
	}, ; 723
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554928, ; uint32_t type_token_id (0x20001f0)
		i32 405; uint32_t java_name_index (0x195)
	}, ; 724
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 662; uint32_t java_name_index (0x296)
	}, ; 725
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555314, ; uint32_t type_token_id (0x2000372)
		i32 592; uint32_t java_name_index (0x250)
	}, ; 726
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555426, ; uint32_t type_token_id (0x20003e2)
		i32 670; uint32_t java_name_index (0x29e)
	}, ; 727
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555793, ; uint32_t type_token_id (0x2000551)
		i32 900; uint32_t java_name_index (0x384)
	}, ; 728
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 44; uint32_t java_name_index (0x2c)
	}, ; 729
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 425; uint32_t java_name_index (0x1a9)
	}, ; 730
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 327; uint32_t java_name_index (0x147)
	}, ; 731
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 851; uint32_t java_name_index (0x353)
	}, ; 732
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 567; uint32_t java_name_index (0x237)
	}, ; 733
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 505; uint32_t java_name_index (0x1f9)
	}, ; 734
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554957, ; uint32_t type_token_id (0x200020d)
		i32 421; uint32_t java_name_index (0x1a5)
	}, ; 735
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 293; uint32_t java_name_index (0x125)
	}, ; 736
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 1015; uint32_t java_name_index (0x3f7)
	}, ; 737
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 839; uint32_t java_name_index (0x347)
	}, ; 738
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555404, ; uint32_t type_token_id (0x20003cc)
		i32 653; uint32_t java_name_index (0x28d)
	}, ; 739
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 942; uint32_t java_name_index (0x3ae)
	}, ; 740
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 48; uint32_t java_name_index (0x30)
	}, ; 741
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 270; uint32_t java_name_index (0x10e)
	}, ; 742
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 427; uint32_t java_name_index (0x1ab)
	}, ; 743
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 1022; uint32_t java_name_index (0x3fe)
	}, ; 744
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 195; uint32_t java_name_index (0xc3)
	}, ; 745
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 5; uint32_t java_name_index (0x5)
	}, ; 746
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555347, ; uint32_t type_token_id (0x2000393)
		i32 612; uint32_t java_name_index (0x264)
	}, ; 747
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 491; uint32_t java_name_index (0x1eb)
	}, ; 748
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555448, ; uint32_t type_token_id (0x20003f8)
		i32 677; uint32_t java_name_index (0x2a5)
	}, ; 749
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554806, ; uint32_t type_token_id (0x2000176)
		i32 337; uint32_t java_name_index (0x151)
	}, ; 750
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 948; uint32_t java_name_index (0x3b4)
	}, ; 751
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 193; uint32_t java_name_index (0xc1)
	}, ; 752
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 737; uint32_t java_name_index (0x2e1)
	}, ; 753
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 720; uint32_t java_name_index (0x2d0)
	}, ; 754
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 951; uint32_t java_name_index (0x3b7)
	}, ; 755
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 766; uint32_t java_name_index (0x2fe)
	}, ; 756
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 961; uint32_t java_name_index (0x3c1)
	}, ; 757
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 868; uint32_t java_name_index (0x364)
	}, ; 758
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 877; uint32_t java_name_index (0x36d)
	}, ; 759
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 1023; uint32_t java_name_index (0x3ff)
	}, ; 760
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 969; uint32_t java_name_index (0x3c9)
	}, ; 761
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 14; uint32_t java_name_index (0xe)
	}, ; 762
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 686; uint32_t java_name_index (0x2ae)
	}, ; 763
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555849, ; uint32_t type_token_id (0x2000589)
		i32 983; uint32_t java_name_index (0x3d7)
	}, ; 764
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 881; uint32_t java_name_index (0x371)
	}, ; 765
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 312; uint32_t java_name_index (0x138)
	}, ; 766
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 939; uint32_t java_name_index (0x3ab)
	}, ; 767
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555390, ; uint32_t type_token_id (0x20003be)
		i32 642; uint32_t java_name_index (0x282)
	}, ; 768
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 36; uint32_t java_name_index (0x24)
	}, ; 769
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 482; uint32_t java_name_index (0x1e2)
	}, ; 770
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 100; uint32_t java_name_index (0x64)
	}, ; 771
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 736; uint32_t java_name_index (0x2e0)
	}, ; 772
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 205; uint32_t java_name_index (0xcd)
	}, ; 773
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 606; uint32_t java_name_index (0x25e)
	}, ; 774
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 989; uint32_t java_name_index (0x3dd)
	}, ; 775
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 79; uint32_t java_name_index (0x4f)
	}, ; 776
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 906; uint32_t java_name_index (0x38a)
	}, ; 777
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 975; uint32_t java_name_index (0x3cf)
	}, ; 778
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554734, ; uint32_t type_token_id (0x200012e)
		i32 295; uint32_t java_name_index (0x127)
	}, ; 779
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 119; uint32_t java_name_index (0x77)
	}, ; 780
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 1029; uint32_t java_name_index (0x405)
	}, ; 781
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 342; uint32_t java_name_index (0x156)
	}, ; 782
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554722, ; uint32_t type_token_id (0x2000122)
		i32 288; uint32_t java_name_index (0x120)
	}, ; 783
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 43; uint32_t java_name_index (0x2b)
	}, ; 784
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 921; uint32_t java_name_index (0x399)
	}, ; 785
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 992; uint32_t java_name_index (0x3e0)
	}, ; 786
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 930; uint32_t java_name_index (0x3a2)
	}, ; 787
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554989, ; uint32_t type_token_id (0x200022d)
		i32 441; uint32_t java_name_index (0x1b9)
	}, ; 788
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 749; uint32_t java_name_index (0x2ed)
	}, ; 789
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 894; uint32_t java_name_index (0x37e)
	}, ; 790
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555097, ; uint32_t type_token_id (0x2000299)
		i32 809; uint32_t java_name_index (0x329)
	}, ; 791
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 42; uint32_t java_name_index (0x2a)
	}, ; 792
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 436; uint32_t java_name_index (0x1b4)
	}, ; 793
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 37; uint32_t java_name_index (0x25)
	}, ; 794
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 941; uint32_t java_name_index (0x3ad)
	}, ; 795
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 938; uint32_t java_name_index (0x3aa)
	}, ; 796
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 377; uint32_t java_name_index (0x179)
	}, ; 797
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 1059; uint32_t java_name_index (0x423)
	}, ; 798
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 1069; uint32_t java_name_index (0x42d)
	}, ; 799
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1065; uint32_t java_name_index (0x429)
	}, ; 800
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1072; uint32_t java_name_index (0x430)
	}, ; 801
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 30; uint32_t java_name_index (0x1e)
	}, ; 802
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555317, ; uint32_t type_token_id (0x2000375)
		i32 594; uint32_t java_name_index (0x252)
	}, ; 803
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 350; uint32_t java_name_index (0x15e)
	}, ; 804
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555210, ; uint32_t type_token_id (0x200030a)
		i32 521; uint32_t java_name_index (0x209)
	}, ; 805
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555094, ; uint32_t type_token_id (0x2000296)
		i32 475; uint32_t java_name_index (0x1db)
	}, ; 806
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 1049; uint32_t java_name_index (0x419)
	}, ; 807
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 406; uint32_t java_name_index (0x196)
	}, ; 808
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 949; uint32_t java_name_index (0x3b5)
	}, ; 809
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 179; uint32_t java_name_index (0xb3)
	}, ; 810
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 513; uint32_t java_name_index (0x201)
	}, ; 811
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1038; uint32_t java_name_index (0x40e)
	}, ; 812
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554787, ; uint32_t type_token_id (0x2000163)
		i32 324; uint32_t java_name_index (0x144)
	}, ; 813
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 103; uint32_t java_name_index (0x67)
	}, ; 814
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555262, ; uint32_t type_token_id (0x200033e)
		i32 560; uint32_t java_name_index (0x230)
	}, ; 815
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 275; uint32_t java_name_index (0x113)
	}, ; 816
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554975, ; uint32_t type_token_id (0x200021f)
		i32 430; uint32_t java_name_index (0x1ae)
	}, ; 817
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 354; uint32_t java_name_index (0x162)
	}, ; 818
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 429; uint32_t java_name_index (0x1ad)
	}, ; 819
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 181; uint32_t java_name_index (0xb5)
	}, ; 820
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 837; uint32_t java_name_index (0x345)
	}, ; 821
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 17; uint32_t java_name_index (0x11)
	}, ; 822
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 855; uint32_t java_name_index (0x357)
	}, ; 823
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 916; uint32_t java_name_index (0x394)
	}, ; 824
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 822; uint32_t java_name_index (0x336)
	}, ; 825
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 10; uint32_t java_name_index (0xa)
	}, ; 826
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 128; uint32_t java_name_index (0x80)
	}, ; 827
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 507; uint32_t java_name_index (0x1fb)
	}, ; 828
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555015, ; uint32_t type_token_id (0x2000247)
		i32 455; uint32_t java_name_index (0x1c7)
	}, ; 829
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 420; uint32_t java_name_index (0x1a4)
	}, ; 830
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 58; uint32_t java_name_index (0x3a)
	}, ; 831
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 953; uint32_t java_name_index (0x3b9)
	}, ; 832
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555054, ; uint32_t type_token_id (0x200026e)
		i32 466; uint32_t java_name_index (0x1d2)
	}, ; 833
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 535; uint32_t java_name_index (0x217)
	}, ; 834
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 732; uint32_t java_name_index (0x2dc)
	}, ; 835
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 226; uint32_t java_name_index (0xe2)
	}, ; 836
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 746; uint32_t java_name_index (0x2ea)
	}, ; 837
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 169; uint32_t java_name_index (0xa9)
	}, ; 838
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 34; uint32_t java_name_index (0x22)
	}, ; 839
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 131; uint32_t java_name_index (0x83)
	}, ; 840
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 623; uint32_t java_name_index (0x26f)
	}, ; 841
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 857; uint32_t java_name_index (0x359)
	}, ; 842
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 680; uint32_t java_name_index (0x2a8)
	}, ; 843
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 1013; uint32_t java_name_index (0x3f5)
	}, ; 844
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 840; uint32_t java_name_index (0x348)
	}, ; 845
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555948, ; uint32_t type_token_id (0x20005ec)
		i32 984; uint32_t java_name_index (0x3d8)
	}, ; 846
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 511; uint32_t java_name_index (0x1ff)
	}, ; 847
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 510; uint32_t java_name_index (0x1fe)
	}, ; 848
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 934; uint32_t java_name_index (0x3a6)
	}, ; 849
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 556; uint32_t java_name_index (0x22c)
	}, ; 850
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 769; uint32_t java_name_index (0x301)
	}, ; 851
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 684; uint32_t java_name_index (0x2ac)
	}, ; 852
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 679; uint32_t java_name_index (0x2a7)
	}, ; 853
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 301; uint32_t java_name_index (0x12d)
	}, ; 854
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 689; uint32_t java_name_index (0x2b1)
	}, ; 855
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 449; uint32_t java_name_index (0x1c1)
	}, ; 856
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554986, ; uint32_t type_token_id (0x200022a)
		i32 438; uint32_t java_name_index (0x1b6)
	}, ; 857
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 223; uint32_t java_name_index (0xdf)
	}, ; 858
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 93; uint32_t java_name_index (0x5d)
	}, ; 859
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 456; uint32_t java_name_index (0x1c8)
	}, ; 860
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 138; uint32_t java_name_index (0x8a)
	}, ; 861
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555420, ; uint32_t type_token_id (0x20003dc)
		i32 665; uint32_t java_name_index (0x299)
	}, ; 862
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 581; uint32_t java_name_index (0x245)
	}, ; 863
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 1025; uint32_t java_name_index (0x401)
	}, ; 864
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 772; uint32_t java_name_index (0x304)
	}, ; 865
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 489; uint32_t java_name_index (0x1e9)
	}, ; 866
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 699; uint32_t java_name_index (0x2bb)
	}, ; 867
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 55; uint32_t java_name_index (0x37)
	}, ; 868
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 993; uint32_t java_name_index (0x3e1)
	}, ; 869
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 932; uint32_t java_name_index (0x3a4)
	}, ; 870
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 1033; uint32_t java_name_index (0x409)
	}, ; 871
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 517; uint32_t java_name_index (0x205)
	}, ; 872
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 955; uint32_t java_name_index (0x3bb)
	}, ; 873
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 954; uint32_t java_name_index (0x3ba)
	}, ; 874
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555019, ; uint32_t type_token_id (0x200024b)
		i32 457; uint32_t java_name_index (0x1c9)
	}, ; 875
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 143; uint32_t java_name_index (0x8f)
	}, ; 876
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 603; uint32_t java_name_index (0x25b)
	}, ; 877
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555372, ; uint32_t type_token_id (0x20003ac)
		i32 630; uint32_t java_name_index (0x276)
	}, ; 878
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 733; uint32_t java_name_index (0x2dd)
	}, ; 879
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 328; uint32_t java_name_index (0x148)
	}, ; 880
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 516; uint32_t java_name_index (0x204)
	}, ; 881
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 139; uint32_t java_name_index (0x8b)
	}, ; 882
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 308; uint32_t java_name_index (0x134)
	}, ; 883
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 950; uint32_t java_name_index (0x3b6)
	}, ; 884
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554735, ; uint32_t type_token_id (0x200012f)
		i32 296; uint32_t java_name_index (0x128)
	}, ; 885
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 727; uint32_t java_name_index (0x2d7)
	}, ; 886
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 1064; uint32_t java_name_index (0x428)
	}, ; 887
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 158; uint32_t java_name_index (0x9e)
	}, ; 888
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555159, ; uint32_t type_token_id (0x20002d7)
		i32 496; uint32_t java_name_index (0x1f0)
	}, ; 889
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 917; uint32_t java_name_index (0x395)
	}, ; 890
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 235; uint32_t java_name_index (0xeb)
	}, ; 891
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 46; uint32_t java_name_index (0x2e)
	}, ; 892
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 931; uint32_t java_name_index (0x3a3)
	}, ; 893
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 869; uint32_t java_name_index (0x365)
	}, ; 894
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 347; uint32_t java_name_index (0x15b)
	}, ; 895
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 75; uint32_t java_name_index (0x4b)
	}, ; 896
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 1027; uint32_t java_name_index (0x403)
	}, ; 897
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1028; uint32_t java_name_index (0x404)
	}, ; 898
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 182; uint32_t java_name_index (0xb6)
	}, ; 899
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 538; uint32_t java_name_index (0x21a)
	}, ; 900
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 11; uint32_t java_name_index (0xb)
	}, ; 901
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 186; uint32_t java_name_index (0xba)
	}, ; 902
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555949, ; uint32_t type_token_id (0x20005ed)
		i32 985; uint32_t java_name_index (0x3d9)
	}, ; 903
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 965; uint32_t java_name_index (0x3c5)
	}, ; 904
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554977, ; uint32_t type_token_id (0x2000221)
		i32 432; uint32_t java_name_index (0x1b0)
	}, ; 905
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555427, ; uint32_t type_token_id (0x20003e3)
		i32 671; uint32_t java_name_index (0x29f)
	}, ; 906
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 844; uint32_t java_name_index (0x34c)
	}, ; 907
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 834; uint32_t java_name_index (0x342)
	}, ; 908
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 621; uint32_t java_name_index (0x26d)
	}, ; 909
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555111, ; uint32_t type_token_id (0x20002a7)
		i32 485; uint32_t java_name_index (0x1e5)
	}, ; 910
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 215; uint32_t java_name_index (0xd7)
	}, ; 911
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 761; uint32_t java_name_index (0x2f9)
	}, ; 912
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 57; uint32_t java_name_index (0x39)
	}, ; 913
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555158, ; uint32_t type_token_id (0x20002d6)
		i32 495; uint32_t java_name_index (0x1ef)
	}, ; 914
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554932, ; uint32_t type_token_id (0x20001f4)
		i32 407; uint32_t java_name_index (0x197)
	}, ; 915
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 88; uint32_t java_name_index (0x58)
	}, ; 916
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 62; uint32_t java_name_index (0x3e)
	}, ; 917
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 313; uint32_t java_name_index (0x139)
	}, ; 918
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555208, ; uint32_t type_token_id (0x2000308)
		i32 519; uint32_t java_name_index (0x207)
	}, ; 919
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555400, ; uint32_t type_token_id (0x20003c8)
		i32 650; uint32_t java_name_index (0x28a)
	}, ; 920
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 208; uint32_t java_name_index (0xd0)
	}, ; 921
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554796, ; uint32_t type_token_id (0x200016c)
		i32 329; uint32_t java_name_index (0x149)
	}, ; 922
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 345; uint32_t java_name_index (0x159)
	}, ; 923
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 305; uint32_t java_name_index (0x131)
	}, ; 924
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 222; uint32_t java_name_index (0xde)
	}, ; 925
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554811, ; uint32_t type_token_id (0x200017b)
		i32 340; uint32_t java_name_index (0x154)
	}, ; 926
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 924; uint32_t java_name_index (0x39c)
	}, ; 927
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 622; uint32_t java_name_index (0x26e)
	}, ; 928
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554719, ; uint32_t type_token_id (0x200011f)
		i32 286; uint32_t java_name_index (0x11e)
	}, ; 929
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 334; uint32_t java_name_index (0x14e)
	}, ; 930
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555185, ; uint32_t type_token_id (0x20002f1)
		i32 500; uint32_t java_name_index (0x1f4)
	}, ; 931
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 29; uint32_t java_name_index (0x1d)
	}, ; 932
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 60; uint32_t java_name_index (0x3c)
	}, ; 933
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555058, ; uint32_t type_token_id (0x2000272)
		i32 469; uint32_t java_name_index (0x1d5)
	}, ; 934
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 742; uint32_t java_name_index (0x2e6)
	}, ; 935
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 757; uint32_t java_name_index (0x2f5)
	}, ; 936
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 203; uint32_t java_name_index (0xcb)
	}, ; 937
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555309, ; uint32_t type_token_id (0x200036d)
		i32 589; uint32_t java_name_index (0x24d)
	}, ; 938
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 363; uint32_t java_name_index (0x16b)
	}, ; 939
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 912; uint32_t java_name_index (0x390)
	}, ; 940
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 279; uint32_t java_name_index (0x117)
	}, ; 941
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 39; uint32_t java_name_index (0x27)
	}, ; 942
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 190; uint32_t java_name_index (0xbe)
	}, ; 943
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 126; uint32_t java_name_index (0x7e)
	}, ; 944
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 522; uint32_t java_name_index (0x20a)
	}, ; 945
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 192; uint32_t java_name_index (0xc0)
	}, ; 946
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 76; uint32_t java_name_index (0x4c)
	}, ; 947
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 1062; uint32_t java_name_index (0x426)
	}, ; 948
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 996; uint32_t java_name_index (0x3e4)
	}, ; 949
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 586; uint32_t java_name_index (0x24a)
	}, ; 950
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 778; uint32_t java_name_index (0x30a)
	}, ; 951
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555105, ; uint32_t type_token_id (0x20002a1)
		i32 481; uint32_t java_name_index (0x1e1)
	}, ; 952
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 122; uint32_t java_name_index (0x7a)
	}, ; 953
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 509; uint32_t java_name_index (0x1fd)
	}, ; 954
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 647; uint32_t java_name_index (0x287)
	}, ; 955
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 290; uint32_t java_name_index (0x122)
	}, ; 956
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 300; uint32_t java_name_index (0x12c)
	}, ; 957
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 163; uint32_t java_name_index (0xa3)
	}, ; 958
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 706; uint32_t java_name_index (0x2c2)
	}, ; 959
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 264; uint32_t java_name_index (0x108)
	}, ; 960
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 536; uint32_t java_name_index (0x218)
	}, ; 961
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 635; uint32_t java_name_index (0x27b)
	}, ; 962
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 304; uint32_t java_name_index (0x130)
	}, ; 963
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 284; uint32_t java_name_index (0x11c)
	}, ; 964
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 935; uint32_t java_name_index (0x3a7)
	}, ; 965
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555351, ; uint32_t type_token_id (0x2000397)
		i32 614; uint32_t java_name_index (0x266)
	}, ; 966
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 22; uint32_t java_name_index (0x16)
	}, ; 967
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 416; uint32_t java_name_index (0x1a0)
	}, ; 968
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 118; uint32_t java_name_index (0x76)
	}, ; 969
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 999; uint32_t java_name_index (0x3e7)
	}, ; 970
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 339; uint32_t java_name_index (0x153)
	}, ; 971
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 401; uint32_t java_name_index (0x191)
	}, ; 972
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 568; uint32_t java_name_index (0x238)
	}, ; 973
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 530; uint32_t java_name_index (0x212)
	}, ; 974
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555778, ; uint32_t type_token_id (0x2000542)
		i32 884; uint32_t java_name_index (0x374)
	}, ; 975
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 1042; uint32_t java_name_index (0x412)
	}, ; 976
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 532; uint32_t java_name_index (0x214)
	}, ; 977
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 596; uint32_t java_name_index (0x254)
	}, ; 978
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 889; uint32_t java_name_index (0x379)
	}, ; 979
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 807; uint32_t java_name_index (0x327)
	}, ; 980
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 96; uint32_t java_name_index (0x60)
	}, ; 981
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 214; uint32_t java_name_index (0xd6)
	}, ; 982
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 713; uint32_t java_name_index (0x2c9)
	}, ; 983
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555140, ; uint32_t type_token_id (0x20002c4)
		i32 490; uint32_t java_name_index (0x1ea)
	}, ; 984
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 504; uint32_t java_name_index (0x1f8)
	}, ; 985
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 231; uint32_t java_name_index (0xe7)
	}, ; 986
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 204; uint32_t java_name_index (0xcc)
	}, ; 987
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 937; uint32_t java_name_index (0x3a9)
	}, ; 988
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 213; uint32_t java_name_index (0xd5)
	}, ; 989
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 564; uint32_t java_name_index (0x234)
	}, ; 990
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 508; uint32_t java_name_index (0x1fc)
	}, ; 991
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 108; uint32_t java_name_index (0x6c)
	}, ; 992
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33555102, ; uint32_t type_token_id (0x200029e)
		i32 813; uint32_t java_name_index (0x32d)
	}, ; 993
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 652; uint32_t java_name_index (0x28c)
	}, ; 994
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555238, ; uint32_t type_token_id (0x2000326)
		i32 543; uint32_t java_name_index (0x21f)
	}, ; 995
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555250, ; uint32_t type_token_id (0x2000332)
		i32 553; uint32_t java_name_index (0x229)
	}, ; 996
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 731; uint32_t java_name_index (0x2db)
	}, ; 997
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 261; uint32_t java_name_index (0x105)
	}, ; 998
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554893, ; uint32_t type_token_id (0x20001cd)
		i32 390; uint32_t java_name_index (0x186)
	}, ; 999
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 483; uint32_t java_name_index (0x1e3)
	}, ; 1000
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 788; uint32_t java_name_index (0x314)
	}, ; 1001
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 448; uint32_t java_name_index (0x1c0)
	}, ; 1002
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554803, ; uint32_t type_token_id (0x2000173)
		i32 335; uint32_t java_name_index (0x14f)
	}, ; 1003
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 550; uint32_t java_name_index (0x226)
	}, ; 1004
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 833; uint32_t java_name_index (0x341)
	}, ; 1005
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555525, ; uint32_t type_token_id (0x2000445)
		i32 878; uint32_t java_name_index (0x36e)
	}, ; 1006
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 563; uint32_t java_name_index (0x233)
	}, ; 1007
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554938, ; uint32_t type_token_id (0x20001fa)
		i32 412; uint32_t java_name_index (0x19c)
	}, ; 1008
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555063, ; uint32_t type_token_id (0x2000277)
		i32 472; uint32_t java_name_index (0x1d8)
	}, ; 1009
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 982; uint32_t java_name_index (0x3d6)
	}, ; 1010
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 297; uint32_t java_name_index (0x129)
	}, ; 1011
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 106; uint32_t java_name_index (0x6a)
	}, ; 1012
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 1003; uint32_t java_name_index (0x3eb)
	}, ; 1013
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555023, ; uint32_t type_token_id (0x200024f)
		i32 459; uint32_t java_name_index (0x1cb)
	}, ; 1014
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 641; uint32_t java_name_index (0x281)
	}, ; 1015
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 200; uint32_t java_name_index (0xc8)
	}, ; 1016
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 753; uint32_t java_name_index (0x2f1)
	}, ; 1017
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 794; uint32_t java_name_index (0x31a)
	}, ; 1018
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554999, ; uint32_t type_token_id (0x2000237)
		i32 447; uint32_t java_name_index (0x1bf)
	}, ; 1019
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 721; uint32_t java_name_index (0x2d1)
	}, ; 1020
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555391, ; uint32_t type_token_id (0x20003bf)
		i32 643; uint32_t java_name_index (0x283)
	}, ; 1021
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 3; uint32_t java_name_index (0x3)
	}, ; 1022
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555781, ; uint32_t type_token_id (0x2000545)
		i32 887; uint32_t java_name_index (0x377)
	}, ; 1023
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 319; uint32_t java_name_index (0x13f)
	}, ; 1024
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 24; uint32_t java_name_index (0x18)
	}, ; 1025
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 798; uint32_t java_name_index (0x31e)
	}, ; 1026
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 71; uint32_t java_name_index (0x47)
	}, ; 1027
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 763; uint32_t java_name_index (0x2fb)
	}, ; 1028
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 7; uint32_t java_name_index (0x7)
	}, ; 1029
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 355; uint32_t java_name_index (0x163)
	}, ; 1030
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 241; uint32_t java_name_index (0xf1)
	}, ; 1031
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 967; uint32_t java_name_index (0x3c7)
	}, ; 1032
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 141; uint32_t java_name_index (0x8d)
	}, ; 1033
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 114; uint32_t java_name_index (0x72)
	}, ; 1034
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 595; uint32_t java_name_index (0x253)
	}, ; 1035
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 27; uint32_t java_name_index (0x1b)
	}, ; 1036
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 1050; uint32_t java_name_index (0x41a)
	}, ; 1037
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 804; uint32_t java_name_index (0x324)
	}, ; 1038
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 692; uint32_t java_name_index (0x2b4)
	}, ; 1039
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 232; uint32_t java_name_index (0xe8)
	}, ; 1040
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 637; uint32_t java_name_index (0x27d)
	}, ; 1041
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 309; uint32_t java_name_index (0x135)
	}, ; 1042
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 67; uint32_t java_name_index (0x43)
	}, ; 1043
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 188; uint32_t java_name_index (0xbc)
	}, ; 1044
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 1017; uint32_t java_name_index (0x3f9)
	}, ; 1045
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555263, ; uint32_t type_token_id (0x200033f)
		i32 904; uint32_t java_name_index (0x388)
	}, ; 1046
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 533; uint32_t java_name_index (0x215)
	}, ; 1047
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555186, ; uint32_t type_token_id (0x20002f2)
		i32 501; uint32_t java_name_index (0x1f5)
	}, ; 1048
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 145; uint32_t java_name_index (0x91)
	}, ; 1049
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 146; uint32_t java_name_index (0x92)
	}, ; 1050
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 437; uint32_t java_name_index (0x1b5)
	}, ; 1051
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 849; uint32_t java_name_index (0x351)
	}, ; 1052
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 330; uint32_t java_name_index (0x14a)
	}, ; 1053
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 744; uint32_t java_name_index (0x2e8)
	}, ; 1054
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555160, ; uint32_t type_token_id (0x20002d8)
		i32 497; uint32_t java_name_index (0x1f1)
	}, ; 1055
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 468; uint32_t java_name_index (0x1d4)
	}, ; 1056
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 353; uint32_t java_name_index (0x161)
	}, ; 1057
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 419; uint32_t java_name_index (0x1a3)
	}, ; 1058
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 417; uint32_t java_name_index (0x1a1)
	}, ; 1059
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554783, ; uint32_t type_token_id (0x200015f)
		i32 321; uint32_t java_name_index (0x141)
	}, ; 1060
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 800; uint32_t java_name_index (0x320)
	}, ; 1061
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 1006; uint32_t java_name_index (0x3ee)
	}, ; 1062
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 526; uint32_t java_name_index (0x20e)
	}, ; 1063
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 91; uint32_t java_name_index (0x5b)
	}, ; 1064
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 745; uint32_t java_name_index (0x2e9)
	}, ; 1065
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 890; uint32_t java_name_index (0x37a)
	}, ; 1066
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554845, ; uint32_t type_token_id (0x200019d)
		i32 364; uint32_t java_name_index (0x16c)
	}, ; 1067
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 634; uint32_t java_name_index (0x27a)
	}, ; 1068
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 249; uint32_t java_name_index (0xf9)
	}, ; 1069
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 774; uint32_t java_name_index (0x306)
	}, ; 1070
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 751; uint32_t java_name_index (0x2ef)
	}, ; 1071
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 147; uint32_t java_name_index (0x93)
	} ; 1072
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [1073 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109, ; 109
	ptr @.str.110, ; 110
	ptr @.str.111, ; 111
	ptr @.str.112, ; 112
	ptr @.str.113, ; 113
	ptr @.str.114, ; 114
	ptr @.str.115, ; 115
	ptr @.str.116, ; 116
	ptr @.str.117, ; 117
	ptr @.str.118, ; 118
	ptr @.str.119, ; 119
	ptr @.str.120, ; 120
	ptr @.str.121, ; 121
	ptr @.str.122, ; 122
	ptr @.str.123, ; 123
	ptr @.str.124, ; 124
	ptr @.str.125, ; 125
	ptr @.str.126, ; 126
	ptr @.str.127, ; 127
	ptr @.str.128, ; 128
	ptr @.str.129, ; 129
	ptr @.str.130, ; 130
	ptr @.str.131, ; 131
	ptr @.str.132, ; 132
	ptr @.str.133, ; 133
	ptr @.str.134, ; 134
	ptr @.str.135, ; 135
	ptr @.str.136, ; 136
	ptr @.str.137, ; 137
	ptr @.str.138, ; 138
	ptr @.str.139, ; 139
	ptr @.str.140, ; 140
	ptr @.str.141, ; 141
	ptr @.str.142, ; 142
	ptr @.str.143, ; 143
	ptr @.str.144, ; 144
	ptr @.str.145, ; 145
	ptr @.str.146, ; 146
	ptr @.str.147, ; 147
	ptr @.str.148, ; 148
	ptr @.str.149, ; 149
	ptr @.str.150, ; 150
	ptr @.str.151, ; 151
	ptr @.str.152, ; 152
	ptr @.str.153, ; 153
	ptr @.str.154, ; 154
	ptr @.str.155, ; 155
	ptr @.str.156, ; 156
	ptr @.str.157, ; 157
	ptr @.str.158, ; 158
	ptr @.str.159, ; 159
	ptr @.str.160, ; 160
	ptr @.str.161, ; 161
	ptr @.str.162, ; 162
	ptr @.str.163, ; 163
	ptr @.str.164, ; 164
	ptr @.str.165, ; 165
	ptr @.str.166, ; 166
	ptr @.str.167, ; 167
	ptr @.str.168, ; 168
	ptr @.str.169, ; 169
	ptr @.str.170, ; 170
	ptr @.str.171, ; 171
	ptr @.str.172, ; 172
	ptr @.str.173, ; 173
	ptr @.str.174, ; 174
	ptr @.str.175, ; 175
	ptr @.str.176, ; 176
	ptr @.str.177, ; 177
	ptr @.str.178, ; 178
	ptr @.str.179, ; 179
	ptr @.str.180, ; 180
	ptr @.str.181, ; 181
	ptr @.str.182, ; 182
	ptr @.str.183, ; 183
	ptr @.str.184, ; 184
	ptr @.str.185, ; 185
	ptr @.str.186, ; 186
	ptr @.str.187, ; 187
	ptr @.str.188, ; 188
	ptr @.str.189, ; 189
	ptr @.str.190, ; 190
	ptr @.str.191, ; 191
	ptr @.str.192, ; 192
	ptr @.str.193, ; 193
	ptr @.str.194, ; 194
	ptr @.str.195, ; 195
	ptr @.str.196, ; 196
	ptr @.str.197, ; 197
	ptr @.str.198, ; 198
	ptr @.str.199, ; 199
	ptr @.str.200, ; 200
	ptr @.str.201, ; 201
	ptr @.str.202, ; 202
	ptr @.str.203, ; 203
	ptr @.str.204, ; 204
	ptr @.str.205, ; 205
	ptr @.str.206, ; 206
	ptr @.str.207, ; 207
	ptr @.str.208, ; 208
	ptr @.str.209, ; 209
	ptr @.str.210, ; 210
	ptr @.str.211, ; 211
	ptr @.str.212, ; 212
	ptr @.str.213, ; 213
	ptr @.str.214, ; 214
	ptr @.str.215, ; 215
	ptr @.str.216, ; 216
	ptr @.str.217, ; 217
	ptr @.str.218, ; 218
	ptr @.str.219, ; 219
	ptr @.str.220, ; 220
	ptr @.str.221, ; 221
	ptr @.str.222, ; 222
	ptr @.str.223, ; 223
	ptr @.str.224, ; 224
	ptr @.str.225, ; 225
	ptr @.str.226, ; 226
	ptr @.str.227, ; 227
	ptr @.str.228, ; 228
	ptr @.str.229, ; 229
	ptr @.str.230, ; 230
	ptr @.str.231, ; 231
	ptr @.str.232, ; 232
	ptr @.str.233, ; 233
	ptr @.str.234, ; 234
	ptr @.str.235, ; 235
	ptr @.str.236, ; 236
	ptr @.str.237, ; 237
	ptr @.str.238, ; 238
	ptr @.str.239, ; 239
	ptr @.str.240, ; 240
	ptr @.str.241, ; 241
	ptr @.str.242, ; 242
	ptr @.str.243, ; 243
	ptr @.str.244, ; 244
	ptr @.str.245, ; 245
	ptr @.str.246, ; 246
	ptr @.str.247, ; 247
	ptr @.str.248, ; 248
	ptr @.str.249, ; 249
	ptr @.str.250, ; 250
	ptr @.str.251, ; 251
	ptr @.str.252, ; 252
	ptr @.str.253, ; 253
	ptr @.str.254, ; 254
	ptr @.str.255, ; 255
	ptr @.str.256, ; 256
	ptr @.str.257, ; 257
	ptr @.str.258, ; 258
	ptr @.str.259, ; 259
	ptr @.str.260, ; 260
	ptr @.str.261, ; 261
	ptr @.str.262, ; 262
	ptr @.str.263, ; 263
	ptr @.str.264, ; 264
	ptr @.str.265, ; 265
	ptr @.str.266, ; 266
	ptr @.str.267, ; 267
	ptr @.str.268, ; 268
	ptr @.str.269, ; 269
	ptr @.str.270, ; 270
	ptr @.str.271, ; 271
	ptr @.str.272, ; 272
	ptr @.str.273, ; 273
	ptr @.str.274, ; 274
	ptr @.str.275, ; 275
	ptr @.str.276, ; 276
	ptr @.str.277, ; 277
	ptr @.str.278, ; 278
	ptr @.str.279, ; 279
	ptr @.str.280, ; 280
	ptr @.str.281, ; 281
	ptr @.str.282, ; 282
	ptr @.str.283, ; 283
	ptr @.str.284, ; 284
	ptr @.str.285, ; 285
	ptr @.str.286, ; 286
	ptr @.str.287, ; 287
	ptr @.str.288, ; 288
	ptr @.str.289, ; 289
	ptr @.str.290, ; 290
	ptr @.str.291, ; 291
	ptr @.str.292, ; 292
	ptr @.str.293, ; 293
	ptr @.str.294, ; 294
	ptr @.str.295, ; 295
	ptr @.str.296, ; 296
	ptr @.str.297, ; 297
	ptr @.str.298, ; 298
	ptr @.str.299, ; 299
	ptr @.str.300, ; 300
	ptr @.str.301, ; 301
	ptr @.str.302, ; 302
	ptr @.str.303, ; 303
	ptr @.str.304, ; 304
	ptr @.str.305, ; 305
	ptr @.str.306, ; 306
	ptr @.str.307, ; 307
	ptr @.str.308, ; 308
	ptr @.str.309, ; 309
	ptr @.str.310, ; 310
	ptr @.str.311, ; 311
	ptr @.str.312, ; 312
	ptr @.str.313, ; 313
	ptr @.str.314, ; 314
	ptr @.str.315, ; 315
	ptr @.str.316, ; 316
	ptr @.str.317, ; 317
	ptr @.str.318, ; 318
	ptr @.str.319, ; 319
	ptr @.str.320, ; 320
	ptr @.str.321, ; 321
	ptr @.str.322, ; 322
	ptr @.str.323, ; 323
	ptr @.str.324, ; 324
	ptr @.str.325, ; 325
	ptr @.str.326, ; 326
	ptr @.str.327, ; 327
	ptr @.str.328, ; 328
	ptr @.str.329, ; 329
	ptr @.str.330, ; 330
	ptr @.str.331, ; 331
	ptr @.str.332, ; 332
	ptr @.str.333, ; 333
	ptr @.str.334, ; 334
	ptr @.str.335, ; 335
	ptr @.str.336, ; 336
	ptr @.str.337, ; 337
	ptr @.str.338, ; 338
	ptr @.str.339, ; 339
	ptr @.str.340, ; 340
	ptr @.str.341, ; 341
	ptr @.str.342, ; 342
	ptr @.str.343, ; 343
	ptr @.str.344, ; 344
	ptr @.str.345, ; 345
	ptr @.str.346, ; 346
	ptr @.str.347, ; 347
	ptr @.str.348, ; 348
	ptr @.str.349, ; 349
	ptr @.str.350, ; 350
	ptr @.str.351, ; 351
	ptr @.str.352, ; 352
	ptr @.str.353, ; 353
	ptr @.str.354, ; 354
	ptr @.str.355, ; 355
	ptr @.str.356, ; 356
	ptr @.str.357, ; 357
	ptr @.str.358, ; 358
	ptr @.str.359, ; 359
	ptr @.str.360, ; 360
	ptr @.str.361, ; 361
	ptr @.str.362, ; 362
	ptr @.str.363, ; 363
	ptr @.str.364, ; 364
	ptr @.str.365, ; 365
	ptr @.str.366, ; 366
	ptr @.str.367, ; 367
	ptr @.str.368, ; 368
	ptr @.str.369, ; 369
	ptr @.str.370, ; 370
	ptr @.str.371, ; 371
	ptr @.str.372, ; 372
	ptr @.str.373, ; 373
	ptr @.str.374, ; 374
	ptr @.str.375, ; 375
	ptr @.str.376, ; 376
	ptr @.str.377, ; 377
	ptr @.str.378, ; 378
	ptr @.str.379, ; 379
	ptr @.str.380, ; 380
	ptr @.str.381, ; 381
	ptr @.str.382, ; 382
	ptr @.str.383, ; 383
	ptr @.str.384, ; 384
	ptr @.str.385, ; 385
	ptr @.str.386, ; 386
	ptr @.str.387, ; 387
	ptr @.str.388, ; 388
	ptr @.str.389, ; 389
	ptr @.str.390, ; 390
	ptr @.str.391, ; 391
	ptr @.str.392, ; 392
	ptr @.str.393, ; 393
	ptr @.str.394, ; 394
	ptr @.str.395, ; 395
	ptr @.str.396, ; 396
	ptr @.str.397, ; 397
	ptr @.str.398, ; 398
	ptr @.str.399, ; 399
	ptr @.str.400, ; 400
	ptr @.str.401, ; 401
	ptr @.str.402, ; 402
	ptr @.str.403, ; 403
	ptr @.str.404, ; 404
	ptr @.str.405, ; 405
	ptr @.str.406, ; 406
	ptr @.str.407, ; 407
	ptr @.str.408, ; 408
	ptr @.str.409, ; 409
	ptr @.str.410, ; 410
	ptr @.str.411, ; 411
	ptr @.str.412, ; 412
	ptr @.str.413, ; 413
	ptr @.str.414, ; 414
	ptr @.str.415, ; 415
	ptr @.str.416, ; 416
	ptr @.str.417, ; 417
	ptr @.str.418, ; 418
	ptr @.str.419, ; 419
	ptr @.str.420, ; 420
	ptr @.str.421, ; 421
	ptr @.str.422, ; 422
	ptr @.str.423, ; 423
	ptr @.str.424, ; 424
	ptr @.str.425, ; 425
	ptr @.str.426, ; 426
	ptr @.str.427, ; 427
	ptr @.str.428, ; 428
	ptr @.str.429, ; 429
	ptr @.str.430, ; 430
	ptr @.str.431, ; 431
	ptr @.str.432, ; 432
	ptr @.str.433, ; 433
	ptr @.str.434, ; 434
	ptr @.str.435, ; 435
	ptr @.str.436, ; 436
	ptr @.str.437, ; 437
	ptr @.str.438, ; 438
	ptr @.str.439, ; 439
	ptr @.str.440, ; 440
	ptr @.str.441, ; 441
	ptr @.str.442, ; 442
	ptr @.str.443, ; 443
	ptr @.str.444, ; 444
	ptr @.str.445, ; 445
	ptr @.str.446, ; 446
	ptr @.str.447, ; 447
	ptr @.str.448, ; 448
	ptr @.str.449, ; 449
	ptr @.str.450, ; 450
	ptr @.str.451, ; 451
	ptr @.str.452, ; 452
	ptr @.str.453, ; 453
	ptr @.str.454, ; 454
	ptr @.str.455, ; 455
	ptr @.str.456, ; 456
	ptr @.str.457, ; 457
	ptr @.str.458, ; 458
	ptr @.str.459, ; 459
	ptr @.str.460, ; 460
	ptr @.str.461, ; 461
	ptr @.str.462, ; 462
	ptr @.str.463, ; 463
	ptr @.str.464, ; 464
	ptr @.str.465, ; 465
	ptr @.str.466, ; 466
	ptr @.str.467, ; 467
	ptr @.str.468, ; 468
	ptr @.str.469, ; 469
	ptr @.str.470, ; 470
	ptr @.str.471, ; 471
	ptr @.str.472, ; 472
	ptr @.str.473, ; 473
	ptr @.str.474, ; 474
	ptr @.str.475, ; 475
	ptr @.str.476, ; 476
	ptr @.str.477, ; 477
	ptr @.str.478, ; 478
	ptr @.str.479, ; 479
	ptr @.str.480, ; 480
	ptr @.str.481, ; 481
	ptr @.str.482, ; 482
	ptr @.str.483, ; 483
	ptr @.str.484, ; 484
	ptr @.str.485, ; 485
	ptr @.str.486, ; 486
	ptr @.str.487, ; 487
	ptr @.str.488, ; 488
	ptr @.str.489, ; 489
	ptr @.str.490, ; 490
	ptr @.str.491, ; 491
	ptr @.str.492, ; 492
	ptr @.str.493, ; 493
	ptr @.str.494, ; 494
	ptr @.str.495, ; 495
	ptr @.str.496, ; 496
	ptr @.str.497, ; 497
	ptr @.str.498, ; 498
	ptr @.str.499, ; 499
	ptr @.str.500, ; 500
	ptr @.str.501, ; 501
	ptr @.str.502, ; 502
	ptr @.str.503, ; 503
	ptr @.str.504, ; 504
	ptr @.str.505, ; 505
	ptr @.str.506, ; 506
	ptr @.str.507, ; 507
	ptr @.str.508, ; 508
	ptr @.str.509, ; 509
	ptr @.str.510, ; 510
	ptr @.str.511, ; 511
	ptr @.str.512, ; 512
	ptr @.str.513, ; 513
	ptr @.str.514, ; 514
	ptr @.str.515, ; 515
	ptr @.str.516, ; 516
	ptr @.str.517, ; 517
	ptr @.str.518, ; 518
	ptr @.str.519, ; 519
	ptr @.str.520, ; 520
	ptr @.str.521, ; 521
	ptr @.str.522, ; 522
	ptr @.str.523, ; 523
	ptr @.str.524, ; 524
	ptr @.str.525, ; 525
	ptr @.str.526, ; 526
	ptr @.str.527, ; 527
	ptr @.str.528, ; 528
	ptr @.str.529, ; 529
	ptr @.str.530, ; 530
	ptr @.str.531, ; 531
	ptr @.str.532, ; 532
	ptr @.str.533, ; 533
	ptr @.str.534, ; 534
	ptr @.str.535, ; 535
	ptr @.str.536, ; 536
	ptr @.str.537, ; 537
	ptr @.str.538, ; 538
	ptr @.str.539, ; 539
	ptr @.str.540, ; 540
	ptr @.str.541, ; 541
	ptr @.str.542, ; 542
	ptr @.str.543, ; 543
	ptr @.str.544, ; 544
	ptr @.str.545, ; 545
	ptr @.str.546, ; 546
	ptr @.str.547, ; 547
	ptr @.str.548, ; 548
	ptr @.str.549, ; 549
	ptr @.str.550, ; 550
	ptr @.str.551, ; 551
	ptr @.str.552, ; 552
	ptr @.str.553, ; 553
	ptr @.str.554, ; 554
	ptr @.str.555, ; 555
	ptr @.str.556, ; 556
	ptr @.str.557, ; 557
	ptr @.str.558, ; 558
	ptr @.str.559, ; 559
	ptr @.str.560, ; 560
	ptr @.str.561, ; 561
	ptr @.str.562, ; 562
	ptr @.str.563, ; 563
	ptr @.str.564, ; 564
	ptr @.str.565, ; 565
	ptr @.str.566, ; 566
	ptr @.str.567, ; 567
	ptr @.str.568, ; 568
	ptr @.str.569, ; 569
	ptr @.str.570, ; 570
	ptr @.str.571, ; 571
	ptr @.str.572, ; 572
	ptr @.str.573, ; 573
	ptr @.str.574, ; 574
	ptr @.str.575, ; 575
	ptr @.str.576, ; 576
	ptr @.str.577, ; 577
	ptr @.str.578, ; 578
	ptr @.str.579, ; 579
	ptr @.str.580, ; 580
	ptr @.str.581, ; 581
	ptr @.str.582, ; 582
	ptr @.str.583, ; 583
	ptr @.str.584, ; 584
	ptr @.str.585, ; 585
	ptr @.str.586, ; 586
	ptr @.str.587, ; 587
	ptr @.str.588, ; 588
	ptr @.str.589, ; 589
	ptr @.str.590, ; 590
	ptr @.str.591, ; 591
	ptr @.str.592, ; 592
	ptr @.str.593, ; 593
	ptr @.str.594, ; 594
	ptr @.str.595, ; 595
	ptr @.str.596, ; 596
	ptr @.str.597, ; 597
	ptr @.str.598, ; 598
	ptr @.str.599, ; 599
	ptr @.str.600, ; 600
	ptr @.str.601, ; 601
	ptr @.str.602, ; 602
	ptr @.str.603, ; 603
	ptr @.str.604, ; 604
	ptr @.str.605, ; 605
	ptr @.str.606, ; 606
	ptr @.str.607, ; 607
	ptr @.str.608, ; 608
	ptr @.str.609, ; 609
	ptr @.str.610, ; 610
	ptr @.str.611, ; 611
	ptr @.str.612, ; 612
	ptr @.str.613, ; 613
	ptr @.str.614, ; 614
	ptr @.str.615, ; 615
	ptr @.str.616, ; 616
	ptr @.str.617, ; 617
	ptr @.str.618, ; 618
	ptr @.str.619, ; 619
	ptr @.str.620, ; 620
	ptr @.str.621, ; 621
	ptr @.str.622, ; 622
	ptr @.str.623, ; 623
	ptr @.str.624, ; 624
	ptr @.str.625, ; 625
	ptr @.str.626, ; 626
	ptr @.str.627, ; 627
	ptr @.str.628, ; 628
	ptr @.str.629, ; 629
	ptr @.str.630, ; 630
	ptr @.str.631, ; 631
	ptr @.str.632, ; 632
	ptr @.str.633, ; 633
	ptr @.str.634, ; 634
	ptr @.str.635, ; 635
	ptr @.str.636, ; 636
	ptr @.str.637, ; 637
	ptr @.str.638, ; 638
	ptr @.str.639, ; 639
	ptr @.str.640, ; 640
	ptr @.str.641, ; 641
	ptr @.str.642, ; 642
	ptr @.str.643, ; 643
	ptr @.str.644, ; 644
	ptr @.str.645, ; 645
	ptr @.str.646, ; 646
	ptr @.str.647, ; 647
	ptr @.str.648, ; 648
	ptr @.str.649, ; 649
	ptr @.str.650, ; 650
	ptr @.str.651, ; 651
	ptr @.str.652, ; 652
	ptr @.str.653, ; 653
	ptr @.str.654, ; 654
	ptr @.str.655, ; 655
	ptr @.str.656, ; 656
	ptr @.str.657, ; 657
	ptr @.str.658, ; 658
	ptr @.str.659, ; 659
	ptr @.str.660, ; 660
	ptr @.str.661, ; 661
	ptr @.str.662, ; 662
	ptr @.str.663, ; 663
	ptr @.str.664, ; 664
	ptr @.str.665, ; 665
	ptr @.str.666, ; 666
	ptr @.str.667, ; 667
	ptr @.str.668, ; 668
	ptr @.str.669, ; 669
	ptr @.str.670, ; 670
	ptr @.str.671, ; 671
	ptr @.str.672, ; 672
	ptr @.str.673, ; 673
	ptr @.str.674, ; 674
	ptr @.str.675, ; 675
	ptr @.str.676, ; 676
	ptr @.str.677, ; 677
	ptr @.str.678, ; 678
	ptr @.str.679, ; 679
	ptr @.str.680, ; 680
	ptr @.str.681, ; 681
	ptr @.str.682, ; 682
	ptr @.str.683, ; 683
	ptr @.str.684, ; 684
	ptr @.str.685, ; 685
	ptr @.str.686, ; 686
	ptr @.str.687, ; 687
	ptr @.str.688, ; 688
	ptr @.str.689, ; 689
	ptr @.str.690, ; 690
	ptr @.str.691, ; 691
	ptr @.str.692, ; 692
	ptr @.str.693, ; 693
	ptr @.str.694, ; 694
	ptr @.str.695, ; 695
	ptr @.str.696, ; 696
	ptr @.str.697, ; 697
	ptr @.str.698, ; 698
	ptr @.str.699, ; 699
	ptr @.str.700, ; 700
	ptr @.str.701, ; 701
	ptr @.str.702, ; 702
	ptr @.str.703, ; 703
	ptr @.str.704, ; 704
	ptr @.str.705, ; 705
	ptr @.str.706, ; 706
	ptr @.str.707, ; 707
	ptr @.str.708, ; 708
	ptr @.str.709, ; 709
	ptr @.str.710, ; 710
	ptr @.str.711, ; 711
	ptr @.str.712, ; 712
	ptr @.str.713, ; 713
	ptr @.str.714, ; 714
	ptr @.str.715, ; 715
	ptr @.str.716, ; 716
	ptr @.str.717, ; 717
	ptr @.str.718, ; 718
	ptr @.str.719, ; 719
	ptr @.str.720, ; 720
	ptr @.str.721, ; 721
	ptr @.str.722, ; 722
	ptr @.str.723, ; 723
	ptr @.str.724, ; 724
	ptr @.str.725, ; 725
	ptr @.str.726, ; 726
	ptr @.str.727, ; 727
	ptr @.str.728, ; 728
	ptr @.str.729, ; 729
	ptr @.str.730, ; 730
	ptr @.str.731, ; 731
	ptr @.str.732, ; 732
	ptr @.str.733, ; 733
	ptr @.str.734, ; 734
	ptr @.str.735, ; 735
	ptr @.str.736, ; 736
	ptr @.str.737, ; 737
	ptr @.str.738, ; 738
	ptr @.str.739, ; 739
	ptr @.str.740, ; 740
	ptr @.str.741, ; 741
	ptr @.str.742, ; 742
	ptr @.str.743, ; 743
	ptr @.str.744, ; 744
	ptr @.str.745, ; 745
	ptr @.str.746, ; 746
	ptr @.str.747, ; 747
	ptr @.str.748, ; 748
	ptr @.str.749, ; 749
	ptr @.str.750, ; 750
	ptr @.str.751, ; 751
	ptr @.str.752, ; 752
	ptr @.str.753, ; 753
	ptr @.str.754, ; 754
	ptr @.str.755, ; 755
	ptr @.str.756, ; 756
	ptr @.str.757, ; 757
	ptr @.str.758, ; 758
	ptr @.str.759, ; 759
	ptr @.str.760, ; 760
	ptr @.str.761, ; 761
	ptr @.str.762, ; 762
	ptr @.str.763, ; 763
	ptr @.str.764, ; 764
	ptr @.str.765, ; 765
	ptr @.str.766, ; 766
	ptr @.str.767, ; 767
	ptr @.str.768, ; 768
	ptr @.str.769, ; 769
	ptr @.str.770, ; 770
	ptr @.str.771, ; 771
	ptr @.str.772, ; 772
	ptr @.str.773, ; 773
	ptr @.str.774, ; 774
	ptr @.str.775, ; 775
	ptr @.str.776, ; 776
	ptr @.str.777, ; 777
	ptr @.str.778, ; 778
	ptr @.str.779, ; 779
	ptr @.str.780, ; 780
	ptr @.str.781, ; 781
	ptr @.str.782, ; 782
	ptr @.str.783, ; 783
	ptr @.str.784, ; 784
	ptr @.str.785, ; 785
	ptr @.str.786, ; 786
	ptr @.str.787, ; 787
	ptr @.str.788, ; 788
	ptr @.str.789, ; 789
	ptr @.str.790, ; 790
	ptr @.str.791, ; 791
	ptr @.str.792, ; 792
	ptr @.str.793, ; 793
	ptr @.str.794, ; 794
	ptr @.str.795, ; 795
	ptr @.str.796, ; 796
	ptr @.str.797, ; 797
	ptr @.str.798, ; 798
	ptr @.str.799, ; 799
	ptr @.str.800, ; 800
	ptr @.str.801, ; 801
	ptr @.str.802, ; 802
	ptr @.str.803, ; 803
	ptr @.str.804, ; 804
	ptr @.str.805, ; 805
	ptr @.str.806, ; 806
	ptr @.str.807, ; 807
	ptr @.str.808, ; 808
	ptr @.str.809, ; 809
	ptr @.str.810, ; 810
	ptr @.str.811, ; 811
	ptr @.str.812, ; 812
	ptr @.str.813, ; 813
	ptr @.str.814, ; 814
	ptr @.str.815, ; 815
	ptr @.str.816, ; 816
	ptr @.str.817, ; 817
	ptr @.str.818, ; 818
	ptr @.str.819, ; 819
	ptr @.str.820, ; 820
	ptr @.str.821, ; 821
	ptr @.str.822, ; 822
	ptr @.str.823, ; 823
	ptr @.str.824, ; 824
	ptr @.str.825, ; 825
	ptr @.str.826, ; 826
	ptr @.str.827, ; 827
	ptr @.str.828, ; 828
	ptr @.str.829, ; 829
	ptr @.str.830, ; 830
	ptr @.str.831, ; 831
	ptr @.str.832, ; 832
	ptr @.str.833, ; 833
	ptr @.str.834, ; 834
	ptr @.str.835, ; 835
	ptr @.str.836, ; 836
	ptr @.str.837, ; 837
	ptr @.str.838, ; 838
	ptr @.str.839, ; 839
	ptr @.str.840, ; 840
	ptr @.str.841, ; 841
	ptr @.str.842, ; 842
	ptr @.str.843, ; 843
	ptr @.str.844, ; 844
	ptr @.str.845, ; 845
	ptr @.str.846, ; 846
	ptr @.str.847, ; 847
	ptr @.str.848, ; 848
	ptr @.str.849, ; 849
	ptr @.str.850, ; 850
	ptr @.str.851, ; 851
	ptr @.str.852, ; 852
	ptr @.str.853, ; 853
	ptr @.str.854, ; 854
	ptr @.str.855, ; 855
	ptr @.str.856, ; 856
	ptr @.str.857, ; 857
	ptr @.str.858, ; 858
	ptr @.str.859, ; 859
	ptr @.str.860, ; 860
	ptr @.str.861, ; 861
	ptr @.str.862, ; 862
	ptr @.str.863, ; 863
	ptr @.str.864, ; 864
	ptr @.str.865, ; 865
	ptr @.str.866, ; 866
	ptr @.str.867, ; 867
	ptr @.str.868, ; 868
	ptr @.str.869, ; 869
	ptr @.str.870, ; 870
	ptr @.str.871, ; 871
	ptr @.str.872, ; 872
	ptr @.str.873, ; 873
	ptr @.str.874, ; 874
	ptr @.str.875, ; 875
	ptr @.str.876, ; 876
	ptr @.str.877, ; 877
	ptr @.str.878, ; 878
	ptr @.str.879, ; 879
	ptr @.str.880, ; 880
	ptr @.str.881, ; 881
	ptr @.str.882, ; 882
	ptr @.str.883, ; 883
	ptr @.str.884, ; 884
	ptr @.str.885, ; 885
	ptr @.str.886, ; 886
	ptr @.str.887, ; 887
	ptr @.str.888, ; 888
	ptr @.str.889, ; 889
	ptr @.str.890, ; 890
	ptr @.str.891, ; 891
	ptr @.str.892, ; 892
	ptr @.str.893, ; 893
	ptr @.str.894, ; 894
	ptr @.str.895, ; 895
	ptr @.str.896, ; 896
	ptr @.str.897, ; 897
	ptr @.str.898, ; 898
	ptr @.str.899, ; 899
	ptr @.str.900, ; 900
	ptr @.str.901, ; 901
	ptr @.str.902, ; 902
	ptr @.str.903, ; 903
	ptr @.str.904, ; 904
	ptr @.str.905, ; 905
	ptr @.str.906, ; 906
	ptr @.str.907, ; 907
	ptr @.str.908, ; 908
	ptr @.str.909, ; 909
	ptr @.str.910, ; 910
	ptr @.str.911, ; 911
	ptr @.str.912, ; 912
	ptr @.str.913, ; 913
	ptr @.str.914, ; 914
	ptr @.str.915, ; 915
	ptr @.str.916, ; 916
	ptr @.str.917, ; 917
	ptr @.str.918, ; 918
	ptr @.str.919, ; 919
	ptr @.str.920, ; 920
	ptr @.str.921, ; 921
	ptr @.str.922, ; 922
	ptr @.str.923, ; 923
	ptr @.str.924, ; 924
	ptr @.str.925, ; 925
	ptr @.str.926, ; 926
	ptr @.str.927, ; 927
	ptr @.str.928, ; 928
	ptr @.str.929, ; 929
	ptr @.str.930, ; 930
	ptr @.str.931, ; 931
	ptr @.str.932, ; 932
	ptr @.str.933, ; 933
	ptr @.str.934, ; 934
	ptr @.str.935, ; 935
	ptr @.str.936, ; 936
	ptr @.str.937, ; 937
	ptr @.str.938, ; 938
	ptr @.str.939, ; 939
	ptr @.str.940, ; 940
	ptr @.str.941, ; 941
	ptr @.str.942, ; 942
	ptr @.str.943, ; 943
	ptr @.str.944, ; 944
	ptr @.str.945, ; 945
	ptr @.str.946, ; 946
	ptr @.str.947, ; 947
	ptr @.str.948, ; 948
	ptr @.str.949, ; 949
	ptr @.str.950, ; 950
	ptr @.str.951, ; 951
	ptr @.str.952, ; 952
	ptr @.str.953, ; 953
	ptr @.str.954, ; 954
	ptr @.str.955, ; 955
	ptr @.str.956, ; 956
	ptr @.str.957, ; 957
	ptr @.str.958, ; 958
	ptr @.str.959, ; 959
	ptr @.str.960, ; 960
	ptr @.str.961, ; 961
	ptr @.str.962, ; 962
	ptr @.str.963, ; 963
	ptr @.str.964, ; 964
	ptr @.str.965, ; 965
	ptr @.str.966, ; 966
	ptr @.str.967, ; 967
	ptr @.str.968, ; 968
	ptr @.str.969, ; 969
	ptr @.str.970, ; 970
	ptr @.str.971, ; 971
	ptr @.str.972, ; 972
	ptr @.str.973, ; 973
	ptr @.str.974, ; 974
	ptr @.str.975, ; 975
	ptr @.str.976, ; 976
	ptr @.str.977, ; 977
	ptr @.str.978, ; 978
	ptr @.str.979, ; 979
	ptr @.str.980, ; 980
	ptr @.str.981, ; 981
	ptr @.str.982, ; 982
	ptr @.str.983, ; 983
	ptr @.str.984, ; 984
	ptr @.str.985, ; 985
	ptr @.str.986, ; 986
	ptr @.str.987, ; 987
	ptr @.str.988, ; 988
	ptr @.str.989, ; 989
	ptr @.str.990, ; 990
	ptr @.str.991, ; 991
	ptr @.str.992, ; 992
	ptr @.str.993, ; 993
	ptr @.str.994, ; 994
	ptr @.str.995, ; 995
	ptr @.str.996, ; 996
	ptr @.str.997, ; 997
	ptr @.str.998, ; 998
	ptr @.str.999, ; 999
	ptr @.str.1000, ; 1000
	ptr @.str.1001, ; 1001
	ptr @.str.1002, ; 1002
	ptr @.str.1003, ; 1003
	ptr @.str.1004, ; 1004
	ptr @.str.1005, ; 1005
	ptr @.str.1006, ; 1006
	ptr @.str.1007, ; 1007
	ptr @.str.1008, ; 1008
	ptr @.str.1009, ; 1009
	ptr @.str.1010, ; 1010
	ptr @.str.1011, ; 1011
	ptr @.str.1012, ; 1012
	ptr @.str.1013, ; 1013
	ptr @.str.1014, ; 1014
	ptr @.str.1015, ; 1015
	ptr @.str.1016, ; 1016
	ptr @.str.1017, ; 1017
	ptr @.str.1018, ; 1018
	ptr @.str.1019, ; 1019
	ptr @.str.1020, ; 1020
	ptr @.str.1021, ; 1021
	ptr @.str.1022, ; 1022
	ptr @.str.1023, ; 1023
	ptr @.str.1024, ; 1024
	ptr @.str.1025, ; 1025
	ptr @.str.1026, ; 1026
	ptr @.str.1027, ; 1027
	ptr @.str.1028, ; 1028
	ptr @.str.1029, ; 1029
	ptr @.str.1030, ; 1030
	ptr @.str.1031, ; 1031
	ptr @.str.1032, ; 1032
	ptr @.str.1033, ; 1033
	ptr @.str.1034, ; 1034
	ptr @.str.1035, ; 1035
	ptr @.str.1036, ; 1036
	ptr @.str.1037, ; 1037
	ptr @.str.1038, ; 1038
	ptr @.str.1039, ; 1039
	ptr @.str.1040, ; 1040
	ptr @.str.1041, ; 1041
	ptr @.str.1042, ; 1042
	ptr @.str.1043, ; 1043
	ptr @.str.1044, ; 1044
	ptr @.str.1045, ; 1045
	ptr @.str.1046, ; 1046
	ptr @.str.1047, ; 1047
	ptr @.str.1048, ; 1048
	ptr @.str.1049, ; 1049
	ptr @.str.1050, ; 1050
	ptr @.str.1051, ; 1051
	ptr @.str.1052, ; 1052
	ptr @.str.1053, ; 1053
	ptr @.str.1054, ; 1054
	ptr @.str.1055, ; 1055
	ptr @.str.1056, ; 1056
	ptr @.str.1057, ; 1057
	ptr @.str.1058, ; 1058
	ptr @.str.1059, ; 1059
	ptr @.str.1060, ; 1060
	ptr @.str.1061, ; 1061
	ptr @.str.1062, ; 1062
	ptr @.str.1063, ; 1063
	ptr @.str.1064, ; 1064
	ptr @.str.1065, ; 1065
	ptr @.str.1066, ; 1066
	ptr @.str.1067, ; 1067
	ptr @.str.1068, ; 1068
	ptr @.str.1069, ; 1069
	ptr @.str.1070, ; 1070
	ptr @.str.1071, ; 1071
	ptr @.str.1072 ; 1072
], align 4

; Strings
@.str.0 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/MutableLiveData\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"kotlin/jvm/internal/DefaultConstructorMarker\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/LocationServices\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"crc64e95e69e34d869711/LocationCallback\00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/location/FusedLocationProviderClient\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/GeofencingClient\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/location/SettingsClient\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/location/CurrentLocationRequest\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/location/GeofencingRequest\00", align 1
@.str.40 = private unnamed_addr constant [58 x i8] c"com/google/android/gms/location/GeofencingRequest$Builder\00", align 1
@.str.41 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/location/FusedLocationProviderApi\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/Geofence$Builder\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/location/Geofence\00", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"com/google/android/gms/location/GeofencingApi\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/LocationListener\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"com/google/android/gms/location/SettingsApi\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"com/google/android/gms/location/LastLocationRequest\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"com/google/android/gms/location/LocationAvailability\00", align 1
@.str.49 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/LocationCallback\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/location/LocationRequest\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/location/LocationResult\00", align 1
@.str.52 = private unnamed_addr constant [56 x i8] c"com/google/android/gms/location/LocationSettingsRequest\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/location/LocationSettingsResponse\00", align 1
@.str.54 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/location/LocationSettingsResult\00", align 1
@.str.55 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/location/LocationSettingsStates\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 1
@.str.61 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 1
@.str.62 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 1
@.str.66 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 1
@.str.67 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 1
@.str.73 = private unnamed_addr constant [55 x i8] c"androidx/versionedparcelable/CustomVersionedParcelable\00", align 1
@.str.74 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 1
@.str.75 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 1
@.str.77 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 1
@.str.78 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 1
@.str.80 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/common/ConnectionResult\00", align 1
@.str.81 = private unnamed_addr constant [73 x i8] c"com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable\00", align 1
@.str.82 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/common/api/ResultCallback\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"com/google/android/gms/common/api/Response\00", align 1
@.str.84 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/ResultCallbacks\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"com/google/android/gms/common/api/Scope\00", align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/common/api/Status\00", align 1
@.str.87 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 1
@.str.90 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 1
@.str.92 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 1
@.str.93 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 1
@.str.94 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 1
@.str.95 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 1
@.str.96 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 1
@.str.98 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 1
@.str.99 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 1
@.str.100 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 1
@.str.101 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 1
@.str.102 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 1
@.str.103 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 1
@.str.104 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 1
@.str.105 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 1
@.str.106 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 1
@.str.108 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 1
@.str.109 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 1
@.str.110 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 1
@.str.111 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 1
@.str.112 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 1
@.str.113 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 1
@.str.114 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 1
@.str.115 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 1
@.str.116 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 1
@.str.117 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.118 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 1
@.str.119 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 1
@.str.120 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 1
@.str.121 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 1
@.str.122 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 1
@.str.123 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 1
@.str.124 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 1
@.str.125 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 1
@.str.126 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 1
@.str.127 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 1
@.str.128 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 1
@.str.129 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 1
@.str.130 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 1
@.str.131 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.132 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 1
@.str.133 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 1
@.str.134 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 1
@.str.135 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 1
@.str.136 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 1
@.str.137 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 1
@.str.138 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 1
@.str.139 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 1
@.str.140 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 1
@.str.141 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 1
@.str.142 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 1
@.str.143 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 1
@.str.144 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 1
@.str.145 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 1
@.str.146 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 1
@.str.147 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.148 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 1
@.str.149 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 1
@.str.150 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 1
@.str.151 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 1
@.str.152 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 1
@.str.153 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 1
@.str.154 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 1
@.str.155 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 1
@.str.156 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 1
@.str.157 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 1
@.str.158 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 1
@.str.159 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 1
@.str.160 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 1
@.str.161 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 1
@.str.162 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 1
@.str.163 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 1
@.str.164 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 1
@.str.165 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 1
@.str.166 = private unnamed_addr constant [46 x i8] c"androidx/navigation/NavViewModelStoreProvider\00", align 1
@.str.167 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 1
@.str.168 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 1
@.str.169 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 1
@.str.170 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 1
@.str.171 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 1
@.str.172 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 1
@.str.173 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 1
@.str.174 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 1
@.str.175 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 1
@.str.176 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 1
@.str.177 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 1
@.str.178 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 1
@.str.179 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 1
@.str.180 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 1
@.str.181 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 1
@.str.182 = private unnamed_addr constant [59 x i8] c"plugin/LocalNotification/GeofenceTransitionsIntentReceiver\00", align 1
@.str.183 = private unnamed_addr constant [52 x i8] c"plugin/LocalNotification/NotificationActionReceiver\00", align 1
@.str.184 = private unnamed_addr constant [48 x i8] c"plugin/LocalNotification/ScheduledAlarmReceiver\00", align 1
@.str.185 = private unnamed_addr constant [34 x i8] c"com/google/android/gms/tasks/Task\00", align 1
@.str.186 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/tasks/TaskCompletionSource\00", align 1
@.str.187 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/tasks/CancellationToken\00", align 1
@.str.188 = private unnamed_addr constant [42 x i8] c"com/google/android/gms/tasks/Continuation\00", align 1
@.str.189 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/tasks/OnCanceledListener\00", align 1
@.str.190 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/tasks/OnCompleteListener\00", align 1
@.str.191 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/tasks/OnFailureListener\00", align 1
@.str.192 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/tasks/OnSuccessListener\00", align 1
@.str.193 = private unnamed_addr constant [53 x i8] c"com/google/android/gms/tasks/OnTokenCanceledListener\00", align 1
@.str.194 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/tasks/SuccessContinuation\00", align 1
@.str.195 = private unnamed_addr constant [54 x i8] c"crc6495d4f5d63cc5c882/AwaitableTaskCompleteListener_1\00", align 1
@.str.196 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/internal/ApiKey\00", align 1
@.str.197 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/common/api/internal/ConnectionCallbacks\00", align 1
@.str.198 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/common/api/internal/OnConnectionFailedListener\00", align 1
@.str.199 = private unnamed_addr constant [68 x i8] c"com/google/android/gms/common/api/internal/SignInConnectionListener\00", align 1
@.str.200 = private unnamed_addr constant [58 x i8] c"com/google/android/gms/common/api/internal/ListenerHolder\00", align 1
@.str.201 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey\00", align 1
@.str.202 = private unnamed_addr constant [67 x i8] c"com/google/android/gms/common/api/internal/ListenerHolder$Notifier\00", align 1
@.str.203 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/GoogleApiClient\00", align 1
@.str.204 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks\00", align 1
@.str.205 = private unnamed_addr constant [77 x i8] c"com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener\00", align 1
@.str.206 = private unnamed_addr constant [38 x i8] c"com/google/android/gms/common/api/Api\00", align 1
@.str.207 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/common/api/Api$AbstractClientBuilder\00", align 1
@.str.208 = private unnamed_addr constant [51 x i8] c"com/google/android/gms/common/api/Api$AnyClientKey\00", align 1
@.str.209 = private unnamed_addr constant [56 x i8] c"com/google/android/gms/common/api/Api$BaseClientBuilder\00", align 1
@.str.210 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/Api$ClientKey\00", align 1
@.str.211 = private unnamed_addr constant [44 x i8] c"com/google/android/gms/common/api/HasApiKey\00", align 1
@.str.212 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/PendingResult\00", align 1
@.str.213 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/common/api/PendingResult$StatusListener\00", align 1
@.str.214 = private unnamed_addr constant [79 x i8] c"mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor\00", align 1
@.str.215 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/ResultTransform\00", align 1
@.str.216 = private unnamed_addr constant [52 x i8] c"com/google/android/gms/common/api/TransformedResult\00", align 1
@.str.217 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 1
@.str.218 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 1
@.str.219 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 1
@.str.220 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 1
@.str.221 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 1
@.str.222 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 1
@.str.223 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 1
@.str.224 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 1
@.str.225 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 1
@.str.226 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 1
@.str.227 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 1
@.str.228 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 1
@.str.229 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 1
@.str.230 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 1
@.str.231 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 1
@.str.232 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 1
@.str.233 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 1
@.str.234 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 1
@.str.235 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 1
@.str.236 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 1
@.str.237 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 1
@.str.238 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 1
@.str.239 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 1
@.str.240 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 1
@.str.241 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 1
@.str.242 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 1
@.str.243 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 1
@.str.244 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 1
@.str.245 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 1
@.str.246 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.247 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 1
@.str.248 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 1
@.str.249 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 1
@.str.250 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.251 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 1
@.str.252 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 1
@.str.253 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 1
@.str.254 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 1
@.str.255 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 1
@.str.256 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@.str.257 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 1
@.str.258 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 1
@.str.259 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 1
@.str.260 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 1
@.str.261 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 1
@.str.262 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 1
@.str.263 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 1
@.str.264 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 1
@.str.265 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 1
@.str.266 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 1
@.str.267 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 1
@.str.268 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@.str.269 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 1
@.str.270 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 1
@.str.271 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 1
@.str.272 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 1
@.str.273 = private unnamed_addr constant [27 x i8] c"android/widget/RemoteViews\00", align 1
@.str.274 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 1
@.str.275 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 1
@.str.276 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 1
@.str.277 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 1
@.str.278 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.279 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 1
@.str.280 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 1
@.str.281 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 1
@.str.282 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 1
@.str.283 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 1
@.str.284 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 1
@.str.285 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 1
@.str.286 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 1
@.str.287 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 1
@.str.288 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 1
@.str.289 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 1
@.str.290 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 1
@.str.291 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 1
@.str.292 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 1
@.str.293 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.294 = private unnamed_addr constant [17 x i8] c"android/util/Log\00", align 1
@.str.295 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 1
@.str.296 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 1
@.str.297 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 1
@.str.298 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 1
@.str.299 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 1
@.str.300 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 1
@.str.301 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 1
@.str.302 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 1
@.str.303 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 1
@.str.304 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 1
@.str.305 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 1
@.str.306 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 1
@.str.307 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 1
@.str.308 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 1
@.str.309 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 1
@.str.310 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 1
@.str.311 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 1
@.str.312 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 1
@.str.313 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 1
@.str.314 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 1
@.str.315 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 1
@.str.316 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 1
@.str.317 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 1
@.str.318 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 1
@.str.319 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 1
@.str.320 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 1
@.str.321 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 1
@.str.322 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 1
@.str.323 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 1
@.str.324 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 1
@.str.325 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 1
@.str.326 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 1
@.str.327 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 1
@.str.328 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 1
@.str.329 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 1
@.str.330 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 1
@.str.331 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 1
@.str.332 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 1
@.str.333 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 1
@.str.334 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 1
@.str.335 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 1
@.str.336 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 1
@.str.337 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 1
@.str.338 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 1
@.str.339 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 1
@.str.340 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 1
@.str.341 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 1
@.str.342 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 1
@.str.343 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.344 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.345 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@.str.346 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.347 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 1
@.str.348 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.349 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 1
@.str.350 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 1
@.str.351 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 1
@.str.352 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 1
@.str.353 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 1
@.str.354 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 1
@.str.355 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.356 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 1
@.str.357 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 1
@.str.358 = private unnamed_addr constant [29 x i8] c"android/os/PersistableBundle\00", align 1
@.str.359 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 1
@.str.360 = private unnamed_addr constant [23 x i8] c"android/os/SystemClock\00", align 1
@.str.361 = private unnamed_addr constant [22 x i8] c"android/os/UserHandle\00", align 1
@.str.362 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 1
@.str.363 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 1
@.str.364 = private unnamed_addr constant [30 x i8] c"android/media/AudioAttributes\00", align 1
@.str.365 = private unnamed_addr constant [38 x i8] c"android/media/AudioAttributes$Builder\00", align 1
@.str.366 = private unnamed_addr constant [30 x i8] c"android/media/RingtoneManager\00", align 1
@.str.367 = private unnamed_addr constant [26 x i8] c"android/location/Location\00", align 1
@.str.368 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 1
@.str.369 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 1
@.str.370 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 1
@.str.371 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 1
@.str.372 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 1
@.str.373 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 1
@.str.374 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 1
@.str.375 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 1
@.str.376 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 1
@.str.377 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 1
@.str.378 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 1
@.str.379 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 1
@.str.380 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 1
@.str.381 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.382 = private unnamed_addr constant [25 x i8] c"android/app/AlarmManager\00", align 1
@.str.383 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 1
@.str.384 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@.str.385 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.386 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 1
@.str.387 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 1
@.str.388 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 1
@.str.389 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 1
@.str.390 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 1
@.str.391 = private unnamed_addr constant [25 x i8] c"android/app/Notification\00", align 1
@.str.392 = private unnamed_addr constant [40 x i8] c"android/app/Notification$BubbleMetadata\00", align 1
@.str.393 = private unnamed_addr constant [33 x i8] c"android/app/Notification$Builder\00", align 1
@.str.394 = private unnamed_addr constant [32 x i8] c"android/app/NotificationChannel\00", align 1
@.str.395 = private unnamed_addr constant [37 x i8] c"android/app/NotificationChannelGroup\00", align 1
@.str.396 = private unnamed_addr constant [32 x i8] c"android/app/NotificationManager\00", align 1
@.str.397 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 1
@.str.398 = private unnamed_addr constant [19 x i8] c"android/app/Person\00", align 1
@.str.399 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 1
@.str.400 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 1
@.str.401 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 1
@.str.402 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 1
@.str.403 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 1
@.str.404 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 1
@.str.405 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 1
@.str.406 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 1
@.str.407 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 1
@.str.408 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 1
@.str.409 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.410 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 1
@.str.411 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 1
@.str.412 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 1
@.str.413 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 1
@.str.414 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 1
@.str.415 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 1
@.str.416 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 1
@.str.417 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 1
@.str.418 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 1
@.str.419 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 1
@.str.420 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 1
@.str.421 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 1
@.str.422 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 1
@.str.423 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 1
@.str.424 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 1
@.str.425 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 1
@.str.426 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 1
@.str.427 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 1
@.str.428 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 1
@.str.429 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 1
@.str.430 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 1
@.str.431 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 1
@.str.432 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 1
@.str.433 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 1
@.str.434 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 1
@.str.435 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 1
@.str.436 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 1
@.str.437 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 1
@.str.438 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 1
@.str.439 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 1
@.str.440 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.441 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 1
@.str.442 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 1
@.str.443 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 1
@.str.444 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 1
@.str.445 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 1
@.str.446 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.447 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.448 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 1
@.str.449 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 1
@.str.450 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 1
@.str.451 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 1
@.str.452 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 1
@.str.453 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 1
@.str.454 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 1
@.str.455 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 1
@.str.456 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 1
@.str.457 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 1
@.str.458 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 1
@.str.459 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 1
@.str.460 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 1
@.str.461 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 1
@.str.462 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 1
@.str.463 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 1
@.str.464 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 1
@.str.465 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 1
@.str.466 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 1
@.str.467 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 1
@.str.468 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 1
@.str.469 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 1
@.str.470 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 1
@.str.471 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 1
@.str.472 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 1
@.str.473 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 1
@.str.474 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 1
@.str.475 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 1
@.str.476 = private unnamed_addr constant [46 x i8] c"android/view/animation/AccelerateInterpolator\00", align 1
@.str.477 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 1
@.str.478 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 1
@.str.479 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 1
@.str.480 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 1
@.str.481 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 1
@.str.482 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 1
@.str.483 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 1
@.str.484 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 1
@.str.485 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 1
@.str.486 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 1
@.str.487 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 1
@.str.488 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 1
@.str.489 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 1
@.str.490 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.491 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 1
@.str.492 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 1
@.str.493 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 1
@.str.494 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 1
@.str.495 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@.str.496 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.497 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 1
@.str.498 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.499 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 1
@.str.500 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 1
@.str.501 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 1
@.str.502 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 1
@.str.503 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 1
@.str.504 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 1
@.str.505 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 1
@.str.506 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 1
@.str.507 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 1
@.str.508 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 1
@.str.509 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 1
@.str.510 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 1
@.str.511 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 1
@.str.512 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 1
@.str.513 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 1
@.str.514 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 1
@.str.515 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 1
@.str.516 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 1
@.str.517 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 1
@.str.518 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 1
@.str.519 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 1
@.str.520 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 1
@.str.521 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 1
@.str.522 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 1
@.str.523 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 1
@.str.524 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 1
@.str.525 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 1
@.str.526 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 1
@.str.527 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 1
@.str.528 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 1
@.str.529 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 1
@.str.530 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 1
@.str.531 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 1
@.str.532 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 1
@.str.533 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 1
@.str.534 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 1
@.str.535 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 1
@.str.536 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 1
@.str.537 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 1
@.str.538 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 1
@.str.539 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/BitmapDrawable\00", align 1
@.str.540 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 1
@.str.541 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 1
@.str.542 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 1
@.str.543 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 1
@.str.544 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 1
@.str.545 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 1
@.str.546 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 1
@.str.547 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 1
@.str.548 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 1
@.str.549 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 1
@.str.550 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 1
@.str.551 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 1
@.str.552 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 1
@.str.553 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 1
@.str.554 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 1
@.str.555 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 1
@.str.556 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 1
@.str.557 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 1
@.str.558 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 1
@.str.559 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 1
@.str.560 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 1
@.str.561 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 1
@.str.562 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 1
@.str.563 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.564 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.565 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 1
@.str.566 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 1
@.str.567 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@.str.568 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@.str.569 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 1
@.str.570 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 1
@.str.571 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 1
@.str.572 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 1
@.str.573 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 1
@.str.574 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 1
@.str.575 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 1
@.str.576 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.577 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 1
@.str.578 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 1
@.str.579 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@.str.580 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@.str.581 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@.str.582 = private unnamed_addr constant [24 x i8] c"android/content/LocusId\00", align 1
@.str.583 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 1
@.str.584 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 1
@.str.585 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 1
@.str.586 = private unnamed_addr constant [38 x i8] c"android/content/res/XmlResourceParser\00", align 1
@.str.587 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 1
@.str.588 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 1
@.str.589 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 1
@.str.590 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 1
@.str.591 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 1
@.str.592 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 1
@.str.593 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 1
@.str.594 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 1
@.str.595 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 1
@.str.596 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 1
@.str.597 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 1
@.str.598 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 1
@.str.599 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 1
@.str.600 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 1
@.str.601 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 1
@.str.602 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 1
@.str.603 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 1
@.str.604 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 1
@.str.605 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 1
@.str.606 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 1
@.str.607 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 1
@.str.608 = private unnamed_addr constant [44 x i8] c"java/util/concurrent/atomic/AtomicReference\00", align 1
@.str.609 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 1
@.str.610 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 1
@.str.611 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 1
@.str.612 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 1
@.str.613 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 1
@.str.614 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 1
@.str.615 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 1
@.str.616 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 1
@.str.617 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.618 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.619 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 1
@.str.620 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 1
@.str.621 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 1
@.str.622 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 1
@.str.623 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.624 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 1
@.str.625 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 1
@.str.626 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 1
@.str.627 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 1
@.str.628 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 1
@.str.629 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.630 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 1
@.str.631 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.str.632 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 1
@.str.633 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.634 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 1
@.str.635 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.636 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 1
@.str.637 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.638 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.639 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.640 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 1
@.str.641 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.str.642 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.643 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.644 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 1
@.str.645 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.646 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 1
@.str.647 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.648 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@.str.649 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 1
@.str.650 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 1
@.str.651 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.652 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.653 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.654 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 1
@.str.655 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 1
@.str.656 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 1
@.str.657 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@.str.658 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@.str.659 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@.str.660 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 1
@.str.661 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.662 = private unnamed_addr constant [17 x i8] c"java/lang/System\00", align 1
@.str.663 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.664 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@.str.665 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 1
@.str.666 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.667 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@.str.668 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 1
@.str.669 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 1
@.str.670 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.671 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.672 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.673 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.674 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.675 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@.str.676 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 1
@.str.677 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.678 = private unnamed_addr constant [36 x i8] c"androidx/lifecycle/SavedStateHandle\00", align 1
@.str.679 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 1
@.str.680 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 1
@.str.681 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 1
@.str.682 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 1
@.str.683 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 1
@.str.684 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 1
@.str.685 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 1
@.str.686 = private unnamed_addr constant [43 x i8] c"androidx/core/graphics/drawable/IconCompat\00", align 1
@.str.687 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 1
@.str.688 = private unnamed_addr constant [36 x i8] c"androidx/core/content/LocusIdCompat\00", align 1
@.str.689 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 1
@.str.690 = private unnamed_addr constant [44 x i8] c"androidx/core/content/pm/ShortcutInfoCompat\00", align 1
@.str.691 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 1
@.str.692 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 1
@.str.693 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 1
@.str.694 = private unnamed_addr constant [57 x i8] c"androidx/core/app/NotificationBuilderWithBuilderAccessor\00", align 1
@.str.695 = private unnamed_addr constant [37 x i8] c"androidx/core/app/NotificationCompat\00", align 1
@.str.696 = private unnamed_addr constant [44 x i8] c"androidx/core/app/NotificationCompat$Action\00", align 1
@.str.697 = private unnamed_addr constant [53 x i8] c"androidx/core/app/NotificationCompat$BigPictureStyle\00", align 1
@.str.698 = private unnamed_addr constant [50 x i8] c"androidx/core/app/NotificationCompat$BigTextStyle\00", align 1
@.str.699 = private unnamed_addr constant [52 x i8] c"androidx/core/app/NotificationCompat$BubbleMetadata\00", align 1
@.str.700 = private unnamed_addr constant [45 x i8] c"androidx/core/app/NotificationCompat$Builder\00", align 1
@.str.701 = private unnamed_addr constant [46 x i8] c"androidx/core/app/NotificationCompat$Extender\00", align 1
@.str.702 = private unnamed_addr constant [43 x i8] c"androidx/core/app/NotificationCompat$Style\00", align 1
@.str.703 = private unnamed_addr constant [25 x i8] c"androidx/core/app/Person\00", align 1
@.str.704 = private unnamed_addr constant [33 x i8] c"androidx/core/app/Person$Builder\00", align 1
@.str.705 = private unnamed_addr constant [30 x i8] c"androidx/core/app/RemoteInput\00", align 1
@.str.706 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 1
@.str.707 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 1
@.str.708 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 1
@.str.709 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 1
@.str.710 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 1
@.str.711 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 1
@.str.712 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 1
@.str.713 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 1
@.str.714 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 1
@.str.715 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 1
@.str.716 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 1
@.str.717 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 1
@.str.718 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 1
@.str.719 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 1
@.str.720 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 1
@.str.721 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 1
@.str.722 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 1
@.str.723 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 1
@.str.724 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 1
@.str.725 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 1
@.str.726 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 1
@.str.727 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 1
@.str.728 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 1
@.str.729 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 1
@.str.730 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 1
@.str.731 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 1
@.str.732 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 1
@.str.733 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 1
@.str.734 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 1
@.str.735 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 1
@.str.736 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 1
@.str.737 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 1
@.str.738 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 1
@.str.739 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 1
@.str.740 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 1
@.str.741 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 1
@.str.742 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 1
@.str.743 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 1
@.str.744 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 1
@.str.745 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 1
@.str.746 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 1
@.str.747 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 1
@.str.748 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 1
@.str.749 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 1
@.str.750 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 1
@.str.751 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 1
@.str.752 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 1
@.str.753 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 1
@.str.754 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 1
@.str.755 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 1
@.str.756 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 1
@.str.757 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 1
@.str.758 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 1
@.str.759 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 1
@.str.760 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 1
@.str.761 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 1
@.str.762 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 1
@.str.763 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 1
@.str.764 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 1
@.str.765 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 1
@.str.766 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 1
@.str.767 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 1
@.str.768 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 1
@.str.769 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 1
@.str.770 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 1
@.str.771 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 1
@.str.772 = private unnamed_addr constant [31 x i8] c"com/microsoft/maui/BuildConfig\00", align 1
@.str.773 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 1
@.str.774 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 1
@.str.775 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 1
@.str.776 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 1
@.str.777 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 1
@.str.778 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 1
@.str.779 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 1
@.str.780 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 1
@.str.781 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 1
@.str.782 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 1
@.str.783 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 1
@.str.784 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 1
@.str.785 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 1
@.str.786 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 1
@.str.787 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 1
@.str.788 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 1
@.str.789 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 1
@.str.790 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 1
@.str.791 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 1
@.str.792 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 1
@.str.793 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 1
@.str.794 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 1
@.str.795 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 1
@.str.796 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 1
@.str.797 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 1
@.str.798 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 1
@.str.799 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 1
@.str.800 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 1
@.str.801 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 1
@.str.802 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 1
@.str.803 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 1
@.str.804 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 1
@.str.805 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 1
@.str.806 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 1
@.str.807 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 1
@.str.808 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 1
@.str.809 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 1
@.str.810 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 1
@.str.811 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 1
@.str.812 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 1
@.str.813 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 1
@.str.814 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 1
@.str.815 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 1
@.str.816 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 1
@.str.817 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 1
@.str.818 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 1
@.str.819 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 1
@.str.820 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 1
@.str.821 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 1
@.str.822 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 1
@.str.823 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 1
@.str.824 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 1
@.str.825 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 1
@.str.826 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 1
@.str.827 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 1
@.str.828 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 1
@.str.829 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 1
@.str.830 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 1
@.str.831 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 1
@.str.832 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 1
@.str.833 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 1
@.str.834 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 1
@.str.835 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 1
@.str.836 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 1
@.str.837 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 1
@.str.838 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 1
@.str.839 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 1
@.str.840 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 1
@.str.841 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 1
@.str.842 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 1
@.str.843 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 1
@.str.844 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 1
@.str.845 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 1
@.str.846 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 1
@.str.847 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 1
@.str.848 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 1
@.str.849 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 1
@.str.850 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 1
@.str.851 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 1
@.str.852 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 1
@.str.853 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 1
@.str.854 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 1
@.str.855 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 1
@.str.856 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 1
@.str.857 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 1
@.str.858 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 1
@.str.859 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 1
@.str.860 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 1
@.str.861 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 1
@.str.862 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 1
@.str.863 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 1
@.str.864 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 1
@.str.865 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 1
@.str.866 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 1
@.str.867 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 1
@.str.868 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 1
@.str.869 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 1
@.str.870 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 1
@.str.871 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 1
@.str.872 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 1
@.str.873 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 1
@.str.874 = private unnamed_addr constant [35 x i8] c"crc642ae0810b3182db6d/MainActivity\00", align 1
@.str.875 = private unnamed_addr constant [38 x i8] c"crc642ae0810b3182db6d/MainApplication\00", align 1
@.str.876 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 1
@.str.877 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 1
@.str.878 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 1
@.str.879 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 1
@.str.880 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 1
@.str.881 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 1
@.str.882 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 1
@.str.883 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 1
@.str.884 = private unnamed_addr constant [57 x i8] c"crc64338477404e88479c/FormattedStringExtensions_FontSpan\00", align 1
@.str.885 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/FormattedStringExtensions_LetterSpacingSpan\00", align 1
@.str.886 = private unnamed_addr constant [63 x i8] c"crc64338477404e88479c/FormattedStringExtensions_LineHeightSpan\00", align 1
@.str.887 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 1
@.str.888 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 1
@.str.889 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 1
@.str.890 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 1
@.str.891 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 1
@.str.892 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 1
@.str.893 = private unnamed_addr constant [67 x i8] c"crc64338477404e88479c/GradientStrokeDrawable_GradientShaderFactory\00", align 1
@.str.894 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 1
@.str.895 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 1
@.str.896 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 1
@.str.897 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 1
@.str.898 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 1
@.str.899 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 1
@.str.900 = private unnamed_addr constant [60 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer\00", align 1
@.str.901 = private unnamed_addr constant [74 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment\00", align 1
@.str.902 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 1
@.str.903 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 1
@.str.904 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 1
@.str.905 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 1
@.str.906 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 1
@.str.907 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 1
@.str.908 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 1
@.str.909 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 1
@.str.910 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 1
@.str.911 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 1
@.str.912 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 1
@.str.913 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 1
@.str.914 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 1
@.str.915 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 1
@.str.916 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 1
@.str.917 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 1
@.str.918 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 1
@.str.919 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 1
@.str.920 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 1
@.str.921 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 1
@.str.922 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 1
@.str.923 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 1
@.str.924 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 1
@.str.925 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 1
@.str.926 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 1
@.str.927 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 1
@.str.928 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 1
@.str.929 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 1
@.str.930 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 1
@.str.931 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 1
@.str.932 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 1
@.str.933 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 1
@.str.934 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 1
@.str.935 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 1
@.str.936 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 1
@.str.937 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 1
@.str.938 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 1
@.str.939 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 1
@.str.940 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 1
@.str.941 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 1
@.str.942 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 1
@.str.943 = private unnamed_addr constant [58 x i8] c"crc645d80431ce5f73f11/CarouselViewwOnGlobalLayoutListener\00", align 1
@.str.944 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 1
@.str.945 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 1
@.str.946 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 1
@.str.947 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 1
@.str.948 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 1
@.str.949 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 1
@.str.950 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 1
@.str.951 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 1
@.str.952 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 1
@.str.953 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 1
@.str.954 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 1
@.str.955 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 1
@.str.956 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 1
@.str.957 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 1
@.str.958 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 1
@.str.959 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 1
@.str.960 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 1
@.str.961 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 1
@.str.962 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 1
@.str.963 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 1
@.str.964 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 1
@.str.965 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 1
@.str.966 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 1
@.str.967 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 1
@.str.968 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 1
@.str.969 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 1
@.str.970 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 1
@.str.971 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 1
@.str.972 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 1
@.str.973 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 1
@.str.974 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 1
@.str.975 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 1
@.str.976 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 1
@.str.977 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 1
@.str.978 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 1
@.str.979 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 1
@.str.980 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 1
@.str.981 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 1
@.str.982 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 1
@.str.983 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 1
@.str.984 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 1
@.str.985 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 1
@.str.986 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 1
@.str.987 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 1
@.str.988 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 1
@.str.989 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 1
@.str.990 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 1
@.str.991 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 1
@.str.992 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 1
@.str.993 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 1
@.str.994 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 1
@.str.995 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 1
@.str.996 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 1
@.str.997 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 1
@.str.998 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 1
@.str.999 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 1
@.str.1000 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 1
@.str.1001 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 1
@.str.1002 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 1
@.str.1003 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 1
@.str.1004 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 1
@.str.1005 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 1
@.str.1006 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 1
@.str.1007 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 1
@.str.1008 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 1
@.str.1009 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 1
@.str.1010 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 1
@.str.1011 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 1
@.str.1012 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 1
@.str.1013 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 1
@.str.1014 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 1
@.str.1015 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 1
@.str.1016 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 1
@.str.1017 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 1
@.str.1018 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 1
@.str.1019 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 1
@.str.1020 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 1
@.str.1021 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 1
@.str.1022 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 1
@.str.1023 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 1
@.str.1024 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 1
@.str.1025 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 1
@.str.1026 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 1
@.str.1027 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 1
@.str.1028 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 1
@.str.1029 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 1
@.str.1030 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 1
@.str.1031 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 1
@.str.1032 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 1
@.str.1033 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 1
@.str.1034 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 1
@.str.1035 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 1
@.str.1036 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 1
@.str.1037 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 1
@.str.1038 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 1
@.str.1039 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 1
@.str.1040 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 1
@.str.1041 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 1
@.str.1042 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 1
@.str.1043 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 1
@.str.1044 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 1
@.str.1045 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 1
@.str.1046 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 1
@.str.1047 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 1
@.str.1048 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 1
@.str.1049 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 1
@.str.1050 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 1
@.str.1051 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 1
@.str.1052 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 1
@.str.1053 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 1
@.str.1054 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 1
@.str.1055 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 1
@.str.1056 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 1
@.str.1057 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 1
@.str.1058 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 1
@.str.1059 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 1
@.str.1060 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 1
@.str.1061 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 1
@.str.1062 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 1
@.str.1063 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 1
@.str.1064 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 1
@.str.1065 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 1
@.str.1066 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 1
@.str.1067 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 1
@.str.1068 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 1
@.str.1069 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 1
@.str.1070 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 1
@.str.1071 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 1
@.str.1072 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 1
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 1
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 1
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 1
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 1
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 1
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.GooglePlayServices.Location\00", align 1
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 1
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [34 x i8] c"Xamarin.AndroidX.Lifecycle.Common\00", align 1
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.VersionedParcelable\00", align 1
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 1
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 1
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.GooglePlayServices.Basement\00", align 1
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel\00", align 1
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.Collection\00", align 1
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 1
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 1
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Navigation.Common\00", align 1
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [25 x i8] c"Plugin.LocalNotification\00", align 1
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [33 x i8] c"Xamarin.GooglePlayServices.Tasks\00", align 1
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.GooglePlayServices.Base\00", align 1
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModelSavedState\00", align 1
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 1
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 1
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 1
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 1
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 1
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.Navigation.Runtime\00", align 1
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 1
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [4 x i8] c"CAP\00", align 1
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.SavedState\00", align 1
@.TypeMapModule.34_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 1
@.TypeMapModule.35_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 1
@.TypeMapModule.36_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 1
@.TypeMapModule.37_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 1
@.TypeMapModule.38_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 1
@.TypeMapModule.39_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 1

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
!7 = !{i32 1, !"min_enum_size", i32 4}
