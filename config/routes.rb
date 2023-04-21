Rails.application.routes.draw do
  root "pages#home"
  
  # Static Pages
  get 'how-to-become-a-pilot', to: 'pages#become_a_pilot', as: :become
  get 'pilot-programs', to: 'pages#pilot_programs', as: :programs
  get 'aircraft-rental', to: 'pages#aircraft_rental', as: :aircraft_rental
  get 'fixed-wing-airplane-fleet', to: 'pages#fixed_wing', as: :fixed_wing
  get 'rotary-wing-helicopter-fleet', to: 'pages#rotary_wing', as: :rotary_wing
  get 'airplane-pilot-training', to: 'pages#airplane_training', as: :airplane_training
  get 'helicopter-pilot-training', to: 'pages#helicopter_training', as: :helicopter_training
  get 'private-pilot-training', to: 'pages#private_pilot', as: :private_pilot

end
