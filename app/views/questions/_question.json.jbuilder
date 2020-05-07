json.extract! question, :id, :body, :answer, :author_id, :format, :date_last_asked, :created_at, :updated_at
json.url question_url(question, format: :json)
