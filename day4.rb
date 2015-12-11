require 'digest/md5'
f = ->(p){ (1..Float::INFINITY).lazy.detect { |i| Digest::MD5.hexdigest("bgvyzdsv#{i}").start_with? '0'*p } }
p "The first integer producing a hash starting with 5 zeroes is #{f.call 5}"
p "The first integer producing a hash starting with 6 zeroes is #{f.call 6}"
