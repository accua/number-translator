require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the title case path", {:type => :feature}) do
  it("processes the user entry and returns it in plain english") do
    visit("/form")
    fill_in("number", :with => 987456)
    click_button("Convert to words!!!!")
    expect(page).to have_content("nine hundred eighty seven thousand four hundred fifty six")
  end
end
