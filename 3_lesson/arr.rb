# member1 = "s@tan"
# member2 = "death kn1ght"
# member3 = "blacK"
members = ["s@tan", "death kn1ght", "blacK"] # elements, тип string
# pipe |
#current_index = 0

members.each.with_index do |member, current_index| # BLOCK
  # инструкции, которые нужно сделать для каждого взятого элемента массива
  puts "another member"
  puts member
  puts current_index

  #current_index = current_index + 1
end

# puts member # НЕ ВИДНА!!!!!!