# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_demo_session',
  :secret      => 'adc40eefc7280a33f27df764cd64c75bc6bcfe2dc4724b4d44fa9f3c09422543a721bff73709c52cf325d19f394a17443dc0e59f38a2eb628a5475fb6c956f5b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
