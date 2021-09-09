# frozen_string_literal: true

module BankOcr
  class ExportFileName
    def self.create_file_name_from(original_file_name)
      "#{original_file_name}_out.txt"
    end
  end
end
