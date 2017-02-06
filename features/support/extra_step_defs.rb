unless defined? EXTRA_STEP_DEFINED

Then /^the file "([^"]*)" should not contain '([^']*)'$/ do |file, partial_content|
  expect(file).not_to have_file_content(Regexp.new(Regexp.escape(partial_content)), true)
end

Then /^the file "([^"]*)" should not contain invalid letters$/ do |file|
  expect(file).not_to have_file_content(/[\u0000\u0001\u000b]/, true)
end

EXTRA_STEP_DEFINED = 1

end
