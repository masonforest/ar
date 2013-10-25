module Far
  class CLI
    def run(*args)
      @args = *args
      if File.directory?(subject)
        files_in_directory(subject).each {|file| execute(match, replacement, file)}
      else
        execute(match, replacement, subject)
      end
    end

    def self.run(*args)
      new.run(*args)
    end

    private

    def execute(match, replacement, file)
      IO.write(file, IO.read(file).gsub(/#{match}/, replacement))
    end

    def match
      @args[0]
    end

    def replacement
      @args[1]
    end

    def subject
      @args[2] || '.'
    end

    def files_in_directory(directory)
      Dir["#{directory}/**/*"].reject {|file| File.directory?(file) }
    end
  end
end
