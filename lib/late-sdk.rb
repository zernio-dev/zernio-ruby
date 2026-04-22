# Legacy entry point - forwards to zernio-sdk
require 'zernio-sdk'

# Alias the module so existing Late::... code keeps working
Late = Zernio unless defined?(Late)
