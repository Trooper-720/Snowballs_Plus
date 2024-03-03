#get rid of knowledgebook
clear @s knowledge_book 1

#give hard snowball
loot give @s loot snowball:hard_snowball

#remove advancements
advancement revoke @s only snowball:hard_snowball_cobble_advance
advancement revoke @s only snowball:hard_snowball_deepslate_advance

#remove recipes
recipe take @s snowball:hard_snowball_cobble_recipe
recipe take @s snowball:hard_snowball_cobble_2x2_recipe
recipe take @s snowball:hard_snowball_deepslate_recipe
recipe take @s snowball:hard_snowball_deepslate_2x2_recipe