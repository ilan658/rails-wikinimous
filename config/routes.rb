Rails.application.routes.draw do
  # Utilisation de `resources :articles` pour générer toutes les routes CRUD pour le contrôleur Articles
  resources :articles

  # Route de vérification de l'état de santé de l'application
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Définir la route racine ("/")
  # Ici, on utilise "articles#index" pour que la page d'accueil affiche la liste des articles
  root 'articles#index'
end
