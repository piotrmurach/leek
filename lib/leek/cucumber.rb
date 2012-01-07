['api', 'cucumber/hooks'].each do |path|
  require "leek/#{path}"
end

World(Leek::Api)

Given /^file called "([^"]*)"$/ do |file_name|
  FakeFS::FileUtils.touch file_name
end

Given /^directory called "([^"]*)"$/ do |directory|
  FakeFS::FileUtils.mkdir directory
end

Given /^directory called "([^"]*)" exists$/ do |directory|
  FakeFS::FileSystem.find(directory).should_not be_nil
end

Given /^I remove directory called "([^"]*)"$/ do |directory|
  FakeFS::FileUtils.rmdir directory
end

Given /^directory called "([^"]*)" with files:$/ do |directory, text|
  text.split('\n').each do |file_name|
    step "file called \"#{file_name}\""
  end
end

Given /^file called "([^"]*)" with content:$/ do |file_name, file_content|
  unless FakeFS::FileSystem.files.include? file_name
    file = FakeFS::FakeFile.new
    file.content << file_content
    FakeFS::FileSystem.add file_name, file
  end
end

Given /^root directory$/ do
  chdir fs
end

Given /^current directory$/ do
  chdir current_dir
end

Given /^current directory with files:$/ do |text|
  text.split('\n').each do |file_name|
    step "file called \"#{file_name}\""
  end
end

Given /^I symlink "" to ""$/ do |target, source|
  ln_s target, source
end

Then /^the output should be empty$/ do
  step "the output should contain \"\""
end

When /^I execute `([^`]*)`$/ do |cmd|
  @stdin, @stdout, @stderr =  Open3.popen3 cmd
end

When /^I input "([^"]*)"$/ do |input|
  @stdin.puts input
end

Then /^the output contains "([^"]*)"$/ do |text|
  @stdout.gets.should =~ /#{text}/m
end

Then /^file called "([^"]*)" is a symlink$/ do |file_name|
  file_name.symlink?
end
