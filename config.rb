# Ignore JetBrains IDE's project folder
config[:file_watcher_ignore] += [ /.idea\// ]

###
# Compass
###

# Change Compass configuration
compass_config do |config|
  config.output_style = :compressed
  config.sass_options = { :line_comments => false }
end

###
# Helpers
###

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload, no_swf:true

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  activate :relative_assets
end

set :sass_dir, 'sass'

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

activate :google_analytics do |ga|
  # Property ID (default = nil)
  ga.tracking_id = 'UA-XXXXXXX-X' # Replace with your property ID.

  # Tracking across a domain and its subdomains (default = nil)
  # ga.domain_name = ''

  # Tracking in development environment (default = true)
  ga.development = false

  # Compress the JavaScript code (default = false)
  ga.minify = true
end

# Build-specific configuration
configure :build do
  activate :minify_html do |html|
    html.remove_multi_spaces        = true   # Remove multiple spaces
    html.remove_comments            = true   # Remove comments
    html.remove_intertag_spaces     = true  # Remove inter-tag spaces
    html.preserve_line_breaks       = false  # Preserve line breaks
  end

  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash
  activate :cache_buster

  # Use relative URLs
  activate :relative_assets
end
