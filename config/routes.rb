Rails.application.routes.draw do
 get "/view_info", to: 'games#games_view'
 get "/guess_numbers", to: 'games#guess_number'
end
