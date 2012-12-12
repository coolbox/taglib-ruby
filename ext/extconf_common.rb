# Default opt dirs to help mkmf find taglib
# Decide on the correct builds to use
configure_args = '--with-opt-dir=/usr/local:/opt/local:/sw'
compiled_version = ['taglib']
uname = `uname -a`.strip
vendor_dir = File.join(File.dirname(__FILE__), '../vendor')


if uname[/Linux/i]
  compiled_version << 'linux'
  dir = File.join(vendor_dir, 'cmake-src')
  cmake_bin_dir = File.join(vendor_dir, 'cmake-bin')
  cmd = "cd #{dir} && ./configure --prefix=#{cmake_bin_dir} && make && make install"
  puts "Running: '#{cmd}' in '#{`pwd`}'"
  puts `#{cmd}`

  dir = File.join(vendor_dir, 'taglib-src')
  taglib_bin_dir = File.join(vendor_dir, 'taglib-linux-64')
  cmd = "cd #{dir} && ../cmake-bin/ -DCMAKE_INSTALL_PREFIX=#{} && make && make install"
  puts "Running: '#{cmd}' in '#{`pwd`}'"
  puts `#{cmd}`
end

compiled_version << 'osx' if uname[/Darwin/i]
compiled_version << '64' if uname[/x86_64/i]

filename = File.join(vendor_dir, compiled_version.join('-'))



if File.exists? filename
  configure_args += ":#{filename}"
end

configure_args += ' '

puts 'configure_args = ' + configure_args.inspect

ENV['CONFIGURE_ARGS'] = configure_args + ENV.fetch('CONFIGURE_ARGS', "")

require 'mkmf'

unless `uname -a`.strip[/Linux/i] && `uname -a`.strip[/x86_64/i]
  def error msg
    message msg + "\n"
    abort
  end

  dir_config('tag')

  # When compiling statically, -lstdc++ would make the resulting .so to
  # have a dependency on an external libstdc++ instead of the static one.
  unless $LDFLAGS.split(" ").include?("-static-libstdc++")
    if not have_library('stdc++')
      error "You must have libstdc++ installed."
    end
  end

  if not have_library('tag')
    error <<-DESC
  You must have taglib installed in order to use taglib-ruby.

  Debian/Ubuntu: sudo apt-get install libtag1-dev
  Fedora/RHEL: sudo yum install taglib-devel
  Brew: brew install taglib
  MacPorts: sudo port install taglib
  DESC
  end
end

$CFLAGS << " -DSWIG_TYPE_TABLE=taglib"