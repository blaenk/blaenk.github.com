require 'jekyll_asset_pipeline'

module JekyllAssetPipeline
  class SassConverter < JekyllAssetPipeline::Converter
  	require 'compass'

    def self.filetype
      '.scss'
    end

    def convert
      begin
      	# current dir is _includes/
      	# Compass.add_project_configuration *Compass.configuration_for('../../config.rb')
      	#compiler = Compass::Compiler.new("../../", "../_assets/sass/", "../../public/assets/", sass: Compass.sass_engine_options)
      	#engine = compiler.engine("../_assets/sass/", @content)
      	#engine.render
      	paths = ['../_assets/sass/']
   	    paths << "#{Gem.loaded_specs['compass'].full_gem_path}/frameworks/compass/stylesheets/"
        return Sass::Engine.new(@content, syntax: :scss, load_paths: paths, style: :compressed).render
      rescue StandardError => e
      	puts e.message
      end
    end
  end

  class JavaScriptCompressor < JekyllAssetPipeline::Compressor
    require 'uglifier'

    def self.filetype
      '.js'
    end

    def compress
      begin
      	return Uglifier.compile(@content)
      rescue StandardError => e
      	puts e.message
      end
    end
  end
end