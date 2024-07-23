rmdir /s /q libs\funchook\build
rmdir /s /q libs\funchook\build-x64
rmdir /s /q libs\funchook\build-arm64
rmdir /s /q libs\zlib\build-x64
rmdir /s /q libs\zlib\build-arm64

cmake libs/funchook -Blibs/funchook/build-x64 -G "Visual Studio 17 2022" -A x64 -D"CMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded$<$<CONFIG:Debug>:Debug>" -DCMAKE_POLICY_DEFAULT_CMP0091=NEW -DFUNCHOOK_CPU=x86 -DFUNCHOOK_BUILD_TESTS=OFF
cmake libs/funchook -Blibs/funchook/build-arm64 -G "Visual Studio 17 2022" -A ARM64 -D"CMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded$<$<CONFIG:Debug>:Debug>" -DCMAKE_POLICY_DEFAULT_CMP0091=NEW -DFUNCHOOK_CPU=arm64 -DFUNCHOOK_DISASM=capstone -DFUNCHOOK_BUILD_TESTS=OFF
cmake libs/zlib -Blibs/zlib/build-x64 -G "Visual Studio 17 2022" -A x64 -D"CMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded$<$<CONFIG:Debug>:Debug>" -DCMAKE_POLICY_DEFAULT_CMP0091=NEW
cmake libs/zlib -Blibs/zlib/build-arm64 -G "Visual Studio 17 2022" -A ARM64 -D"CMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded$<$<CONFIG:Debug>:Debug>" -DCMAKE_POLICY_DEFAULT_CMP0091=NEW
