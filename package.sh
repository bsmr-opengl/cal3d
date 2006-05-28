#!/usr/bin/env bash

MANIFEST="full"
PKGNAME="cal3d-0.11rc1"
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

	exit 1
fi

shift $((${OPTIND} - 1))

if [ -n "${MANIFEST}" -a -f "${MANIFEST}.manifest" ]; then
	CAL3D_FILES="$(cat "${MANIFEST}.manifest")"

	if [ -z "${PKGONLY}" ]; then
		for F in ${CAL3D_FILES}; do
			ADD="${1}/cal3d"
			SRC="${ADD}/${F}"
			DIR="$(dirname "${SRC/${ADD}/${PKGNAME}}")"
		
			if [ -f "${SRC}" ]; then	
				if [ -n "${VERBOSE}" ]; then
					echo "COPYING: ${SRC}"
				fi

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
		case "${PKGTYPE}" in
			"bz2")
				tar -cjf "${PKGNAME}.tbz2" "${PKGNAME}"
			;;

			"gz")
				tar -czf "${PKGNAME}.tgz" "${PKGNAME}"
			;;

			"zip")
				zip -qr "${PKGNAME}.zip" "${PKGNAME}"
			;;

			*)
				echo "Unknown PKGTYPE ${PKGTYPE}; Skipping."
			;;
		esac
	
	else
		echo "Skipping package creation."
	fi
	
else
	echo "nope"

	exit 2
fi
