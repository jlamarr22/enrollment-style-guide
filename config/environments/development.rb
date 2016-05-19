Rails.application.configure do

#do no compress assets
config.assets.compress = false

# Expands the lines which load the assets
config.assets.debug = true

 # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true


end