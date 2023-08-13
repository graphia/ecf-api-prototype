module API
  module Participants
    module ECF
      class WithdrawController < ApplicationController
        include APISecurity

        def update
          head(:ok)
        end
      end
    end
  end
end
