# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Company.destroy_all
Role.destroy_all
Membership.destroy_all
Resource.destroy_all
Level.destroy_all
Skill.destroy_all
Need.destroy_all


users = [
  {
    email: "loncar.travis@gmail",
    first_name: "Travis",
    last_name: "Loncar",
    bio: "I like learning and hockey.",
    github: "http://github.com/tbloncar",
    twitter: "http://twitter.com/tbloncar",
    dribbble: "http://dribbble.com/tbloncar",
    linkedin: "http://linkedin.com",
    website: "http://travis.in",
    google: "https://plus.google.com/102459979646890405567/posts"
  },
  {
    email: "fangari@gmail.com",
    first_name: "Fernando",
    last_name: "Angarita",
    bio: "I like learning and hockey.",
    github: "http://github.com/tbloncar",
    twitter: "http://twitter.com/tbloncar",
    dribbble: "http://dribbble.com/tbloncar",
    linkedin: "http://linkedin.com",
    website: "http://travis.in",
    google: "https://plus.google.com/102459979646890405567/posts"
  }
]

users.each do |user|
  u = User.new
  u.email = user[:email]
  u.first_name = user[:first_name]
  u.last_name = user[:last_name]
  u.bio = user[:bio]
  u.github = user[:github]
  u.twitter = user[:twitter]
  u.dribbble = user[:dribbble]
  u.linkedin = user[:linkedin]
  u.website = user[:website]
  u.google = user[:google]
  u.save
end

companies = [
  {
    name: "AssetHound",
    website: "http://assethound.co",
    bio: "Asset management simplified.",
    logo_url: "/assets/logo.png",
    twitter: "http://twitter.com/ferangarita",
    linkedin: "http://www.linkedin.com",
    google: "http://plus.google.com"
  },
  {
    name: "Mage",
    website: "http://mageapp.herokuapp.com",
    bio: "Asset management simplified.",
    logo_url: "/assets/logo.png",
    twitter: "http://twitter.com/ferangarita",
    linkedin: "http://www.linkedin.com",
    google: "http://plus.google.com"
  }
]

companies.each do |company|
  c = Company.new
  c.name = company[:name]
  c.website = company[:website]
  c.bio = company[:bio]
  c.logo_url = company[:logo_url]
  c.twitter = company[:twitter]
  c.linkedin = company[:linkedin]
  c.google = company[:google]
  c.save
end

roles = [
  {
    name: "Web Developer"
  },
  {
    name: "User Experience Designer"
  }
]

roles.each do |role|
  r = Role.new
  r.name = role[:name]
  r.save
end

memberships = [
  {
    user_id: User.first.id,
    company_id: Company.last.id,
    role_id: Role.first.id
  },
  {
    user_id: User.last.id,
    company_id: Company.first.id,
    role_id: Role.last.id
  }
]

memberships.each do |membership|
  m = Membership.new
  m.user_id = membership[:user_id]
  m.company_id = membership[:company_id]
  m.role_id = membership[:role_id]
  m.save
end

resources = [
  {
    name: "Ruby on Rails",
    url: "/assets/ror.png"
  },
  {
    name: "User Experience",
    url: "/assets/ux.png"
  }
]

resources.each do |resource|
  r = Resource.new
  r.name = resource[:name]
  r.url = resource[:url]
  r.save
end

levels = [
  {
    name: "Beginner"
  },
  {
    name: "Intermediate"
  },
  {
    name: "Advanced"
  }
]

levels.each do |level|
  l = Level.new
  l.name = level[:name]
  l.save
end

skills = [
  {
    user_id: User.first.id,
    resource_id: Resource.first.id,
    level_id: Level.first.id,
    description: "Just starting out!"
  },
  {
    user_id: User.last.id,
    resource_id: Resource.last.id,
    level_id: Level.last.id,
    description: "I'm really advanced, dude!"
  }
]

skills.each do |skill|
  s = Skill.new
  s.user_id = skill[:user_id]
  s.resource_id = skill[:resource_id]
  s.level_id = skill[:level_id]
  s.description = skill[:description]
  s.save
end

needs = [
  {
    company_id: Company.first.id,
    resource_id: Resource.first.id,
    level_id: Level.first.id,
    description: "Entry-level position!"
  },
  {
    company_id: Company.last.id,
    resource_id: Resource.last.id,
    level_id: Level.last.id,
    description: "We need some skeeeeelz!"
  }
]

needs.each do |need|
  n = Need.new
  n.company_id = need[:company_id]
  n.resource_id = need[:resource_id]
  n.level_id = need[:level_id]
  n.description = need[:description]
  n.save
end
















