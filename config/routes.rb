Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :sections
      resources :students
      resources :exams
      resources :student_grades
      resources :sessions
    end
  end

end
