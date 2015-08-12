json.array!(@events) do |event|
  json.extract! event, :id, :day, :note, :points, :max_points, :mark, :subject
  json.url subject_event_url(@subject, event, format: :json)
end
