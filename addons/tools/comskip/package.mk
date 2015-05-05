################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="comskip"
PKG_VERSION="0.93i"
PKG_REV="0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://forum.kodi.tv/showthread.php?tid=150084"
PKG_URL="http://www.xilka.com/xilka/source/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain argtable2 ffmpeg"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="ComSkip detects commercial breaks from a video stream. It can be used for post-processing recordings."
PKG_LONGDESC="ComSkip is a free video commercial detector. It is a console application that reads a video file and analyses the content based on a large amount of configurable parameters. After analysis it generates a file in various possible formats containing the location of the commercials inside the video file. Comskip can read MPEG and h.264 video, MPEG2, AC3 and AAC audio from PS , TS and dvr-ms files upto HD resolution (max 2000x1200) at 25fps (PAL) and 29.97fps (NTSC)."

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.python.script"

PKG_AUTORECONF="yes"

PKG_MAINTAINER="Olli Salonen (olli.salonen@iki.fi)"

PKG_DISCLAIMER="this is an unofficial addon. please don't ask for support in openelec forum / irc channel"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_func_realloc_0_nonnull=yes ac_cv_func_malloc_0_nonnull=yes"

MAKEFLAGS=-j1

makeinstall_target() {
  : # nop
}

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp $PKG_BUILD/.$TARGET_NAME/comskip $ADDON_BUILD/$PKG_ADDON_ID/bin/comskip.bin
}


