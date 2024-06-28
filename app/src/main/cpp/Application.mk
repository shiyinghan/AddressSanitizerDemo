# This is just for mips, if you really needs MSA, un-comment and build with GCC.
# Note: Supporting GCC on NDK is already deprecated and GCC will be removed from NDK soon.
#NDK_TOOLCHAIN_VERSION := 4.9

 # Or system, or none.
APP_STL := c++_shared
APP_CFLAGS += -fsanitize=address -fno-omit-frame-pointer
APP_LDFLAGS += -fsanitize=address

APP_PLATFORM := android-21
APP_ABI := armeabi-v7a arm64-v8a

APP_OPTIM := debug
#APP_OPTIM := release