LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL
SDL_IMAGE_PATH := ../SDL_image
SDL_NET_PATH := ../SDL_net
SDL_MIXER_PATH := ../SDL_mixer
SDL_TTF_PATH := ../SDL_ttf

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include \
$(LOCAL_PATH)/$(SDL_IMAGE_PATH)/include \
$(LOCAL_PATH)/$(SDL_NET_PATH)/include \
$(LOCAL_PATH)/$(SDL_MIXER_PATH)/include \
$(LOCAL_PATH)/$(SDL_TTF_PATH)/include

# Add your application source files here...
LOCAL_SRC_FILES := main.cpp

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image SDL2_mixer SDL2_ttf

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
