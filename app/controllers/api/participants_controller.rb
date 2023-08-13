module API
  class ParticipantsController < ApplicationController
    def index
      participants = Teacher.all.pluck(:id, :name)

      render(json: participants.to_json)
    end

    def show
      teacher = Teacher.select(:id, :name).find(params[:id])

      render(json: teacher.to_json)
    end
  end
end
