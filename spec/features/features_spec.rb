require 'spec_helper'

describe Database do
  context 'submitting to /set?' do
    scenario 'redirects to /get with params' do
      visit '/set'
      expect(current_path).to eq '/get'
    end
  end

  context 'displaying on /get?' do
    scenario 'displays key' do
      visit '/set?key=mykey'
      expect(current_path).to eq '/get?key=mykey'
      expect(page).to eq 'mykey'
    end
  end
end