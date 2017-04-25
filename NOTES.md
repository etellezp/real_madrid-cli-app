Step 1:
  Create your Real Madrid gem using bundle gem real_madrid

Step 2:
  On your bin folder create your real-madrid file.
  Set up your real-madrid file #!/usr/bin/env ruby and test it.
  If it doesn't work then you have to give permissions to your file with cd bin
  after that make sure you use the command chmod +x real-madrid to give the proper permissions

Step 3:
  In the lib folder create your cli.rb file that will be call by the bin file with
  RealMadrid::CLI.new.call

Step 4:
  Require your files properly.
  in bin file real-madrid you need to require './lib/real_madrid'
  in lib file real_madrid.rb you need to require_relative './real_madrid/version'
  require './real_madrid/cli'

Step 5:
  Once your files are working properly, create your CLI interface with fake data.
  For example create a list_players method and a menu method with fake data
  in order to make sure your cli is working.

Step 6:
  When your fake data is working the way you want, is time for you to start making it real.
  
