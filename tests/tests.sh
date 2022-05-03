#!/bin/bash -e

TEST_FILE=/tmp/py-test-file.py

test_01() {
    echo $FUNCNAME
    rm -f $TEST_FILE
    emacs --no-init-file -nw \
          --load ./tests/tests.el \
          --load py-autopep8.el \
          ./tests/01/before.py \
          -f py-autopep8-buffer \
          -f write-test-file \
          -f kill-emacs

    diff -u $TEST_FILE ./tests/01/after.py
    rm $TEST_FILE || true
}


test_02() {
    echo $FUNCNAME
    rm -f $TEST_FILE
    emacs --no-init-file -nw \
          --load ./tests/tests.el \
          --load ./tests/02/init.el  \
          --load py-autopep8.el \
          ./tests/02/before.py \
          -f py-autopep8-buffer \
          -f write-test-file \
          -f kill-emacs

    diff -u $TEST_FILE ./tests/02/after.py
    rm $TEST_FILE || true
}


test_03() {
    echo $FUNCNAME
    rm -f $TEST_FILE
    emacs --no-init-file -nw \
          --load ./tests/tests.el \
          --load ./tests/03/init.el  \
          --load py-autopep8.el \
          ./tests/03/before.py \
          -f py-autopep8-buffer \
          -f write-test-file \
          -f kill-emacs

    diff -u $TEST_FILE ./tests/03/after.py
    rm $TEST_FILE || true
}


test_04() {
    echo $FUNCNAME
    rm -f $TEST_FILE
    emacs --no-init-file -nw \
          --load ./tests/tests.el \
          --load py-autopep8.el \
          ./tests/04/before.py \
          -f py-autopep8-buffer \
          -f write-test-file \
          -f kill-emacs

    diff -u $TEST_FILE ./tests/04/after.py
    rm $TEST_FILE || true
}


test_05() {
    echo $FUNCNAME
    rm -f $TEST_FILE
    emacs --no-init-file -nw \
          --load ./tests/tests.el \
          --load ./tests/05/init.el \
          --load py-autopep8.el \
          ./tests/05/before.py \
          -f write-test-file \
          -f kill-emacs

    diff -u $TEST_FILE ./tests/05/after.py
    rm $TEST_FILE || true
}

main() {
    test_01
    test_02
    test_03
    test_04
    test_05
}

main
