Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets')

Rails.application.config.assets.precompile += %w( worker.js )

Rails.configuration.assets.precompile += %w[serviceworker.js manifest.json]
