every :day, at: '00:00am' do
  rake "decidim:delete_data_portability_files"
end

every :day, at: '00:05am' do
  rake "decidim:metrics:all"
end

every :day, at: '00:10am' do
  rake "decidim:open_data:export"
end

every :day, at: '00:15am' do
  rake "decidim_meetings:clean_registration_forms"
end

every :day, at: '00:20am' do
  rake "decidim_initiatives:check_published"
end

every :day, at: '00:25am' do
  rake "decidim_initiatives:check_validating"
end

every :day, at: '00:30am' do
  rake "decidim_initiatives:notify_progress"
end
