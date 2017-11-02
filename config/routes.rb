# get "posts", to: "posts#index"
# get "posts/new", to: "posts#new"
# get  "posts/:id", to: "posts#show"
# post "posts", to: "posts#create"
# get  "posts/:id/edit", to: "posts#edit"
# put  "posts/:id", to: "posts#update"
# delete  "posts/:id", to: "posts#delete"

resources :posts

any "comments/hot", to: "comments#hot"
get  "landing/posts", to: "posts#index"
get  "landing/comments", to: "comments#hot"
