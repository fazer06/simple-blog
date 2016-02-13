# The Odin Project: A Simple Blog
A simple blog that was created in the Getting Started with Rails intro section of the Rails Guides, but with a few improvements from myself, most of which are not done yet!

- Includes Bootstrap
- Includes font-awesome

## Todo

- Add all the bootstrap classes
- Add Devise

## Database Structure

### User (:TODO:)

- username:string 	 	[unique, 25  chars max,  present]
- email:string 		 	[unique, 255 chars max,  present]
- password:string 	 	[6 chars min, present]

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