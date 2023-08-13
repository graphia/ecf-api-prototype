module API
  module Participants
    module Mentors
      class UnfundedController < ApplicationController
        include APISecurity

        def index
          render(json: ["Unfunded mentor 1", "Unfunded mentor 2", "Unfunded mentor 3"].to_json)
        end
      end
    end
  end
end
