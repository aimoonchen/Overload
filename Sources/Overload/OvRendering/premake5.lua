project "OvRendering"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	files { "**.h", "**.inl", "**.cpp" }
	includedirs { "include", dependdir .. "glew/include", dependdir .. "stb_image/include", dependdir .. "assimp/include", "%{wks.location}/OvDebug/include", "%{wks.location}/OvMaths/include", "%{wks.location}/OvTools/include" }
	targetdir (outputdir .. "%{cfg.buildcfg}/%{prj.name}")
	objdir (objoutdir .. "%{cfg.buildcfg}/%{prj.name}")
	characterset ("MBCS")

	filter { "configurations:Debug" }
		defines { "DEBUG" }
		symbols "On"

	filter { "configurations:Release" }
		defines { "NDEBUG" }
		optimize "On"