class QuizSerializer < ActiveModel::Serializer
  attributes :id, :points, :difficulty, :player_id
end
