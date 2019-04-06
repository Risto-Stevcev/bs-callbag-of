@test "CommonJS output should work in node" {
  run diff <(echo 246) <(node lib/js/Example.bs.js)
  [ "$status" -eq 0 ]
}

@test "ES6 output should work in node with esm" {
  run diff <(echo 246) <(node -r esm lib/es6/Example.bs.js)
  [ "$status" -eq 0 ]
}
