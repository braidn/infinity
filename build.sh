#!/bin/bash
# Configure and build firmware for my infinity keyboard.
# Invoke this script from the ./build subdirectory of the controller.

# This directory, where the source files are located.
SOURCE_DIR=$(dirname ${BASH_SOURCE[0]})
SOURCE_DIR=${SOURCE_DIR%/} #kll/infinity

# Configure the build.
cmake                                                                   \
      -DCHIP=mk20dx128vlf5                                              \
      -DScanModule=MD1                                                  \
      -DMacroModule=PartialMap                                          \
      -DOutputModule=pjrcUSB                                            \
      -DDebugModule=full                                                \
      -DBaseMap=defaultMap                                              \
      -DDefaultMap="config/md1Overlay config/stdFuncMap"                \
      -DPartialMaps="config/hhkbpro2;config/viKeys config/arrowKeys"    \
      ..

# Rebuild.
make clean
make -j8 VERBOSE=1
