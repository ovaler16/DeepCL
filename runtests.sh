#!/bin/bash

for exe in testboardshelper testMnistLoader testfilehelper testlogicaloperators testsimpleconvolve; do {
    echo ./${exe}:
    eval ./${exe}
    if [[ $? != 0 ]]; then {
       echo ./${exe}: FAIL
       exit -1
    } fi;
} done;
