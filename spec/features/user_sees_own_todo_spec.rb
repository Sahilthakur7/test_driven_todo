require "rails_helper"

feature "User sees own todo" do
    scenario "doesnt see others todo" do
        Todo.create!(title: "buy milk",email: "someone_else@example.com")

        sign_in_as "someone@example.com"

        expect(page).not_to have_css ".todos li",text: "Buy milk"
    end
end
