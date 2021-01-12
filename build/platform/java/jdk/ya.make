RESOURCES_LIBRARY()


INCLUDE(resources.inc)

IF(USE_SYSTEM_JDK)
    MESSAGE(WARNING System JDK $USE_SYSTEM_JDK will be used)
ELSEIF(JDK_VERSION STREQUAL "15")
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        JDK
        ${JDK15_DARWIN} FOR DARWIN
        ${JDK15_LINUX} FOR LINUX
        ${JDK15_WINDOWS} FOR WIN32
    )
    IF(NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS AND NOT HOST_OS_DARWIN)
        MESSAGE(FATAL_ERROR Unsupported platform for JDK15)
    ENDIF()

    IF(OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK15_DARWIN})
    ELSEIF(OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK15_LINUX})
    ELSEIF(OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK15_WINDOWS})
    ENDIF()
ELSEIF(JDK_VERSION STREQUAL "14")
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        JDK
        ${JDK14_DARWIN} FOR DARWIN
        ${JDK14_LINUX} FOR LINUX
        ${JDK14_WINDOWS} FOR WIN32
    )
    IF(NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS AND NOT HOST_OS_DARWIN)
        MESSAGE(FATAL_ERROR Unsupported platform for JDK14)
    ENDIF()

    IF(OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK14_DARWIN})
    ELSEIF(OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK14_LINUX})
    ELSEIF(OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK14_WINDOWS})
    ENDIF()
ELSEIF(JDK_VERSION STREQUAL "13")
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        JDK
        ${JDK13_DARWIN} FOR DARWIN
        ${JDK13_LINUX} FOR LINUX
        ${JDK13_WINDOWS} FOR WIN32
    )
    IF(NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS AND NOT HOST_OS_DARWIN)
        MESSAGE(FATAL_ERROR Unsupported platform for JDK13)
    ENDIF()
    IF(SANITIZER_TYPE STREQUAL "address")
        IF(HOST_OS_LINUX)
            DECLARE_EXTERNAL_RESOURCE(JDK_FOR_TESTS ${JDK13_LINUX_ASAN})
        ELSE()
            MESSAGE(FATAL_ERROR Unsupported platform for JDK13 with asan)
        ENDIF()
    ENDIF()

    IF(OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK13_DARWIN})
    ELSEIF(OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK13_LINUX})
    ELSEIF(OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK13_WINDOWS})
    ENDIF()
ELSEIF(JDK_VERSION STREQUAL "12")
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        JDK
        ${JDK12_DARWIN} FOR DARWIN
        ${JDK12_LINUX} FOR LINUX
        ${JDK12_WINDOWS} FOR WIN32
    )
    IF(NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS AND NOT HOST_OS_DARWIN)
        MESSAGE(FATAL_ERROR Unsupported platform for JDK12)
    ENDIF()

    IF(OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK12_DARWIN})
    ELSEIF(OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK12_LINUX})
    ELSEIF(OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK12_WINDOWS})
    ENDIF()
ELSEIF(JDK_VERSION STREQUAL "11")
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        JDK
        ${JDK11_DARWIN} FOR DARWIN
        ${JDK11_LINUX} FOR LINUX
        ${JDK11_WINDOWS} FOR WIN32
    )
    IF(NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS AND NOT HOST_OS_DARWIN)
        MESSAGE(FATAL_ERROR Unsupported platform for JDK11)
    ENDIF()
    IF(SANITIZER_TYPE STREQUAL "address")
        IF(HOST_OS_LINUX)
            DECLARE_EXTERNAL_RESOURCE(JDK_FOR_TESTS ${JDK11_LINUX_ASAN})
        ELSE()
            MESSAGE(FATAL_ERROR Unsupported platform for JDK11 with asan)
        ENDIF()
    ENDIF()

    IF(OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK11_DARWIN})
    ELSEIF(OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK11_LINUX})
    ELSEIF(OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK11_WINDOWS})
    ENDIF()
ELSEIF(JDK_VERSION STREQUAL "10")
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        JDK
        ${JDK10_DARWIN} FOR DARWIN
        ${JDK10_LINUX} FOR LINUX
        ${JDK10_WINDOWS} FOR WIN32
    )
    IF(NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS AND NOT HOST_OS_DARWIN)
        MESSAGE(FATAL_ERROR Unsupported platform for JDK10)
    ENDIF()

    IF(OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK10_DARWIN})
    ELSEIF(OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK10_LINUX})
    ELSEIF(OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK10_WINDOWS})
    ENDIF()
ELSEIF(JDK_VERSION STREQUAL "8")
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        JDK
        ${JDK8_DARWIN} FOR DARWIN
        ${JDK8_LINUX} FOR LINUX
        ${JDK8_WINDOWS} FOR WIN32
    )
    IF(NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS AND NOT HOST_OS_DARWIN)
        MESSAGE(FATAL_ERROR Unsupported platform for JDK8)
    ENDIF()

    IF(OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK8_DARWIN})
    ELSEIF(OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK8_LINUX})
    ELSEIF(OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(WITH_JDK ${JDK8_WINDOWS})
    ENDIF()
ELSE()
    MESSAGE(FATAL_ERROR Unsupported JDK version)
ENDIF()

END()
