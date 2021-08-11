# Small selection of colors so we can make a nice bar chart in Blazer
user_favorite_colors = ["red", "green", "blue", "purple"]

(1000 - User.count).times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    favorite_color: user_favorite_colors.sample,
    credit_score: rand(300..850),
    subscriber: [true, false].sample,
    birthday: Faker::Date.between(from: 30.years.ago, to: 20.years.ago)
  )
end

[
  {
    name: "Credit Score Scatter Plot",
    statement: "SELECT credit_score, COUNT(*) FROM users GROUP BY 1",
    status: "active"
  },
  {
    name: "Favorite Color Pie Chart",
    statement: "SELECT favorite_color, COUNT(*) AS pie FROM users GROUP BY 1",
    status: "active"
  },
  {
    name: "Subscriber Status Bar Chart",
    statement: "SELECT subscriber, COUNT(*) FROM users GROUP BY 1",
    status: "active"
  },
].each_with_index do |query_params, i|
  q = Blazer::Query.find_or_initialize_by(name: query_params[:name])
  q.assign_attributes(query_params)
  q.data_source = "main"
  q.save(validate: false)
end

dashboard = Blazer::Dashboard.find_or_create_by(name: "Dashboard Demo")
[
  "Credit Score Scatter Plot",
  "Favorite Color Pie Chart",
  "Subscriber Status Bar Chart",
].each_with_index do |query_name, i|
  dashboard.dashboard_queries.create!(query_id: Blazer::Query.find_by(name: query_name).id, position: i)
end