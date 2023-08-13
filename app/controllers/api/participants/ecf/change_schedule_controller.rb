module API
  module Participants
    module ECF
      class ChangeScheduleController < ApplicationController
        include APISecurity

        def update
          head(:ok)
        end
      end
    end
  end
end
