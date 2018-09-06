def pig_it text
  text.split(' ').map do |word|
    word =~ /\W/ ? word : word[1..-1] + word[0] + 'ay'
  end.join(' ')
end
