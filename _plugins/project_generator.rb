# Advanced Plugin: Project Statistics Generator
# This plugin generates project statistics and creates data files

Jekyll::Hooks.register :site, :post_write do |site|
  projects = site.collections['projects'].docs
  
  # Generate project statistics
  stats = {
    'total_projects' => projects.size,
    'completed_projects' => projects.select { |p| p.data['status'] == 'Completed' }.size,
    'in_progress_projects' => projects.select { |p| p.data['status'] == 'In Progress' }.size,
    'technologies' => projects.flat_map { |p| p.data['tech']&.split(', ') || [] }.uniq.compact,
    'last_updated' => Time.now.strftime('%Y-%m-%d')
  }
  
  # Write statistics to data file
  File.open(File.join(site.dest, 'project-stats.json'), 'w') do |f|
    f.write(JSON.pretty_generate(stats))
  end
  
  puts "✅ Generated project statistics: #{stats['total_projects']} projects"
end

# Custom Liquid Tag for embedding project stats
class ProjectStatsTag < Liquid::Tag
  def initialize(tag_name, markup, tokens)
    super
    @stat_name = markup.strip
  end

  def render(context)
    site = context.registers[:site]
    projects = site.collections['projects'].docs
    
    case @stat_name
    when 'total'
      projects.size
    when 'completed'
      projects.select { |p| p.data['status'] == 'Completed' }.size
    when 'in_progress'
      projects.select { |p| p.data['status'] == 'In Progress' }.size
    when 'technologies'
      projects.flat_map { |p| p.data['tech']&.split(', ') || [] }.uniq.compact.join(', ')
    else
      "Unknown stat: #{@stat_name}"
    end
  end
end

Liquid::Template.register_tag('project_stats', ProjectStatsTag)