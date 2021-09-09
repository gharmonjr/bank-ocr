# frozen_string_literal: true

module BankOcr
  class Export
    def self.write_to_file(export_file_name, formatted_accounts)
      file = File.open(export_file_name, 'w+')
      file.puts formatted_accounts
      file.close
    end
  end
end
