class Translation < ActiveRecord::Base
  enum role: [:active, :inactive]
end
