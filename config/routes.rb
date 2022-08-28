Rails.application.routes.draw do
  # routes on terminal (rails routes) or http://localhost:3000/rails/info/routes
  root to: "questions#ask"
  get "answer", to: "questions#answer", as: :answer
end
