o = []

File.open( "slovnik_data_utf8.txt" ).each do |line|
  
  #puts line
  
  #start parsing if a line contains tab
   if line =~ /\t/
   
     #split the line with tabs
     words = line.split(/\t/)
     
     #czech word is the second
     w = words[1].strip
     
     o << w unless w.strip==""   
     
   end

end

o = o.sort
o.uniq! #remove duplicate words

File.open("wordlists/czech", 'w') do |file|
  
  o.each do |word|
    file.write word
    file.write "\n"
  end
  
end



