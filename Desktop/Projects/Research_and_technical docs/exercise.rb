#String.length
#Returns the character length of str.
puts "Marina".length

#String.strip
#strip → new_str click to toggle source
#Returns a copy of str with leading and trailing whitespace remo
puts "   Marina Synko   ".strip


#String split
# Divides str into substrings based on a delimiter, returning an array of these substrings.
#
# If pattern is a String, then its contents are used as the delimiter when splitting str. If pattern is a single space, str is split on whitespace, with leading whitespace and runs of contiguous whitespace characters ignored.
#
# If pattern is a Regexp, str is divided where the pattern matches. Whenever the pattern matches a zero-length string, str is split into individual characters. If pattern contains groups, the respective matches will be returned in the array as well.
#
# If pattern is omitted, the value of $; is used. If $; is nil (which is the default), str is split on whitespace as if ` ' were specified.
#
# If the limit parameter is omitted, trailing null fields are suppressed. If limit is a positive number, at most that number of fields will be returned (if limit is 1, the entire string is returned as the only entry in an array). If negative, there is no limit to the number of fields returned, and trailing null fields are not suppressed.
#
# When the input str is empty an empty Array is returned as the string is considered to have no fields to split.

puts "Such a nice day".split

#String. statrt with
#Returns true if str starts with one of the prefixes given.

puts "The Weather is snowy".start_with?("Th")


#Arrays.first
#first(n) → new_ary
# Returns the first element, or the first n elements, of the array. If the array is empty, the first form returns nil, and the second form returns an empty array. See also #last for the opposite effect.#
array = [1,4,6,8,4,9,4]
puts array.first


#Arrays.delete_at
# delete_at(index) → obj or nil click to toggle source
# Deletes the element at the specified index, returning that element, or nil if the index is out of range.
#
# See also #slice!

puts array.delete_at(2)

#Array.delete
# delete(obj) { block } → item or result of block
# Deletes all items from self that are equal to obj.
#
# Returns the last deleted item, or nil if no matching item is found.
#
# If the optional code block is given, the result of the block is returned if the item is not found. (To remove nil elements and get an informative return value, use #compact!)

puts array.delete(9)

#Array.pop
# pop → obj or nil click to toggle source
# pop(n) → new_ary
# Removes the last element from self and returns it, or nil if the array is empty.
#
# If a number n is given, returns an array of the last n elements (or less) just like array.slice!(-n, n) does. See also #push for the opposite effect

puts array.pop(3)
puts array

#Hash.to_a
# to_a → array
# Converts hsh to a nested array of [ key, value ] arrays.
hash = {cat:"meow", dog:"woof", cow:"mooo"}
puts hash.to_a


hash2 = {bird:"sing", tree:"grow", wind:"blow"}
#Hash.has_key?
# has_key?(key) → true or false click to toggle source
# Returns true if the given key is present in hsh.
puts hash2.has_key?(:bird)  #prevously converted to array


#Hash.has_value?
# has_value?(value) → true or false click to toggle source
# Returns true if the given value is present for some key in hsh.
# puts hash.has_value?()
puts hash2.value?("sank")


# #Time.now → time click to toggle source
# Creates a new Time object for the current time. This is same as ::new without arguments.

puts Time.now

# #File.exist ?
# exist?(file_name) → true or false click to toggle source
# Return true if the named file exists.
#
# file_name can be an IO object.
#
# “file exists” means that stat() or fstat() system call is successful.
puts File.exist?("/Users/marynasynko/Desktop/Projects/ruby_fundamentals1/exercise2.rb")


#File.extname
# puts exercise2.exist? ("/Users/marynasynko/Desktop/Projects/ruby_fundamentals1/exercise2.rb")

puts File.extname("/Users/marynasynko/Desktop/Projects/ruby_fundamentals1/exercise2.rb")
