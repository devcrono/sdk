#!/usr/bin/env bash
#   Copyright (C) 2024 John Törnblom
#
# This file is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING. If not see
# <http://www.gnu.org/licenses/>.

PS5_PAYLOAD_SDK="${BASH_SOURCE[0]}"
PS5_PAYLOAD_SDK="$(dirname "${PS5_PAYLOAD_SDK}")"
PS5_PAYLOAD_SDK="${PS5_PAYLOAD_SDK}/.."
PS5_PAYLOAD_SDK="$(realpath "${PS5_PAYLOAD_SDK}")"

export PS5_PAYLOAD_SDK=${PS5_PAYLOAD_SDK}
export PS5_SYSROOT=${PS5_PAYLOAD_SDK}/sysroot
export PS5_DEPLOY=${PS5_PAYLOAD_SDK}/bin/prospero-deploy

export CC=${PS5_PAYLOAD_SDK}/bin/prospero-clang
export CXX=${PS5_PAYLOAD_SDK}/bin/prospero-clang++
export AS=${PS5_PAYLOAD_SDK}/bin/prospero-clang
export LD=${PS5_PAYLOAD_SDK}/bin/prospero-ldd

export AR=llvm-ar
export NM=llvm-nm
export OBJCOPY=llvm-objcopy
export RANLIB=llvm-ranlib
export STRIP=llvm-strip
export STRINGS=strings

export CMAKE=${PS5_PAYLOAD_SDK}/bin/prospero-cmake
export PKG_CONFIG=${PS5_PAYLOAD_SDK}/bin/prospero-pkg-config
