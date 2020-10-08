require "flagmoji/version"
require "flagmoji/country"
require "json"

module Flagmoji
  extend self

  def data_file
    File.expand_path("../../data/flags.json", __FILE__)
  end

  def all
    @all ||= map_data_to_country
  end

  def from_code(code)
    all[code] || Country.null
  end

  alias_method :[], :from_code

  private

  def map_data_to_country
    json = JSON.parse(File.read(data_file))

    Hash[json.map { |country, data| [country, Country.from_data(data)] }]
  end
end
