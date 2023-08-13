module API
  module Participants
    class MentorsController < ApplicationController
      include APISecurity

      def index
        render(json: Teacher.mentors.pluck(:id, :name).to_json)
      end

      def show
        teacher = Teacher.select(:id, :name).mentors.find(params[:id])

        render(json: teacher.to_json)
      end
    end
  end
end
