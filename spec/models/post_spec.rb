require 'spec_helper'
require File.join(@root_path, '/lib/models/post')

describe Post do
  describe '.slug' do
    let(:date) { 'Fri Dec 25 17:12:39 -0800 2015' }
    let(:title) { 'My Awesome Trip to Shangri-la'}

    xit 'returns a correctly formatted post filename' do
      expect(Post::filename(title, date)).to eq('2015-12-25-my-awesome-trip-to-shangri-la.md')
    end
  end
end

describe Post::Review do
  let(:review) { described_class.new(options) }
  let(:options) { {} }
  let(:valid_options) do
    {
      title: title,
      body: body,
      rating: rating,
      author: author,
      image_url: image_url
    }
  end
  let(:body) { 'This is a really cool post' }
  let(:rating) { '4' }
  let(:author) { 'George Orwell' }
  let(:image_url) { 'http://bretthard.in/assets/images/book.jpg' }
  let(:title) { 'cool post' }
  let(:file) { StringIO.new }

  before :all do
    CONFIG = {
      post_directory: 'tmp'
    }
  end

  context 'when missing body' do
    let(:options) { valid_options.reject!{ |k| k == :body } }

    it 'fails' do
      expect{review}.to raise_error(/body/)
    end
  end

  context 'when missing title' do
    let(:options) { valid_options.reject!{ |k| k == :title } }

    it 'fails' do
      expect{review}.to raise_error(/title/)
    end
  end

  describe '#write' do
    let(:options) { valid_options }

    describe 'the IO' do
      before :each do
        review.write(file)
      end

      it 'includes layout' do
        file.string.should include('layout: "shelf-talker"')
      end

      it 'includes category' do
        file.string.should include('category: "reviews"')
      end

      it 'includes author' do
        file.string.should include('author: ')
      end

      it 'includes rating' do
        file.string.should include('rating: ')
      end

      it 'includes title' do
        file.string.should include("title: \"#{title}\"")
      end

      it 'includes image_url' do
        file.string.should include('image_url: ')
      end

      describe 'the body' do
        it 'includes the body of the review' do
          file.string.should include('This is a really cool post')
        end

        context 'when it contains html' do
          let(:body) { 'This is <b>really strong</b> post.'}

          it 'changes to markdown' do
            file.string.should include('This is **really strong** post.')
          end
        end
      end
    end
  end
end
