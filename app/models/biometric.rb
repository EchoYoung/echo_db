class Biometric < ActiveRecord::Base
    belongs_to :user
    default_scope -> { order('created_at DESC') }
    validates :height, presence: true, :weight, presence: true
    validates :user_id, presence: true
end
