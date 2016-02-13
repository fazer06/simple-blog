# The Odin Project: A Simple Blog
A simple blog that was created using the Getting Started with Rails intro section of the Rails Guides, but with a few additions from myself.

## Additions

- Bootstrap
- font-awesome
- Devise
- Tagging
- Articles view counter
- 3 most popular articles

## Todo

- Add all the bootstrap classes
- Categories
- Image Upload

## Database Structure

### User

- first_name:string 	[present]
- last_name:string 		
- email:string 		 	[present]
- password:string 	 	[present]

- has_many :articles 
- has_many :comments

### Article

- title:string 		 	[5 chars min, present]
- body:text 		 	[10 chars min, present]
- user_id:integer 	 	[present]
- category_id:integer 	[present]

- belongs_to :user
- belongs_to :category
- has_many :comments
- has_many :taggings
- has_many :tags, through: :taggings

### Comment

- commenter:string   	[present]
- body:text 		 	[10 chars min, present]
- user_id:integer    	[present]
- article_id:integer    [present]

- belongs_to :user
- belongs_to :article

### Category

- name:string 			[present]

- has_many :articles

### Tag

- name:string 			[present]

- has_many :taggings
- has_many :articles, through: :taggings

### Tagging (The connection between Articles and Tags)

tag_id:integer 			[present]
article_id:integer 		[present]

- belongs_to :tag 		[present]
- belongs_to :article 	[present]