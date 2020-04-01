# README

Packing app

model - item
name -string
quantity - integer

CRUD
C
new
create

R
index /items
show

U
edit
update

D
destroy 


authentication

- user: 
- X create user migration: email username password_digest
- X bcrypt
- X has_secure_password



- X signup 
- X form
- X route => users#new


- X signin
- X form
- X route => sessions#new


- X navbar
# FIGURE OUT HOW TO RETURN MULTIPLE LINES IN HELPER

- X signout 
- X sessions#destroy

- validations: uniqueness of email
- display errors

authorization
- add association between user and list
- protect edit 

- helper methods


