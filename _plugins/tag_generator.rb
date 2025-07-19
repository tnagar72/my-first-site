# Advanced Generator: Tag Pages
# This generator creates individual pages for each tag

class TagPageGenerator < Jekyll::Generator
  safe true

  def generate(site)
    # Get all tags from posts and projects
    tags = Set.new
    
    site.posts.docs.each do |post|
      post.data['tags']&.each { |tag| tags << tag }
    end
    
    site.collections['projects'].docs.each do |project|
      project.data['tags']&.each { |tag| tags << tag }
    end
    
    # Create a page for each tag
    tags.each do |tag|
      site.pages << TagPage.new(site, site.source, tag)
    end
  end
end

class TagPage < Jekyll::Page
  def initialize(site, base, tag)
    @site = site
    @base = base
    @dir = "tags"
    @name = "#{tag}.html"

    self.process(@name)
    self.read_yaml(File.join(base, '_layouts'), 'tag.html')
    self.data['tag'] = tag
    self.data['title'] = "Tagged: #{tag}"
  end
end