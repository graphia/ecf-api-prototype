module API
  module Participants
    module ECF
      class TransfersController < ApplicationController
        include APISecurity

        def index
          render(json: ["Transfer 1", "Transfer 2", "Transfer 3"].to_json)
        end
      end
    end
  end
end
