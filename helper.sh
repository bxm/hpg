that='' 
this='' 
while true 
do this="$(stat hpg.rb)"
  [ "$this" = "$that" ] && sleep 2 && continue 
  echo "$this" 
  bundle exec ruby hpg.rb 
  that="$this" 
  sleep 5 
done
