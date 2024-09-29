#!/usr/bin/env bash
deps="git-lfs lame piper"
echo "Sprawdzam czy mamy wszystkie narzędzia:"
for d in $deps; do
	echo -n "$d: "
	if $(which $d &> /dev/null); then
		echo "OK"
	else
		echo "BRAK"
		e=1
	fi
done
[ -n "$e" ] && echo "Brakuje narzędzi, doinstaluj to co brakuje wyżej" && exit 1
echo "Pobieram głosy"
git clone https://huggingface.co/rhasspy/piper-voices
pushd piper-voices/ >/dev/null
git lfs pull -I en/en_GB/
git lfs pull -I pl/pl_PL/
popd >/dev/null