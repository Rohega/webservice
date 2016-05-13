class Token < ActiveRecord::Base
	attr_encrypted :cvc, key: '821280f99fda45a323c11abac3b9240b'
end
