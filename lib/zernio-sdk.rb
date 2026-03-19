# Zernio SDK - forwards to late-sdk for backwards compatibility
require 'late-sdk'

# Alias the module so both Late and Zernio work
Zernio = Late unless defined?(Zernio)
