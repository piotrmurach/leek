require 'fileutils'
require 'fakefs'

module Leek
  module Api

    def remove_dir dir_name
      FakeFS::FileUtils.rmdir dir_name
    end

    def write_file file_name, file_content
    end

  private

    def _create_file
      FakeFile.new
    end

  end # Api
end # Leek
