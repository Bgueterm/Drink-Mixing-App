require 'rails_helper.rb'

feature "Drinks page has descriptions" do
    scenario "CAN ENTER DRINKS PAGE THROUGH AGE CONFIRMATION" do
        visit drinks_path
        expect(page).to have_content("Description Area")
        expect(page).to have_content("Information Area")
        #DESCRIPTIONS LATER
        
    end
    scenario "Drinks page's Search button leads to drinks/search" do
        visit drinks_path
        click_link "Search"
        expect(page).to have_content("Drinks by Name")
        expect(page).to have_content("Liquor")
        expect(page).to have_content("Mixer")
        expect(page).to have_content("Flavor")
    end
end
        