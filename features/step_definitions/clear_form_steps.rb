Then /^All text fields are empty for the form with selector "(.*)"$/ do |form_selector|
	within(form_selector) do
		all("input[type=text]").each do |text_field|
			text_field.value.should be_empty
		end
		all("textarea").each do |textarea|
			textarea.value.should be_empty
		end
	end
end

Then /^I should have filled in "(.*)" for "(.*)"$/ do |value, field|
	expect(body).to have_field(field, with: value)
end

Then /^the "(.*)" should not be checked$/ do |field|
	expect(page).to have_field(field, checked: false)
end