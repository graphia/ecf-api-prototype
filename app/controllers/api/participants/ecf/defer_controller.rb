module API
  module Participants
    module ECF
      class DeferController < ApplicationController
        include APISecurity

        def update
          head(:ok)
        end
      end
    end
  end
end
