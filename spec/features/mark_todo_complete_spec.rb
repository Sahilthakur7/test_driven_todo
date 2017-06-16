require "rails_helper"

feature "mark todo as complete" do
    scenario "todo marked as complete" do
        sign_in

        create_todo("Buy milk")
        click_on "Mark complete"
        expect(page).to have_css ".todos li.completed",text: "Buy milk"
    end

end
