function fb
  set base_path '/Users/andreasbade/repos/'
  switch (echo $argv)
  case 'w'
    set path "$base_path/finderbox/finderbox-web-client"
  case 'p'
    set path "$base_path/fb-provisioning"
  case 'm'
    set path "$base_path/finderbox-mobileapp"
  case 'am'
    set path "$base_path/angular-modules"
  case a api
    set path "$base_path/angular-modules/finderbox-api"
  case 't'
    set path "$base_path/angular-modules/finderbox-translations"
  case 'f'
    set path "$base_path/finderbox/finderbox"
  case 'ace'
    set path "$base_path/ace"
  case '*'
    echo "Do not know where to go! Going to finderbox default."
    set path "$base_path/finderbox/finderbox"
  end
  cd $path
end
