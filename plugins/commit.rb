require 'rugged'

module Jekyll
  class Commit < Liquid::Tag
    MATCHER = /\A(\S+)\Z/
    def render(context)
      path = Rugged::Repository.discover('.')
      repo = Rugged::Repository.new(path)

      sha = repo.head.target
      message = repo.lookup(sha).message.strip
      markup = @markup.strip

      if not markup.empty?
        repo = markup.match(MATCHER)[1]
        "<a href=\"https://github.com/#{repo}/commit/#{sha}\" title=\"#{message}\">#{sha[0...8]}</a>"
      else
        "<span title=\"#{message}\">#{sha[0...8]}</span>"
      end
    end
  end
end

Liquid::Template.register_tag('commit', Jekyll::Commit)
