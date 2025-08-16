ownership_entries = [
  "/app/**/1.rb @my-org/operations-team",
  "/app/**/2.rb @my-org/operations-team",
  "/app/**/3.rb @my-org/operations-team",
  "/app/**/4.rb @my-org/operations-team",
  "/app/**/5.rb @my-org/operations-team",
  "/app/**/6.rb @my-org/operations-team",
  "/app/**/7.rb @my-org/operations-team",
  "/app/**/8.rb @my-org/operations-team",
]

ownership_entries.sort do |entry1, entry2|
  result = if entry2.start_with?(entry1.split('**').first)
    -1
  elsif entry1.start_with?(entry2.split('**').first)
    1
  else
    entry1 <=> entry2
  end

  puts "#{entry1} <=> #{entry2}: #{result}"

  result
end

ownership_entries
