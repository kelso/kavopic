module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_customer

    def connect
      self.current_customer = find_verified_customer
    end

    protected
    
    def find_verified_customer
      verified_customer = Customer.find_by(id: cookies.signed['customer.id'])
      if verified_customer && cookies.signed['customer.expires_at'] > Time.now
        verified_customer
      else
        reject_unauthorized_connection
      end
    end
  end
end
