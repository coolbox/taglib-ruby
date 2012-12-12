# Install script for directory: /home/matthew/taglib-1.8/taglib

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/matthew/taglib-linux-64")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag.so.1.12.0")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag.so.1.12.0"
         RPATH "")
  ENDIF(EXISTS "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag.so.1.12.0")
  FILE(INSTALL DESTINATION "/home/matthew/taglib-linux-64/lib" TYPE SHARED_LIBRARY FILES
    "/home/matthew/taglib-1.8/taglib/libtag.so.1.12.0"
    "/home/matthew/taglib-1.8/taglib/libtag.so.1"
    "/home/matthew/taglib-1.8/taglib/libtag.so"
    )
  IF(EXISTS "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag.so.1.12.0")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag.so.1.12.0")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF(EXISTS "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag.so.1.12.0")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "/home/matthew/taglib-linux-64/include/taglib" TYPE FILE FILES
    "/home/matthew/taglib-1.8/taglib/tag.h"
    "/home/matthew/taglib-1.8/taglib/fileref.h"
    "/home/matthew/taglib-1.8/taglib/audioproperties.h"
    "/home/matthew/taglib-1.8/taglib/taglib_export.h"
    "/home/matthew/taglib-1.8/taglib_config.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/taglib.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tstring.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tlist.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tlist.tcc"
    "/home/matthew/taglib-1.8/taglib/toolkit/tstringlist.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tbytevector.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tbytevectorlist.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tbytevectorstream.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tiostream.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tfile.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tfilestream.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tmap.h"
    "/home/matthew/taglib-1.8/taglib/toolkit/tmap.tcc"
    "/home/matthew/taglib-1.8/taglib/toolkit/tpropertymap.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/mpegfile.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/mpegproperties.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/mpegheader.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/xingheader.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v1/id3v1tag.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v1/id3v1genres.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/id3v2extendedheader.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/id3v2frame.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/id3v2header.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/id3v2synchdata.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/id3v2footer.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/id3v2framefactory.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/id3v2tag.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/attachedpictureframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/commentsframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/generalencapsulatedobjectframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/ownershipframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/popularimeterframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/privateframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/relativevolumeframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/textidentificationframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/uniquefileidentifierframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/unknownframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/unsynchronizedlyricsframe.h"
    "/home/matthew/taglib-1.8/taglib/mpeg/id3v2/frames/urllinkframe.h"
    "/home/matthew/taglib-1.8/taglib/ogg/oggfile.h"
    "/home/matthew/taglib-1.8/taglib/ogg/oggpage.h"
    "/home/matthew/taglib-1.8/taglib/ogg/oggpageheader.h"
    "/home/matthew/taglib-1.8/taglib/ogg/xiphcomment.h"
    "/home/matthew/taglib-1.8/taglib/ogg/vorbis/vorbisfile.h"
    "/home/matthew/taglib-1.8/taglib/ogg/vorbis/vorbisproperties.h"
    "/home/matthew/taglib-1.8/taglib/ogg/flac/oggflacfile.h"
    "/home/matthew/taglib-1.8/taglib/ogg/speex/speexfile.h"
    "/home/matthew/taglib-1.8/taglib/ogg/speex/speexproperties.h"
    "/home/matthew/taglib-1.8/taglib/flac/flacfile.h"
    "/home/matthew/taglib-1.8/taglib/flac/flacpicture.h"
    "/home/matthew/taglib-1.8/taglib/flac/flacproperties.h"
    "/home/matthew/taglib-1.8/taglib/flac/flacmetadatablock.h"
    "/home/matthew/taglib-1.8/taglib/ape/apefile.h"
    "/home/matthew/taglib-1.8/taglib/ape/apeproperties.h"
    "/home/matthew/taglib-1.8/taglib/ape/apetag.h"
    "/home/matthew/taglib-1.8/taglib/ape/apefooter.h"
    "/home/matthew/taglib-1.8/taglib/ape/apeitem.h"
    "/home/matthew/taglib-1.8/taglib/mpc/mpcfile.h"
    "/home/matthew/taglib-1.8/taglib/mpc/mpcproperties.h"
    "/home/matthew/taglib-1.8/taglib/wavpack/wavpackfile.h"
    "/home/matthew/taglib-1.8/taglib/wavpack/wavpackproperties.h"
    "/home/matthew/taglib-1.8/taglib/trueaudio/trueaudiofile.h"
    "/home/matthew/taglib-1.8/taglib/trueaudio/trueaudioproperties.h"
    "/home/matthew/taglib-1.8/taglib/riff/rifffile.h"
    "/home/matthew/taglib-1.8/taglib/riff/aiff/aifffile.h"
    "/home/matthew/taglib-1.8/taglib/riff/aiff/aiffproperties.h"
    "/home/matthew/taglib-1.8/taglib/riff/wav/wavfile.h"
    "/home/matthew/taglib-1.8/taglib/riff/wav/wavproperties.h"
    "/home/matthew/taglib-1.8/taglib/asf/asffile.h"
    "/home/matthew/taglib-1.8/taglib/asf/asfproperties.h"
    "/home/matthew/taglib-1.8/taglib/asf/asftag.h"
    "/home/matthew/taglib-1.8/taglib/asf/asfattribute.h"
    "/home/matthew/taglib-1.8/taglib/asf/asfpicture.h"
    "/home/matthew/taglib-1.8/taglib/mp4/mp4file.h"
    "/home/matthew/taglib-1.8/taglib/mp4/mp4atom.h"
    "/home/matthew/taglib-1.8/taglib/mp4/mp4tag.h"
    "/home/matthew/taglib-1.8/taglib/mp4/mp4item.h"
    "/home/matthew/taglib-1.8/taglib/mp4/mp4properties.h"
    "/home/matthew/taglib-1.8/taglib/mp4/mp4coverart.h"
    "/home/matthew/taglib-1.8/taglib/mod/modfilebase.h"
    "/home/matthew/taglib-1.8/taglib/mod/modfile.h"
    "/home/matthew/taglib-1.8/taglib/mod/modtag.h"
    "/home/matthew/taglib-1.8/taglib/mod/modproperties.h"
    "/home/matthew/taglib-1.8/taglib/it/itfile.h"
    "/home/matthew/taglib-1.8/taglib/it/itproperties.h"
    "/home/matthew/taglib-1.8/taglib/s3m/s3mfile.h"
    "/home/matthew/taglib-1.8/taglib/s3m/s3mproperties.h"
    "/home/matthew/taglib-1.8/taglib/xm/xmfile.h"
    "/home/matthew/taglib-1.8/taglib/xm/xmproperties.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

