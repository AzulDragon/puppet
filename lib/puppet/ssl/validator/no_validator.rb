require 'puppet/ssl/openssl_loader'
require 'puppet/ssl'

# Performs no SSL verification
#
# @deprecated
# @api private
#
class Puppet::SSL::Validator::NoValidator < Puppet::SSL::Validator

  def setup_connection(connection)
    connection.verify_mode = OpenSSL::SSL::VERIFY_NONE
  end

  def peer_certs
    []
  end

  def verify_errors
    []
  end
end
