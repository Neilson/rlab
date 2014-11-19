class Cliente < ActiveRecord::Base
	#attr_accessible :nome
	has_many :vencimento
	validates :nome, presence: true, length: {minimum: 5}
end
