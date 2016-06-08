# fix error running identify when [0] is added to file so we remove ref. to [0] in file path
module Paperclip
  class Geometry
    def self.from_file(file)
      file_path = file.respond_to?(:path) ? file.path : file
      raise(Errors::NotIdentifiedByImageMagickError.new("Cannot find the geometry of a file with a blank name")) if file_path.blank?
      geometry = begin
        silence_stream(STDERR) do
          Paperclip.run("identify", "-format %wx%h :file", file: "#{file_path}")
        end
      rescue Cocaine::ExitStatusError
        ""
      rescue Cocaine::CommandNotFoundError
        raise Errors::CommandNotFoundError.new("Could not run the `identify` command. Please install ImageMagick.")
      end
      parse(geometry) ||
      raise(Errors::NotIdentifiedByImageMagickError.new("#{file_path} is not recognized by the 'identify' command."))
    end
  end
end