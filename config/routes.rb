Rails.application.routes.draw do
  root to: "homes#top"
  patch "books/:id" =>"books#update", as: "update_book"
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
  end
