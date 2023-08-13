module API
  class StatementsController < ActionController::Base
    include APISecurity

    def index
      render(
        json: [
          { id: 1, name: "Fake statement 1" },
          { id: 2, name: "Fake statement 2" }
        ].to_json
      )
    end

    def show
      render({ id: 1, name: "Fake statement 1" }.to_json)
    end
  end
end
