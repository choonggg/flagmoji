require_relative "./spec_helper.rb"

describe Flagmoji do
  describe ".[]" do
    it "gets country data with emoji" do
      country = Flagmoji["SG"]

      _(country).must_be_kind_of Flagmoji::Country
      _(country.name).must_equal "Singapore"
    end
  end

  describe ".all" do
    it "returns all flags in hash" do
      _(Flagmoji.all).must_be_kind_of Hash
    end
  end
end
