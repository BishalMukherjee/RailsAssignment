class Student < ApplicationRecord
    default_scope {order(name: :asc)}
end