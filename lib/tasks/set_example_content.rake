namespace :set do
  namespace :example do
    task content: :environment do
      puts "*** Setting up example posts..."
      10.times do |i|
        Post.create(
          user_id:     Faker::Number.between(1, 10),
          title:       Faker::Commerce.product_name,
          body:        Faker::Lorem.paragraph(3),
        )
      end
      puts "*** *** Done!"

      puts "*** Setting up example reviews..."
      10.times do |i|
        Review.create(
          user_id:     Faker::Number.between(1, 10),
          title:       Faker::Commerce.product_name,
          body:        Faker::Lorem.paragraph(3),
        )
      end
      puts "*** *** Done!"

      puts "*** Setting up example recipes..."
      10.times do |i|
        Recipe.create(
          user_id:     Faker::Number.between(1, 10),
          title:       Faker::Commerce.product_name,
          body:        Faker::Lorem.paragraph(3),
        )
      end
      puts "*** *** Done!"

    end
  end
end
