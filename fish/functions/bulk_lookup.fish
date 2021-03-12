function bulk_lookup
  while read -l line
    set_color normal;
    echo $line
    set ip (dig +short $line)
    if test "$ip" = ""
      set_color red; echo "Keine IP"
    else
      set_color green; echo $ip
    end
  end
  set_color normal;
end