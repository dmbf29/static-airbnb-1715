Rails.application.routes.draw do
  # '/flat/145'
  # http_verb '/path', to: 'controller#action', as: :prefix
  # get '/', to: 'flats#index', as: :root
  root to: 'flats#index'
  # we have :id inside of our params
  get '/flats/:id', to: 'flats#show', as: :flat
end

# read all -> index
# read one -> show
