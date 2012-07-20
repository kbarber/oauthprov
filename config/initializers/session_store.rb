# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_oauthprov_session',
  :secret      => 'aba00dd7a0a01a088c7bb5bd15f02d948929e76230611a9104c582c573bd63bedc6329e52df81dc31a37d8b1ef7e4feefa4a39df34c593a2aa4b5f94de549b0b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
