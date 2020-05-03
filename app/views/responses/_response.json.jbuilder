json.extract! response, :id, :user_id, :question_id, :body, :correct, :created_at, :updated_at
json.url response_url(response, format: :json)
