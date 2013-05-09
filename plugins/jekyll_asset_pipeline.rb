require 'jekyll_asset_pipeline'

module JekyllAssetPipeline
  class SassConverter < JekyllAssetPipeline::Converter
    require 'sass'

    def self.filetype
      '.scss'
    end

    def convert
      begin
      	paths = ['../_assets/sass/']
        return Sass::Engine.new(@content, syntax: :scss, load_paths: paths, style: :compressed, images_dir: "source/images", fonts_dir: "source/fonts").render
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
      	return Uglifier.compile(@content, :copyright => false)
      rescue StandardError => e
      	puts e.message
      end
    end
  end

  class JavaScriptTagTemplate < JekyllAssetPipeline::Template
    def self.filetype
      '.js'
    end

    def html
      "<script async='true' src='/#{@path}/#{@filename}' type='text/javascript'></script>\n"
    end
  end

  class CssTagTemplate < JekyllAssetPipeline::Template
    def self.filetype
      '.css'
    end

    def html
      "<link href='/#{@path}/#{@filename}' rel='stylesheet' type='text/css' media='screen' />\n"
    end
  end
end
