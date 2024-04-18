Rails.application.routes.draw do
  get '/', to: 'homepage#homepage'
  get '/dice/:num_dice/:num_sides', to: 'dice#roll'
end
