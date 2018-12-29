#!/bin/bash

for i in {003..100}
do
    echo "insert into users values ($i, 'Utilizador$i', 'user$i', NULL, NULL, '\$2a\$10\$A26kEAXnY3MjqwgfxUZCFeEGR9TMwWDskmz9pYUJ9m9EkVQzn4ZVu', 'user$i@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 'public', NULL, NULL, NULL, '2018-12-27 09:29:22', '2018-12-27 09:29:22', 1, '2018-12-27 09:29:22', 1);";
    echo "insert into roles_users values ('5c248f3b199f3d00114a6$i', '5c248f3a199f3d00114a6766', $i);"
done | mysql -uroot -proot ghost_db;

#criar primeiro o owner do projeto
#tem de se ver qual é a key do autor e alterar (select * from roles;)
#drop index posts_slug_unique on posts;
#show create table posts;

#!/bin/bash

for i in {003..100}
do
	echo "delete from roles_users where user_id = \"$i\";";
    echo "delete from users where user_id = \"$i\";";
done | mysql -uroot -proot ghost_db;