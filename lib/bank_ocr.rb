module BankOcr
  # ...
  def self.process(input_file_name, output_file_name)
    file_contents = File.read(input_file_name)
    account_lines = Parse.account_lines(file_contents)
    account_numbers = Decode.account_numbers(account_lines)
    formatted_accounts = Format.account_numbers(account_numbers)
    File.write(output_file_name, formatted_accounts)
    puts "Results for #{input_file_name} have been exported to #{output_file_name}"
  end
end
