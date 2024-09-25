#!/usr/bin/env bash
GIT_CLONE_PROTECTION_ACTIVE=false git clone https://huggingface.co/rhasspy/piper-voices
pushd piper-voices/
git lfs pull -I en/en_GB/alan/medium/
git lfs pull -I pl/pl_PL/gosia/medium/
popd
