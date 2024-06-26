# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/predef
    REF boost-${VERSION}
    SHA512 8e15aa2ad79e0c567aa02f77edc3a80ece2e0e751f486d3feb3c70f1073dd5481ec01aa37a8137d00b2d7b002b8b51ef9229d07d5a744ccd6f26b4c83b6383a0
    HEAD_REF master
)

set(FEATURE_OPTIONS "")
boost_configure_and_install(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
)

file(COPY "${SOURCE_PATH}/libs/predef/tools/check" DESTINATION "${CURRENT_PACKAGES_DIR}/share/boost-predef")
