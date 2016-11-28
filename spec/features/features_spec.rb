require 'spec_helper'

describe Database do
  context 'displaying on /get?' do
    scenario 'displays key' do
      visit '/set?mykey=myval'
      expect(page).to have_content 'myval'
    end
  end
end