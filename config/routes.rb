Rails.application.routes.draw do
  root to: 'pages#home'

  namespace :api do
    resources :delivery_partners, only: %i(index show), path: "delivery-partners"
    resources :schools, only: %i(index show)
    resources :participant_declarations, only: %i(index show), path: "participant-declarations" do
      scope module: :participant_declarations do
        resource :void, only: %i(update)
      end
    end

    resources :participants, only: %i(index show) do
      scope module: :participants do
        collection do
          resources :ecf, only: %i(index show) do
            scope module: :ecf do
              resources :transfers, only: %i(index)

              resource :defer, only: %i(update)
              resource :withdraw, only: %i(update)
              resource :resume, only: %i(update)
              resource :change_schedule, only: %i(update), path: "change-schedule"

              resources :transfers, only: %i(index)
            end
          end

          resources :mentors, only: %i(index show) do
            scope module: :mentors do
              collection do
                resources :unfunded, only: %i(index), as: "unfunded_mentors"
              end
            end
          end
        end
      end
    end

    resources :statements, only: %i(index show)
  end
end
