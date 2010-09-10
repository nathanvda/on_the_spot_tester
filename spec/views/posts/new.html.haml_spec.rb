require 'spec_helper'

describe "posts/new.html.haml" do
  before(:each) do
    assign(:post, stub_model(Post,
      :new_record? => true,
      :author => "MyString",
      :title => "MyString",
      :story => "MyString",
      :rating => 1
    ))
  end

  it "renders new post form" do
    render

    rendered.should have_selector("form", :action => posts_path, :method => "post") do |form|
      form.should have_selector("input#post_author", :name => "post[author]")
      form.should have_selector("input#post_title", :name => "post[title]")
      form.should have_selector("input#post_story", :name => "post[story]")
      form.should have_selector("input#post_rating", :name => "post[rating]")
    end
  end
end
