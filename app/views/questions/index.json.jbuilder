json.array! @questions do |q|
  json.extract! q, :id, :member_id, :title, :description, :member_name
  json.answers q.answers, :member_id, :question_id, :accepted_answer, :answer_text
end
