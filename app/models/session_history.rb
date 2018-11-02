class SessionHistory < ApplicationRecord
  enum summary_status: { passed: 0, error: 1, failed: 2, stopped: 3 }
end
