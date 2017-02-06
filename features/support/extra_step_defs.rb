unless defined? EXTRA_STEP_DEFINED

Then /^the file "([^"]*)" should not contain '([^']*)'$/ do |file, partial_content|
  expect(file).not_to have_file_content(Regexp.new(Regexp.escape(partial_content)), true)
end

EXTRA_STEP_DEFINED = 1

end
