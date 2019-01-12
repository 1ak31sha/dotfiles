#items = `cat ~/workspace/task-manager/emcm-ui/make_prettier2`
items = `cat ~/workspace/dotfiles/ruby/more_mds`
#Dir.chdir("~/workspace/emcm-ui/ruby") do

  items.each_line {|item, index|
    system('prettier --trailing-comma all --tab-width 2 --no-semi false --single-quote true --write ' + item)
    #`prettier --trailing-comma all --write #{item}`
  }
#end

