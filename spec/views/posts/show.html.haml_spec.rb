require 'spec_helper'

describe "posts/show.html.haml" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :author => "Author",
      :title => "Title",
      :story => "Story",
      :rating => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Author".to_s)
    rendered.should contain("Title".to_s)
    rendered.should contain("Story".to_s)
    rendered.should contain(1.to_s)
  end
end
