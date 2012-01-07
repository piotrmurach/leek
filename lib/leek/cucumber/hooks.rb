Before "@fake" do
  FakeFS.activate!
end

After "@fake" do
  FakeFS::FileSystem.clear
  FakeFS.deactivate!
end
