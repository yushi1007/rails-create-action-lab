require 'rails_helper'
# RSpec is a testing tool for Ruby, created for behavior-driven development (BDD). It is the most frequently used testing library for Ruby in production applications

describe StudentsController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new student" do
        expect{
          post :create, params: { :first_name => "Sam", :last_name => "Smith" }
        }.to change(Student,:count).by(1)
      end

      it "redirects to the new student" do
        post :create, params: { :first_name => "Sam", :last_name => "Smith" }
        expect(response).to redirect_to Student.last
      end
    end
  end

end
