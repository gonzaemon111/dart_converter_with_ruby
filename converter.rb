require 'fileutils'

current_dir = Dir.pwd
file_name = ARGV[0]

file_path = current_dir + "/" + file_name
base_file_path = current_dir + "/base/" + file_name.gsub(".dart", "") + "_base" + ".dart"

FileUtils.cp(file_path, base_file_path)
FileUtils.rm(file_path)

File.open(file_path, 'w') do |output|

  copy_ary = []
  init_str = "\n  "
  from_json_str = "\n  "
  to_json_str = "\n  "

  File.open(base_file_path) do |file|

    class_name = ""

    file.each_line.with_index do |line, index|
      if index == 0
        class_name = line.gsub("class", "")
        class_name.gsub!("{", "")
        class_name.gsub!(" ", "")
        class_name.gsub!("\r\n", "")
        class_name.gsub!("\n", "")
        init_str = init_str + class_name + "({"
        from_json_str = from_json_str + "factory " + class_name + ".fromJson(Map<String, dynamic> json) {\n    return " + class_name + "("
        to_json_str = to_json_str + "Map<String, dynamic> toMap() => {"
      end
      copy_ary << line

      if (line.include?(" ") && line.include?(";"))
        start_index = line.rindex(" ")
        end_index = line.rindex(";")
        key = line.slice(start_index + 1, end_index - start_index - 1)
        init_str = init_str + "\n    this." + key + ", "
        from_json_str = from_json_str + "\n      " + key + ": " + "json['" + key + "'],"
        to_json_str = to_json_str + "\n    " + "'" + key + "': " + key + ","
      end

    end

  end

  copy_ary.each_with_index { |content, index|
    output.puts(content) if (index != copy_ary.length - 1)
  }
  init_str = init_str + "\n  });"
  output.puts(init_str)
  from_json_str = from_json_str + "\n    );\n  }"
  output.puts(from_json_str)
  to_json_str = to_json_str + "\n  };\n}"
  output.puts(to_json_str)

end