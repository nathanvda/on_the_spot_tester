require 'spec_helper'

describe "posts/index.html.haml" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :author => "Author",
        :title => "Title",
        :story => "Story",
        :rating => 1
      ),
      stub_model(Post,
        :author => "Author",
        :title => "Title",
        :story => "Story",
        :rating => 1
      )
    ])
  end

  it "renders a list of posts" do
    render
    rendered.should have_selector("tr>td", :content => "Author".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Story".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
