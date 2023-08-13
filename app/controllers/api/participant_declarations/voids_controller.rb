module API
  module ParticipantDeclarations
    class VoidsController < ApplicationController
      include APISecurity

      def update
        head(:ok)
      end
    end
  end
end
