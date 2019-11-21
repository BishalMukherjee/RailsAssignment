require 'csv'

class User < ApplicationRecord

    default_scope{ order(user_name: :asc)}
    def self.to_csv
        attributes = %w{user_name user_email phone_number}
        CSV.generate do |csv|
            csv << attributes

            all.each do |user|
                csv << user.attributes.values_at(*attributes)
            end
        end
    end

end
