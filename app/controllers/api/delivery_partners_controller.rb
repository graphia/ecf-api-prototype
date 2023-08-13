module API
  class DeliveryPartnersController < ActionController::Base
    include APISecurity

    def index
      render(
        json: [
          { id: 1, name: "Fake delivery partner 1" },
          { id: 2, name: "Fake delivery partner 2" }
        ].to_json
      )
    end

    def show
      render({ id: 1, name: "Fake delivery partner 1" }.to_json)
    end
  end
end
