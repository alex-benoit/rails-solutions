Rails.application.routes.draw do
  root to: 'pages#game'
  get 'game', to: 'pages#game'
  get 'score', to: 'pages#score'
end
