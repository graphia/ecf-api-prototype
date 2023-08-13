module API
  module Participants
    class ECFController < ApplicationController
      include APISecurity

      def index
        render(json: Teacher.ecf.pluck(:id, :name).to_json)
      end

      def show
        teacher = Teacher.select(:id, :name).ecf.find(params[:id])

        render(json: teacher.to_json)
      end
    end
  end
end
