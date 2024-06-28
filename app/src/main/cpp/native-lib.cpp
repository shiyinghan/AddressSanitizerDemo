#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring

JNICALL
Java_com_herohan_addresssanitizerdemo_MainActivity_stringFromJNI(
        JNIEnv *env,
        jobject /* this */) {

    char *heap = static_cast<char *>(malloc(1024));
    free(heap);
    char *str = "str";
    memcpy(heap, str, strlen(str));

    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}