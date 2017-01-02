fixtures() {
  FIXTURE_ROOT="$BATS_TEST_DIRNAME/fixtures/$1"
  RELATIVE_FIXTURE_ROOT="$(bats_trim_filename "$FIXTURE_ROOT")"
}

setup() {
  export TMP="$BATS_TEST_DIRNAME/tmp"
}

teardown() {
  [ -d "$TMP" ] && rm -f "$TMP"/*
}