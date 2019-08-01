def GraphQLType(csharpType)
  case csharpType.upcase
  when "DECIMAL"
    return "Float"
  when "INT"
    return "Int"
  when "STRING"
    return "String"
  when "BOOLEAN"
    return "Bool"
  when "DATETIME"
    return "String"
  when "GUID"
    return "ID"
  else
    "?"
  end
end

File.open("MockClass.cs", "r") do |f|
  f.each_line do |line|
     words = line.split
     name = words[2]
     type = words[1]
    puts name + ": " + GraphQLType(type)
  end
end



