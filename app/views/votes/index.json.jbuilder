json.array! @members, :name, :email, :id
json.array! @questions, :title, :description
json.array! @votes, :question_id, :answer_id, :member_id, :vote
