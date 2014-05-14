# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.6.1"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.1"
github "gcc",        "2.0.100"
github "git",        "2.3.1"
github "homebrew",   "1.9.2"
github "hub",        "1.3.0"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.3"
github "nodejs",     "3.7.0"
github "openssl",    "1.0.0"
github "repository", "2.3.0"
github "ruby",       "8.0.2"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "shiftit",      "0.0.2"
github "opera",        "0.3.2"
github "vlc",          "1.1.0"
github "virtualbox",   "1.0.11"
github "iterm2",       "1.0.9"
github "mou",          "1.1.3"
github "colloquy",     "1.0.0"
github "dropbox",      "1.2.0"
github "transmission", "1.1.0"
github "cyberduck",    "1.0.1"
github "java",         "1.5.0"
github "mongodb",      "2.6.1"
github "flux",         "1.0.1"
github "firefox",      "1.2.0"
github "python",       "1.3.0"
