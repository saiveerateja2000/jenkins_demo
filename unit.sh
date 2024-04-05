#!/bin/bash

# Hardcoded values
number=10
OBJECT=($OBJECTS);
OBJECT_FIRST_THREE=("${OBJECT[@]:0:3}");

echo $OBJECTS;

for obj in "${OBJECT[@]}"; do
    echo ${obj};
    python3 -m venv pyvenv/$obj; \
    . pyvenv/${obj}/bin/activate; \
    echo $VIRTUAL_ENV
    if [[ " ${OBJECT_FIRST_THREE[@]} " =~ " ${obj} " ]]; then
    echo "$obj is in the first three elements of OBJECT"
    touch pyvenv/${obj}/${obj}_beta.txt
    pip3 install pylint > /dev/null 2>&1
    else
    exit 1
    fi
    deactivate
done
