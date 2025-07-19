# Custom plugin: Reading Time Calculator
# This plugin adds a reading time estimate to posts

module ReadingTime
  def reading_time(content)
    words_per_minute = 200
    word_count = content.split.size
    reading_time = (word_count / words_per_minute.to_f).ceil
    
    if reading_time == 1
      "1 minute read"
    else
      "#{reading_time} minutes read"
    end
  end
end

# Register the filter
Liquid::Template.register_filter(ReadingTime)