Rails.application.routes.draw do
  
  # 404/500 pages
  get 'errors/not_found'
  get 'errors/internal_server_error'
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  devise_scope :admins do
    # Redirests signing out users back to sign-in
    get "admins", to: "devise/sessions#new"
  end

  devise_for :admins, controllers: { registrations: "registrations", sessions: "sessions" }
  root "pages#home"


  post 'uploader/image', to: 'uploader#image' #add upload image to posts 
  get 'news', to: 'posts#index', as: :news
  get 'pilot-resources', to: 'posts#index', as: :pilot_resources
  resources :posts
  
  
  
  resources :book_downloads
  #resources :checkouts
  resources :discover_flights
  resources :quiz_results
  resources :messages
  resources :advance_trainings

  #Advanced Training Pages
  get 'advanced_training', to: 'advance_trainings#advanced_training', as: :advanced_training
  get 'certified-flight-instructor', to: 'advance_trainings#certified_flight_instructor', as: :certified_flight_instructor
  get 'commercial-certificate', to: 'advance_trainings#commercial_certificate', as: :commercial_certificate
  get 'multi-engine-rating', to: 'advance_trainings#multi_engine_rating', as: :multi_engine_rating
  get 'instrument-rating', to: 'advance_trainings#instrument_rating', as: :instrument_rating
  get 'advanced-training-confirmation', to: 'advance_trainings#confirmation', as: :advanced_training_confirmation
  
  # Contact form
  get 'contact', to: 'messages#new', as: :contact
  get 'visit-ideal-aviation', to: 'messages#location', as: :location
  get 'contact-confirmation', to: 'messages#confirmation', as: :contact_confirmation

  # Quiz form
  get 'quiz', to: 'quiz_results#new', as: :quiz
  get 'quiz-confirmation', to: 'quiz_results#confirmation', as: :quiz_confirmation

  # Discovery flight form
  get 'discovery-flight', to: 'discover_flights#new', as: :discovery_flight
  get 'discovery-flight-confirmation', to: 'discover_flights#confirmation', as: :discovery_confirmation

  # Check out form
  #get 'rental-checkout', to: 'checkouts#new', as: :rental_checkout
  #get 'rental-checkout-confirmation', to: 'checkouts#confirmation', as: :checkout_confirmation

  # Book Download
  get 'book-download-confirmation', to: 'book_downloads#confirmation', as: :book_download_confirmation

  # Static Pages
  get 'how-to-become-a-pilot', to: 'pages#become_a_pilot', as: :become
  get 'pilot-programs', to: 'pages#pilot_programs', as: :programs
  #get 'aircraft-rental', to: 'pages#aircraft_rental', as: :aircraft_rental
  get 'fixed-wing-airplane-fleet', to: 'pages#fixed_wing', as: :fixed_wing
  get 'rotary-wing-helicopter-fleet', to: 'pages#rotary_wing', as: :rotary_wing
  get 'airplane-pilot-training', to: 'pages#airplane_training', as: :airplane_training
  get 'helicopter-pilot-training', to: 'pages#helicopter_training', as: :helicopter_training
  get 'private-pilot-training', to: 'pages#private_pilot', as: :private_pilot
  get 'about-ideal-aviation', to: 'pages#about_us', as: :about_us
  
  
  

  get 'our-team', to: 'pages#our_team', as: :our_team
  #get 'pilot-resources', to: 'pages#pilot_resources', as: :pilot_resources
  get 'careers', to: 'pages#careers', as: :careers
  get 'privacy-policy', to: 'pages#tos', as: :tos


  # Previous Pages that showed up on Google
  get 'lessons-rentals', to: 'pages#aircraft_rental'
  get 'lessons-rentals/fixed-wing-fleet', to: 'pages#fixed_wing'
  get 'contact-us', to: 'messages#new'
  get 'our-courses', to: 'pages#pilot_programs'

  

end
