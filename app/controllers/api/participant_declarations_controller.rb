module API
  class ParticipantDeclarationsController < ActionController::Base
    include APISecurity

    def index
      render(json: [{ id: 1 }].to_json)
    end

    def show
      render(json: { id: 1 }.to_json)
    end
  end
end
