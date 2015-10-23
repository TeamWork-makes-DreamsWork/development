
json.extract! @members, :id, :name, :email
json.questions @members.questions do |q|
  json.extract! q, :id, :title, :description
  json.answers q.answers, :answer_text, :accepted_answer, :id
  end


  # json.array! @questions, :title, :description
