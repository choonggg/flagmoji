module Flagmoji
  class Country
    attr_reader :code, :name, :unicode, :emoji

    def initialize(code:, name:, unicode:, emoji:)
      @code = code
      @name = name
      @unicode = unicode
      @emoji = emoji
    end

    def self.from_data(data)
      new(data.transform_keys(&:to_sym))
    end

    def self.null
      new(
        code: "N/A",
        name: "Country missing",
        unicode: "",
        emoji: ""
      )
    end
  end
end
