
template = Template.create(name: "Default", body: "<h3>Default Template</h3><email><br/><p>This is the default template")

10.times.each do |n|
  Email.create(subject: Faker::Educator.course_name, body: Faker::Lorem.paragraph(sentence_count: 30), template_id: template.id)
end

Subscriber.create(email: "test@example.com")