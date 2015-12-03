target = ARGV[0]

if target == 'android'
  exec('bundle exec calabash-android console vodQAtestDemoApp.apk')
elsif target == 'ios'
  exec('')
else
  puts "Invalid target #{target}"
end