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



file = File.read("MockClass.cs")
file.scan(/public\s*([^\n\r]*)/) do |match|
  words = match[0].split
  graphName = words[1]
  graphType = words[0]
  if graphType != "class"
    puts graphName + ": " + GraphQLType(graphType)
  end
end






