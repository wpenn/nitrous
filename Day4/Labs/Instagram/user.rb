# user information and settings

#user input
puts "What is your username?"
username_input = gets.chomp

puts "What is your password?"
password_input = gets.chomp

puts "What is your email?"
email_input = gets.chomp

puts "What is your bio?"
bio_input = gets.chomp

# "Who are you following?"
# follower_input = gets.chomp

user = {
  username: username_input,
  password: password_input,
  email_address: email_input,
  bio: bio_input,
  following: ["dogsofinstagram", "dogsofcincinnati", "NRA", "obama"],
  profile_private: false,
  followers: ["obama", "cincinnati zoo", "children for harambe", "animal control"]
  }





#user photos (image url)
#user photos

# camera_roll = [
#   photo_1,
#   photo_2
#   ]

#this is the hash for photo1
photo_1 = {
  likes: 0,
  url: "harambewithcutechildren.jpg",
  comments: {
    obama: "George Bush did Harambe",
    cincinnati_zoo: "lol"
    },
  views: 100,
  tags: ["gun control", "banana"],
  photo_liked: false,
  shares:{
    share_number: photo_1[:shares][:share_users].length,
    share_users:["woke people", "harambe"]
    }
  }

#this is the hash for photo2
photo_2 = {
  likes: 0,
  url: "harambewithcutechildren.jpg",
  comments: {
    obama: "George Bush did Harambe",
    cincinnati_zoo: "lol"
    },
  views: 100,
  tags: ["gun control", "banana"]
  }



#Write what users can do with instagram
#like a photo
def like_photo(photo)
  if photo[:photo_liked]
    puts "You've already liked this photo."
  else
    photo[:likes] = photo[:likes] + 1
    #photo[:likes] += 1
    photo_liked = true
  end
end

#comment
def comment_on_photo(photo, user, comment)
  user = user.to_sym
  photo[:comments][user] = comment
end

#share
def share_photo
end

#view profile
def view_profile
end

#manipulate the user and test things out here

like_photo(photo_1)
puts "Number of likes: #{photo_1[:likes]}"
comment_on_photo(photo_1, "Connor", "lulz")
puts photo_1[:comments][:Connor]