require 'ffaker'

User.new.tap do |u|
  u.email = 'admin@example.com'
  u.password = 'password'
  u.save!
end

10.times do |i|
  List.new.tap do |l|
    l.name = Faker::HipsterIpsum.word
    l.position = i
    l.save!
  end
end


5.times do |i|
  node = Node.new.tap do |n|
    n.name = Faker::HipsterIpsum.word
    n.position = i
    n.save!
  end

  rand(3).times do |i|
    first_child = Node.new.tap do |n|
      n.name = Faker::HipsterIpsum.word
      n.position = i
      n.parent = node
      n.save!
    end

    rand(3).times do |i|
      second_child = Node.new.tap do |n|
        n.name = Faker::HipsterIpsum.word
        n.position = i
        n.parent = first_child
        n.save!
      end

      rand(3).times do |i|
        third_child = Node.new.tap do |n|
          n.name = Faker::HipsterIpsum.word
          n.position = i
          n.parent = second_child
          n.save!
        end
      end
    end
  end
end
