include ApplicationHelper

RSpec::Matchers.define  :have_error_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: message)
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
        page.should have_selector('div.alert.alert-success', text: message)
  end
end

RSpec::Matchers.define :have_as_title do |name|
  match do |page|
    page.should have_selector('title', text: name)
  end
end

RSpec::Matchers.define :have_as_header do |name|
  match do |page|
    page.should have_selector('h1', text: name)
  end
end

