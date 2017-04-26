Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :sections
      resources :students
      resources :exams
      resources :student_grades do
        collection do
          get 'exam_checker'
        end
      end
      resources :sessions
    end
  end

end
