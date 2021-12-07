require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  # context:
    ## To organize test code in blocks is recommended to aggregate code in pieces called "context"  
    ## Theses blocks could be organize by meaning, usability, function, region of software ou business rule  
    ## This makes easily its support and help you to understand the aims of that part of test. 
  
  # This block of code defines a region of test validation of field Title of Post.
      ## The first case is Post "Be valid"
        ### To Be valid the Post must have title and description.
      ## The second case is Post "Be invalid"
        ### To Be invalid the Post must not have title or description, or both.
  context "Models validation" do
    context "Post Title" do
      it 'Be valid' do
        # setup
        post = Post.new(title: 'Primeiro Post', description: 'Descrição primeiro Post')
        # process
        # validation
        expect(post).to be_valid
      end
      it 'Be invalid by title nil' do
        # setup
         post = Post.new(title: nil, description: 'Descrição primeiro Post')
        # process
        # validation
        expect(post).to_not be_valid
      end
      it 'Be invalid by title empty' do
        # setup
         post = Post.new(title: '', description: 'Descrição primeiro Post')
        # process
        # validation
        expect(post).to_not be_valid
      end
      it 'Be invalid by description nil' do
        # setup
         post = Post.new(title: 'Primeiro Post', description: nil)
        # process
        # validation
        expect(post).to_not be_valid
      end
      it 'Be invalid by description empty' do
        # setup
         post = Post.new(title: 'Primeiro Post', description: '')
        # process
        # validation
        expect(post).to_not be_valid
      end

      it "Content is valid" do
        # setup
        post = Post.new(title: 'Primeiro Post')
        
        # process
        post.valid?
        
        # validation
        expect(post.errors[:title]).to_not include("can't be blank")
      end

      it "Content is invalid" do
        # setup
        post = Post.new(title: '')
        
        # process
        post.valid?
        
        # validation
        expect(post.errors[:title]).to include("can't be blank")
      end
    end
    
    # This block of code defines a region of test validation of field Description of Post.
      ## The first case is description "Be valid"
        ### To Be valid the descriptio must not be nil or empty.
      ## The second case is description "Be invalid"
        ### To Be invalid the description should be nil or empty.
    context "Post Description" do
      it "Be valid" do
        # setup
        post = Post.new(title: "Segundo post", description: nil)
        
        # process
        post.valid?
        
        # validation
        expect(post.errors[:description]).to include("can't be blank")
      end
      it "Be invalid" do
        # setup
        post = Post.new(title: "Segundo post", description: "Descrição do segundo post")
        
        # process
        post.valid?
        
        # validation
        expect(post.errors[:description]).to_not include("can't be blank")
      end

      it "Content Be valid" do
        # setup
        post = Post.new(title: "Segundo post", description: '')

        # process
        post.valid?

        # validation
        expect(post.errors[:description]).to include("can't be blank")
      end
      it "Content Be invalid" do
        # setup
        post = Post.new(title: "Segundo post", description: 'Descrição do segundo post')

        # process
        post.valid?

        # validation
        expect(post.errors[:description]).to_not include("can't be blank")
      end
    end
  end
end