INSERT INTO genres VALUES(1,'POP');
INSERT INTO genres VALUES(2,'ROCK');
INSERT INTO genres VALUES(3,'HIP-HOP');

INSERT INTO executors VALUES(1,'Гагарина');
INSERT INTO executors VALUES(2,'Краймбрери');
INSERT INTO executors VALUES(3,'Coldplay');
INSERT INTO executors VALUES(4,'Марсель');

INSERT INTO genresexecutors VALUES(1, 1);
INSERT INTO genresexecutors VALUES(2, 1);
INSERT INTO genresexecutors VALUES(1, 2);
INSERT INTO genresexecutors VALUES(3, 2);
INSERT INTO genresexecutors VALUES(2, 3);
INSERT INTO genresexecutors VALUES(3, 4);

INSERT INTO albums VALUES(1,'Вдох', '2022-11-25');
INSERT INTO albums VALUES(2,'Переобулась','2018-03-30');
INSERT INTO albums VALUES(3,'Ghost Stories','2019-03-14');
INSERT INTO albums VALUES(4,'Настроение Осень','2009-04-24');

INSERT INTO executorsalbums VALUES(1, 1);
INSERT INTO executorsalbums VALUES(2, 2);
INSERT INTO executorsalbums VALUES(3, 3);
INSERT INTO executorsalbums VALUES(4, 4);

INSERT INTO tracks VALUES(1, 'Кукушка', 180, 1);
INSERT INTO tracks VALUES(2, 'Самолет', 156, 2);
INSERT INTO tracks VALUES(3, '#ЖИТЬ', 193, 1);
INSERT INTO tracks VALUES(4, 'Hymn For The Weekend', 201, 3);
INSERT INTO tracks VALUES(5, 'Adventure Of A Lifetime', 190, 3);
INSERT INTO tracks VALUES(6, 'Предубеждение и гордость', 220, 4);

INSERT INTO collections VALUES(1,'Music1', '2021-03-28');
INSERT INTO collections VALUES(2, 'Music2', '2022-12-16');
INSERT INTO collections VALUES(3, 'Music3', '2023-04-15');
INSERT INTO collections VALUES(4, 'Music4', '2017-08-29');
INSERT INTO collections VALUES(5, 'Music5', '2019-02-27');

INSERT INTO CollectionsTracks VALUES(1, 2);
INSERT INTO CollectionsTracks VALUES(1, 3);
INSERT INTO CollectionsTracks VALUES(2, 1);
INSERT INTO CollectionsTracks VALUES(2, 3);
INSERT INTO CollectionsTracks VALUES(2, 4);
INSERT INTO CollectionsTracks VALUES(3, 3);
INSERT INTO CollectionsTracks VALUES(4, 4);