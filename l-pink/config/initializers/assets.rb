# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.

Rails.application.config.assets.precompile += %w( materialize.min.css ) 
Rails.application.config.assets.precompile += %w( bootstrap-wysihtml5.css ) 
Rails.application.config.assets.precompile += %w( paletaColores.css ) 
Rails.application.config.assets.precompile += %w( font-awesome.min.css ) 
Rails.application.config.assets.precompile += %w( materialize.min.js ) 
Rails.application.config.assets.precompile += %w( wysihtml-toolbar.min.js ) 
Rails.application.config.assets.precompile += %w( advanced_and_extended.js )
Rails.application.config.assets.precompile += %w( jquery.tooltipster.min.js )
Rails.application.config.assets.precompile += %w( tooltipster.css )
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
