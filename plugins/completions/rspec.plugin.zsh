#compdef rspec
# rspec autocompletion by git status
function __rspec() {
  compadd -J changes    -X "with git changes" -x "-- with git changes --" -P spec/ $(git status | grep "spec/" | sed "s/.*:\s*spec\///g")
  compadd -J no_changes -X "no changes"       -x "-- no changes --"       -P spec/ $(ls spec/**/*_spec.rb | sed -E "s/spec\///g")
}
compdef __rspec rspec
