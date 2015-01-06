def digital_root2(int)

  until int <= 9
    
    remainder = int % 10
    root = int/10
    int = remainder + root
  end
  
  int
end



def digital_root(num)
  while num >= 10
    num = digital_root_step(num)
  end

  num
end

def digital_root_step(num)
  root = 0
  while num > 0
    root += (num % 10)

    num /= 10
  end

  root
end

def caeser_cipher string, shift
  result = string.split("").map do |letter|
      if letter == " "
        letter
      elsif (letter.ord + shift) > 122 
        letter.ord + shift - 26
      else
        letter.ord + shift
      end
    end
    
    result.map do |item|
      item.chr
    end.join("")
    
  end
  
# puts caeser_cipher("zzz", 1)

def subs(str)
  subs_out = []
  strArr = str.split("")
  strArr.each_with_index do |ltr1, i|
    strArr.each_with_index do |ltr2, j| 
      if j >= i 
        subs_out << strArr[i..j].join("")
      end
    end
  end
  
  subs_out
end

def common_sub(str1, str2)
  subs1 = subs(str1)
  subs2 = subs(str2)
  max_sub_length = 0
  str_out = ""
  subs1.each do |substr|
    if subs2.include?(substr) && substr.length > max_sub_length
      str_out = substr
      max_sub_length = str_out.length
    end
  end
  
  str_out
end

puts common_sub("hello", "mellosauce")

def rec_sum(arr)
  if arr.length == 1
    return arr[0]
  end
  
  sum = arr[0] + arr.pop
  if arr.length == 1 

    arr1 = [sum]
  else
    arr1 = [sum].concat(arr[1..-1])
  end
  rec_sum(arr1)
end
          
puts rec_sum([1,5,1,10,10])





        

