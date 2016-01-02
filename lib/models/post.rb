require 'reverse_markdown'

module Post
  def self.filename(title, date=nil)
    if date
      date = Time.strptime(date, '%a %b %e %T %z %Y')
    else
      date = Time.now
    end

    date.strftime('%F') +
    '-' +
    title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '') +
    '.md'
  end

  class Post
    def initialize(options = {})
      @title = options[:title]
      @category = options[:category] || category
      @yml_front_matter = {
        title: @title,
        image_url: options[:image],
        image_credit: options[:image_credit],
        image_credit_url: options[:image_credit_url],
        layout: layout,
        category: @category,
        tags: '[]',
        meta_description: ''
      }
    end

    def write(io_object)
      io_object << '---' << "\n"

      @yml_front_matter.each do |k, v|
        if k == :rating
          io_object << k.to_s << ': ' << v << "\n"
        else
          io_object << k.to_s << ': "' << v.to_s << '"' << "\n"
        end
      end

      io_object << '---' << "\n\n"

      io_object << text << "\n\n"

      io_object
    end

    private

    # I know there is a better way to do this.
    def layout
      'post'
    end

    def category
      'blog'
    end

    def text
      'This is the body of the post.'
    end
  end

  class Empty < Post
    def initialize(options = {})
      super
      @yml_front_matter = options
    end

    def text
      ''
    end
  end

  class Review < Post
    def layout
      'shelf-talker'
    end

    def category
      'reviews'
    end

    def initialize(opts={})
      fail('no title given') unless opts[:title]
      fail('no body given') unless opts[:body]

      super

      opts.each do |k, v|
        @yml_front_matter[k] = v unless k == :body
      end

      @body = opts[:body]
    end

    private

    def text
      ReverseMarkdown.convert(@body.strip)
    end
  end
end