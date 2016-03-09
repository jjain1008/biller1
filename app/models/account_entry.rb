class AccountEntry < ActiveRecord::Base
	belongs_to :account

	validates :account_id, presence: true

	validates_associated :account

	#validates_presence_of :state

	after_save :update_account_balance!

	state_machine :state, :initial => :submitted do
		event :approve do
			transition :submitted => :approved
		end
		
		event :reject do
			transition :submitted => :rejected
		end

	end

	def update_account_balance!
  		account.update_balance!
  		account.save
	end

end
