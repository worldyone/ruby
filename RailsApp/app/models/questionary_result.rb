class QuestionaryResult < ApplicationRecord
    belongs_to :questionary

    validats :result, presence: {message:'は、必須項目です。'}
end
