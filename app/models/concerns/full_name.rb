require 'active_support/concern'

module FullName
  extend ActiveSupport::Concern

  def full_name
    if first_name.present? || last_name.present?
      "#{first_name} #{last_name}"
    else
      # fallback information
      email
    end
  end
end
