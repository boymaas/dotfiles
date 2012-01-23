#!/usr/bin/env ruby 

# SnipperDir
#
# Class which will scan a directory and stores an
# internal array of snippets. 
#
# Filename, keystroke, and snippetcontents are stored.
# 
# When a scan on a SnippetDir is performed, an instance of snipperdir
# is returned. Now we can do different actions on this snipperdir.
#
# We can for example dump the directory in different formats. Textual, but also
# generate a nice pdf.

class Snippet < Struct.new(:keystrokes, :content)
end

class DefaultSnippetDumper
  def self.dump(snip)
    puts "-" * 20 + "> #{snip.keystrokes}"
    puts snip.content
  end
end

class SnippetDir
  class << self
    attr_writer :dumper
    def dumper
      @dumper ||= DefaultSnippetDumper
    end

    def dump_ruby_snippets()
      foreach_snippet_in_snippetdir do |snippet|
        dumper.dump(snippet)
      end
    end

    private

    def foreach_snippet_in_snippetdir
      find_mode_dirs(/^ruby$/).each do |mode_dir|
        scan_mode_dir(mode_dir).each do |snippet|
          yield(snippet)
        end
      end
    end

    def find_mode_dirs(pattern)
      Dir['*'].grep( pattern )
    end

    def scan_mode_dir(file_mode)
      Dir["#{file_mode}/*"].map do |snip|
        keystrokes = snip.match(%r{/(\w+)\.snippet})[1]
        Snippet.new(keystrokes, spit(snip))
      end
    end

    def spit(f)
      File.open(f).read
    end
  end
end

SnippetDir.dump_ruby_snippets

