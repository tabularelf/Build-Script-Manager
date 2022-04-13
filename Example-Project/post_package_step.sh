#!/bin/bash

# ===Architect===

# Paths are being cleared for some reason on MacOS, for every single build script!!!
# So we're going to manually give back paths.
# In the event that fails, we'll inject neko in manually. Please ensure that you have neko in your PATH.
if [[ "$OSTYPE" == "darwin"* ]]; then
		export PATH=$PATH:/usr/local/opt/neko/bin
fi

pushd "$YYprojectDir"
neko ./architect.n -post -package
if [[ $? != 0 ]]; then
	exit $?
fi
popd

# ===Architect===

