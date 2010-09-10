require 'spec_helper'

describe "posts/edit.html.haml" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :new_record? => false,
      :author => "MyString",
      :title => "MyString",
      :story => "MyString",
      :rating => 1
    ))
  end

  it "renders the edit post form" do
    render

    rendered.should have_selector("form", :action => post_path(@post), :method => "post") do |form|
      form.should have_selector("input#post_author", :name => "post[author]")
      form.should have_selector("input#post_title", :name => "post[title]")
      form.should have_selector("input#post_story", :name => "post[story]")
      form.should have_selector("input#post_rating", :name => "post[rating]")
    end
  end
end
