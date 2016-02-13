# == Route Map
#
#                   Prefix Verb   URI Pattern                                       Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                         devise/sessions#destroy
#            user_password POST   /users/password(.:format)                         devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                    devise/passwords#edit
#                          PATCH  /users/password(.:format)                         devise/passwords#update
#                          PUT    /users/password(.:format)                         devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                           registrations#cancel
#        user_registration POST   /users(.:format)                                  registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                          registrations#new
#   edit_user_registration GET    /users/edit(.:format)                             registrations#edit
#                          PATCH  /users(.:format)                                  registrations#update
#                          PUT    /users(.:format)                                  registrations#update
#                          DELETE /users(.:format)                                  registrations#destroy
#                     root GET    /                                                 welcome#index
#         article_comments GET    /articles/:article_id/comments(.:format)          comments#index
#                          POST   /articles/:article_id/comments(.:format)          comments#create
#      new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
#     edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
#          article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
#                          PATCH  /articles/:article_id/comments/:id(.:format)      comments#update
#                          PUT    /articles/:article_id/comments/:id(.:format)      comments#update
#                          DELETE /articles/:article_id/comments/:id(.:format)      comments#destroy
#                 articles GET    /articles(.:format)                               articles#index
#                          POST   /articles(.:format)                               articles#create
#              new_article GET    /articles/new(.:format)                           articles#new
#             edit_article GET    /articles/:id/edit(.:format)                      articles#edit
#                  article GET    /articles/:id(.:format)                           articles#show
#                          PATCH  /articles/:id(.:format)                           articles#update
#                          PUT    /articles/:id(.:format)                           articles#update
#                          DELETE /articles/:id(.:format)                           articles#destroy
#                     tags GET    /tags(.:format)                                   tags#index
#                          POST   /tags(.:format)                                   tags#create
#                  new_tag GET    /tags/new(.:format)                               tags#new
#                 edit_tag GET    /tags/:id/edit(.:format)                          tags#edit
#                      tag GET    /tags/:id(.:format)                               tags#show
#                          PATCH  /tags/:id(.:format)                               tags#update
#                          PUT    /tags/:id(.:format)                               tags#update
#                          DELETE /tags/:id(.:format)                               tags#destroy
#

Rails.application.routes.draw do

	root 'welcome#index'
    devise_for :users, :controllers => { registrations: 'registrations' }

	resources :articles do
		resources :comments
	end
	resources :tags
end
