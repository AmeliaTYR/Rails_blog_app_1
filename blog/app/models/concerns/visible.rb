module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, with: VALID_STATUSES
  end

  class_methods do
    def public_count
      # fixed error originally:
      #   where(status: 'public').count
      where(:status == 'public').count
    end
  end

  def archived?
    status == 'archived'
  end
end
