# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nightlifebot_session',
  :secret      => 'ee9253510f41bc3184cf0565a6ae5db625273997d3ebe4660faede9ddda6f29fa0b8e6d89d0787598b44617a7a9f3e99297d101074d2ee33005f47255e841b44'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
