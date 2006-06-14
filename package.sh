#!/usr/bin/env bash

# This script by Jeremy Moles (jeremy@emperorlinux.com) is used for 
# automatically building the release packages. We can delete it, I guess,
# if people think it's too ghetto.

MANIFEST="full"
PKGNAME="cal3d-0.11rc2"
PKGTYPE="bz2"
VERBOSE=""
CREATEONLY=""
PKGONLY=""

if [ "${#}" -gt "0" ]; then
	while getopts "m:n:t:vcp" OPTION; do
		case "${OPTION}" in
			"m")
				MANIFEST="${OPTARG}"
			;;		

			"n")
				PKGNAME="${OPTARG}"
			;;

			"t")
				PKGTYPE="${OPTARG}"
			;;

			"v")
				VERBOSE="true"
			;;

			"c")
				CREATEONLY="true"
			;;

			"p")
				PKGONLY="true"
			;;

			*)
				echo "Unknown option: ${OPTARG}"
			;;
		esac
	done

else
	echo "usage: ./package.sh [OPTIONS] DIRECTORY"
	echo
	echo "The following OPTIONS are available:"
	echo
	echo "   -m MANIFEST: specify the manifest file; deafult is ${MANIFEST}"
	echo "   -n PKG_NAME: specify the pkg dir name; default is ${PKGNAME}"
	echo "   -t PKG_TYPE: one of bz2, gz, or zip; default is ${PKGTYPE}"
	echo "   -v: be verbose"
	echo "   -c: only create the pkg directory; do not archive."
	echo "   -p: only archive the pkg directory; do not recreate."
	echo 
	echo "Examples:"
	echo 
	echo "   ./package -vn cal3d-0.11rc1 tags/release-0_11rc1_0"
	echo "   ./package -pn cal3d-0.11 trunk"
	echo
	echo "...or however you want to do it. Naturally, it doesn't make"
	echo "much sense to use both -c and -p in the same invocation."

	exit 1
fi

shift $((${OPTIND} - 1))

if [ -n "${MANIFEST}" -a -f "${MANIFEST}.manifest" -a -d "${1}" ]; then
	CAL3D_FILES="$(cat "${MANIFEST}.manifest")"

	if [ -z "${PKGONLY}" ]; then
		[ -n "${VERBOSE}" ] && echo "Creating package directory: ${PKGNAME}"
	
		for F in ${CAL3D_FILES}; do
			ADD="${1}/cal3d"
			SRC="${ADD}/${F}"
			DIR="$(dirname "${SRC/${ADD}/${PKGNAME}}")"
		
			if [ -f "${SRC}" ]; then	
				[ -n "${VERBOSE}" ] && echo "COPYING: ${SRC}"

				if [ ! -d "${DIR}" ]; then
					mkdir -p "${DIR}"
				fi

				cp -a "${SRC}" "${DIR}"
			
			else
				echo "${SRC} not found; check manifest!"
			fi
		done
	
	else
		echo "Skipping directory creation."
	fi

	if [ -z "${CREATEONLY}" -a -d "${PKGNAME}" ]; then
		[ -n "${VERBOSE}" ] && echo -n "Creating package: "
	
		case "${PKGTYPE}" in
			"bz2")
				[ -n "${VERBOSE}" ] && echo "${PKGNAME}.tbz2"

				tar -cjf "${PKGNAME}.tar.bz2" "${PKGNAME}"
			;;

			"gz")
				[ -n "${VERBOSE}" ] && echo "${PKGNAME}.gz"
				
				tar -czf "${PKGNAME}.tar.gz" "${PKGNAME}"
			;;

			"zip")
				[ -n "${VERBOSE}" ] && echo "${PKGNAME}.zip"
				
				zip -qr "${PKGNAME}.zip" "${PKGNAME}"
			;;

			*)
				[ -n "${VERBOSE}" ] && echo "???"
			
				echo "Unknown PKGTYPE ${PKGTYPE}; Skipping."
			;;
		esac
	
	else
		echo "Skipping package creation."
	fi
	
else
	echo "It looks like you've passed a bad manifest name or that the directory"
	echo "you specified doesn't exist. Please check both of these things and"
	echo "re-run this script properly."

	exit 2
fi

#scp FILES cubicool@download.gna.org:/upload/cal3d/
