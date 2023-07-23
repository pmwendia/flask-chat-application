BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "user" (
	"id"	INTEGER NOT NULL,
	"name"	VARCHAR(80),
	"email"	VARCHAR(80),
	"password_hash"	VARCHAR(128),
	"workspace_list"	VARCHAR(100),
	"image"	VARCHAR(256),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "workspace" (
	"id"	INTEGER NOT NULL,
	"name"	VARCHAR(80),
	"admin_username"	VARCHAR(80),
	"joining_code"	VARCHAR(10),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "channel" (
	"id"	INTEGER NOT NULL,
	"name"	VARCHAR(80),
	"admin_username"	VARCHAR(80),
	"wid"	INTEGER,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "chats" (
	"id"	INTEGER NOT NULL,
	"message"	VARCHAR(80),
	"username"	VARCHAR(80),
	"wid"	INTEGER,
	"channel_id"	INTEGER,
	"image"	INTEGER,
	PRIMARY KEY("id")
);
INSERT INTO "user" ("id","name","email","password_hash","workspace_list","image") VALUES (1,'priya','priya@gmail.com','pbkdf2:sha256:150000$TlDw1GyE$157d9cd904190422f447ed2550a532e77f9e64383d47960d7aed1c0b8098d2e8','1 2 ','http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill,h_100,w_100/c0lxttnw4ako3dwjwinm'),
 (2,'jainam','jainam@gmail.com','pbkdf2:sha256:150000$DIKBwDSl$a0b3c3579f412db7a0b734f058953f365b13f514c5f59326b733e842b1d24f6b','1 ','http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill,h_100,w_100/gljcb3r0m5zqqnafnlph'),
 (3,'j','j@gmail.com','pbkdf2:sha256:150000$WAqRqhaf$81dde7d851b52ff4001d15ce0e18d9a64f854a114e636056ea64abf45e8ba411',NULL,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/g3zojs9b089j0df0hexe');
INSERT INTO "workspace" ("id","name","admin_username","joining_code") VALUES (1,'testing','priya','0gqaj4'),
 (2,'new','priya','9w0JaE');
INSERT INTO "channel" ("id","name","admin_username","wid") VALUES (1,'general','priya',1),
 (2,'doubts','priya',1),
 (3,'notice','priya',1);
INSERT INTO "chats" ("id","message","username","wid","channel_id","image") VALUES (1,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill,h_100,w_100/v2bb3mi453o1tknqo4qn','priya',1,1,1),
 (2,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill,h_100,w_100/iduhl8fbaqwkkosjjpwv','priya',1,1,1),
 (3,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill,h_100,w_100/u9lykaqylhcialgwzrln','priya',1,1,1),
 (4,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/r5bnucd4herwkcdkb9ws','priya',1,1,1),
 (5,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/aaza16gtcyfsggxkmufc','priya',1,1,1),
 (6,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/maww837bxjl8kqndexqu','priya',1,1,1),
 (7,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/rbv1npkd7yak5bdvzw91','priya',1,1,1),
 (8,'hello','priya',1,1,0),
 (9,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/msv1momrogaq8qww2nzr','priya',1,1,1),
 (10,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/c8cpabpf5297xmuhxncr','priya',1,1,1),
 (11,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/rssjpiv2jdpzacbcsua5','priya',1,1,1),
 (12,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/cdc4znrq6jx74kzqxx0g','priya',1,1,1),
 (13,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/qjcubwtuqqtgsxkfr8ny','priya',1,1,1),
 (14,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/xkoffull9tnk1s49te9i','priya',1,1,1),
 (15,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/c7vf4dmhnovfr1ygrudn','priya',1,1,1),
 (16,'hello','priya',1,1,0),
 (17,'hello','jainam',1,1,0),
 (18,'hello','priya',1,1,0),
 (19,'hello','priya',1,1,0),
 (20,'hello','priya',1,1,0),
 (21,'hello','priya',1,1,0),
 (22,'hello','priya',1,1,0),
 (23,'hello','jainam',1,1,0),
 (24,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/hqbv1l1uisl7gx5qfpgx','jainam',1,1,1),
 (25,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/bmqszrusfeha2of8jbrt','jainam',1,1,1),
 (26,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/ldqxmgo8zli0rrze5toc','priya',1,1,1),
 (27,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/omms21yenu4hxbljksx6','jainam',1,1,1),
 (28,'hello','priya',1,1,0),
 (29,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/ak7jadt2j1t5gze1i7eh','priya',1,1,1),
 (30,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/qznve9gheiluo6bnomfd','priya',1,1,1),
 (31,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/owck5ulw5v9tg2nuyn7v','priya',1,1,1),
 (32,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/ptsmgeizldrvjmojqlc9','jainam',1,1,1),
 (33,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/cyfmksvnuqvzaivtkob6','priya',1,1,1),
 (34,'hello','jainam',1,1,0),
 (35,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/jzhenizfqc6subobagno','priya',1,1,1),
 (36,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/h7vd2rscrphrqawvn0nl','jainam',1,1,1),
 (37,'good morning','jainam',1,1,0),
 (38,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/tumqrz0ug6h56lvdxees','priya',1,1,1),
 (39,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/bvxb9t9zyzlbbpzituuu','jainam',1,1,1),
 (40,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/alhailer80lspmf1sdx7','priya',1,1,1),
 (41,'hellllllllllllllllllllllooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo','priya',1,1,0),
 (42,'hello','priya',1,1,0),
 (43,'hello','priya',1,1,0),
 (44,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/usfm2lf0ixc0ajqqyaps','priya',1,2,1),
 (45,'hello','priya',1,1,0),
 (46,'hello','@jainam',1,1,0),
 (47,'did you checkout github dark mode?','@priya',1,1,0),
 (48,'yep it is so cool','@jainam',1,1,0),
 (49,'Also I made minor changes in the code','@jainam',1,1,0),
 (50,'what?','@priya',1,1,0),
 (51,'Changed the lorem ipsum texts','@jainam',1,1,0),
 (52,'on the login pages','@jainam',1,1,0),
 (53,'okay great! did you push the code?','@priya',1,1,0),
 (54,'hello','@priya',1,1,0),
 (55,'hello','priya',1,1,0),
 (56,'hello','@jainam',1,1,0),
 (57,'hello','priya',1,1,0),
 (58,'hello','jainam',1,1,0),
 (59,'did you checkout github dark mode?','priya',1,1,0),
 (60,'yep it is so cool','jainam',1,1,0),
 (61,'Also I made minor changes to the code','jainam',1,1,0),
 (62,'okay what?','priya',1,1,0),
 (63,'Changed the lorem ipsum texts','jainam',1,1,0),
 (64,'on the login page','jainam',1,1,0),
 (65,'okay great! did you push the code?','priya',1,1,0),
 (66,'Even I changed a few things on the landing page... Have a look and let me know how it looks','priya',1,1,0),
 (67,'http://res.cloudinary.com/xyz123456789xyz/image/upload/c_fill/iahgcajepged6j9rhfry','priya',1,1,1),
 (68,'perfect! I think we are good to go','jainam',1,1,0);
CREATE UNIQUE INDEX IF NOT EXISTS "ix_user_email" ON "user" (
	"email"
);
CREATE UNIQUE INDEX IF NOT EXISTS "ix_user_name" ON "user" (
	"name"
);
CREATE INDEX IF NOT EXISTS "ix_workspace_admin_username" ON "workspace" (
	"admin_username"
);
CREATE INDEX IF NOT EXISTS "ix_workspace_name" ON "workspace" (
	"name"
);
CREATE INDEX IF NOT EXISTS "ix_channel_wid" ON "channel" (
	"wid"
);
CREATE INDEX IF NOT EXISTS "ix_channel_admin_username" ON "channel" (
	"admin_username"
);
CREATE INDEX IF NOT EXISTS "ix_channel_name" ON "channel" (
	"name"
);
CREATE INDEX IF NOT EXISTS "ix_chats_channel_id" ON "chats" (
	"channel_id"
);
CREATE INDEX IF NOT EXISTS "ix_chats_wid" ON "chats" (
	"wid"
);
CREATE INDEX IF NOT EXISTS "ix_chats_username" ON "chats" (
	"username"
);
CREATE INDEX IF NOT EXISTS "ix_chats_message" ON "chats" (
	"message"
);
COMMIT;
