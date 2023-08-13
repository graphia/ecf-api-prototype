module API
  class SchoolsController < ActionController::Base
    include APISecurity

    def index
      render(json: query.to_json)
    end

    def show
      render(json: query.first.to_json)
    end

  private

    def query
      School.all.pluck(:id, :name)
    end
  end
end
