require 'rugged'

module Jekyll
  class Commit < Liquid::Tag
    MATCHER = /\A(\S+)\Z/
    def render(context)
      path = Rugged::Repository.discover('.')
      repo = Rugged::Repository.new(path)
      sha = repo.head.target
      commit = repo.lookup(sha)
      message = commit.message.strip
      repo = @markup.strip.match(MATCHER)[1]

      "<a href=\"https://github.com/#{repo}/commit/#{sha}\" title=\"#{message}\">#{sha}</a>"
    end
  end
end

Liquid::Template.register_tag('commit', Jekyll::Commit)
