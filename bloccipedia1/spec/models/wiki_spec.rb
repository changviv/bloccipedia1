require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe Wiki, type: :model do
  let(:title) { Faker::TwinPeaks.quote }
  let(:body) { Faker::Lorem.paragraph }
  let(:wiki) { create(:wiki) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(wiki).to have_attributes(title: wiki.title, body: wiki.body)
    end
  end
end
