# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(username: 'first', email: 'first@test.com', password: 'pass123')
first_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
first_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
first_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
first_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))

second_user = User.create(username: 'second', email: 'second@test.com', password: 'pass123')
second_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
second_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
second_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
second_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))

third_user = User.create(username: 'third', email: 'third@test.com', password: 'pass123')
third_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
third_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
third_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
third_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))

fourth_user = User.create(username: 'fourth', email: 'fourth@test.com', password: 'pass123')
fourth_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
fourth_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
fourth_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))
fourth_user.posts.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraphs(number: 10, supplemental: true).join, created_at: Faker::Time.between(from: 2.months.ago, to: Time.now))