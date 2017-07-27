﻿create database InstaPost;
GO
use InstaPost;
GO

create table Users (
	userId INT NOT NULL,
	firstName VARCHAR(50),
	lastName VARCHAR(50),
	email VARCHAR(50),
	password VARCHAR(50),
	isSuspended BIT,
	profilePicture VARCHAR(100),
	PRIMARY KEY (userId)
);

insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (1, 'Cathryn', 'Murdy', 'cmurdy0@huffingtonpost.com', 'UTvxYiY', 0, 'https://robohash.org/doloresdictaomnis.bmp?size=50x50&set=set1');
insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (2, 'Alyssa', 'Odney', 'aodney1@umich.edu', 'OpnOGGqk3oH', 0, 'https://robohash.org/etoditnon.png?size=50x50&set=set1');
insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (3, 'Mandie', 'Nutbeam', 'mnutbeam2@howstuffworks.com', 'hcl0pI', 1, 'https://robohash.org/praesentiumquaeratquod.bmp?size=50x50&set=set1');
insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (4, 'Waldon', 'Astupenas', 'wastupenas3@shutterfly.com', '2X6Y5Whawma', 1, 'https://robohash.org/oditquaeaccusamus.png?size=50x50&set=set1');
insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (5, 'Tucker', 'Radolf', 'tradolf4@lulu.com', 'z9OOnqh', 1, 'https://robohash.org/etnonut.jpg?size=50x50&set=set1');
insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (6, 'Issi', 'McReynolds', 'imcreynolds5@pen.io', 'MZaRRxYQ', 0, 'https://robohash.org/nonveritatismodi.jpg?size=50x50&set=set1');
insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (7, 'Ricca', 'Denys', 'rdenys6@newyorker.com', 'wUYtYFzd', 0, 'https://robohash.org/modiplaceatrecusandae.png?size=50x50&set=set1');
insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (8, 'Barnard', 'Cryer', 'bcryer7@eepurl.com', 'x65dqhFeE77', 0, 'https://robohash.org/porroliberoanimi.bmp?size=50x50&set=set1');
insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (9, 'Linea', 'Aronin', 'laronin8@studiopress.com', '4SFjA8lM', 0, 'https://robohash.org/ipsamnatustemporibus.png?size=50x50&set=set1');
insert into Users (userId, firstName, lastName, email, password, isSuspended, profilePicture) values (10, 'Edita', 'Youle', 'eyoule9@ameblo.jp', 'w1wUXPLW', 1, 'https://robohash.org/blanditiisodioipsum.jpg?size=50x50&set=set1');

create table Posts (
	postId INT NOT NULL,
	postImage VARCHAR(50),
	postText VARCHAR(50),
	tags VARCHAR(MAX),
	postDate DATE,
	userId INT NOT NULL,
	PRIMARY KEY (postid),
	CONSTRAINT FK_UserPost FOREIGN KEY (userID)
	REFERENCES Users(userID)
);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (1, 'http://dummyimage.com/136x174.jpg/ff4444/ffffff', 'Networked bifurcated structure', 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', '6/13/2014', 1);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (2, 'http://dummyimage.com/164x243.jpg/dddddd/000000', 'Intuitive intangible ability', 'sed accumsan felis ut at dolor quis odio consequat varius integer ac', '5/4/2016', 1);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (3, 'http://dummyimage.com/104x179.bmp/5fa2dd/ffffff', 'Advanced holistic structure', 'suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', '7/2/2015', 1);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (4, 'http://dummyimage.com/136x153.png/cc0000/ffffff', 'Expanded 6th generation software', 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget', '6/4/2016', 2);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (5, 'http://dummyimage.com/233x174.jpg/cc0000/ffffff', 'Intuitive asymmetric conglomeration', 'eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam', '10/6/2016', 2);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (6, 'http://dummyimage.com/189x102.jpg/dddddd/000000', 'Pre-emptive context-sensitive pricing structure', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', '10/23/2015', 2);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (7, 'http://dummyimage.com/158x118.png/cc0000/ffffff', 'Implemented actuating support', 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', '7/13/2016', 3);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (8, 'http://dummyimage.com/143x172.jpg/ff4444/ffffff', 'Optimized motivating frame', 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', '2/14/2016', 3);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (9, 'http://dummyimage.com/246x185.jpg/dddddd/000000', 'Integrated directional service-desk', 'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', '4/24/2017', 3);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (10, 'http://dummyimage.com/177x202.jpg/cc0000/ffffff', 'Networked disintermediate knowledge base', 'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla', '7/9/2014', 4);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (11, 'http://dummyimage.com/233x188.jpg/cc0000/ffffff', 'Persevering disintermediate paradigm', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', '1/21/2015', 4);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (12, 'http://dummyimage.com/149x185.bmp/ff4444/ffffff', 'Horizontal explicit array', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', '7/22/2015', 4);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (13, 'http://dummyimage.com/191x246.bmp/dddddd/000000', 'Compatible encompassing pricing structure', 'a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', '9/8/2016', 5);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (14, 'http://dummyimage.com/138x193.jpg/cc0000/ffffff', 'Seamless dedicated success', 'non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', '8/26/2016', 5);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (15, 'http://dummyimage.com/111x229.bmp/dddddd/000000', 'Assimilated 24/7 matrix', 'cras mi pede malesuada in imperdiet et commodo vulputate justo in', '2/4/2016', 5);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (16, 'http://dummyimage.com/155x116.png/dddddd/000000', 'User-centric high-level application', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt', '3/15/2017', 6);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (17, 'http://dummyimage.com/148x151.jpg/dddddd/000000', 'Balanced optimizing success', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla', '1/1/2015', 6);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (18, 'http://dummyimage.com/165x229.bmp/cc0000/ffffff', 'Reactive dedicated structure', 'non mi integer ac neque duis bibendum morbi non quam', '2/13/2015', 6);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (19, 'http://dummyimage.com/215x168.jpg/cc0000/ffffff', 'Digitized full-range task-force', 'elementum nullam varius nulla facilisi cras non velit nec nisi', '7/2/2016', 7);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (20, 'http://dummyimage.com/193x105.bmp/5fa2dd/ffffff', 'Assimilated asynchronous core', 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', '3/25/2015', 7);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (21, 'http://dummyimage.com/167x239.jpg/cc0000/ffffff', 'Face to face optimal website', 'vitae nisl aenean lectus pellentesque eget nunc donec quis orci', '5/4/2016', 7);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (22, 'http://dummyimage.com/168x150.jpg/cc0000/ffffff', 'Multi-channelled methodical moratorium', 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est', '3/5/2017', 8);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (23, 'http://dummyimage.com/181x170.bmp/dddddd/000000', 'Multi-tiered 5th generation hub', 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', '4/16/2016', 8);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (24, 'http://dummyimage.com/205x160.jpg/ff4444/ffffff', 'Phased composite data-warehouse', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', '7/2/2014', 8);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (25, 'http://dummyimage.com/168x239.jpg/dddddd/000000', 'Secured value-added strategy', 'donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo', '11/22/2015', 9);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (26, 'http://dummyimage.com/179x236.jpg/ff4444/ffffff', 'Inverse transitional orchestration', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus', '9/20/2016', 9);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (27, 'http://dummyimage.com/146x249.png/5fa2dd/ffffff', 'Pre-emptive dynamic process improvement', 'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus', '6/29/2016', 9);

insert into Posts (postid, postImage, postText, tags, postDate, userId) values (28, 'http://dummyimage.com/126x156.jpg/5fa2dd/ffffff', 'Centralized impactful groupware', 'auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis', '1/2/2016', 10);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (29, 'http://dummyimage.com/102x132.jpg/cc0000/ffffff', 'Monitored coherent success', 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', '12/10/2016', 10);
insert into Posts (postid, postImage, postText, tags, postDate, userId) values (30, 'http://dummyimage.com/224x177.bmp/dddddd/000000', 'Optional static software', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede', '12/20/2015', 10);

create table Comments (
	commentId INT NOT NULL,
	postId INT NOT NULL,
	userId INT NOT NULL,
	commentText VARCHAR(50),
	commentDate DATE,
	PRIMARY KEY (commentId),
	CONSTRAINT FK_PostComment FOREIGN KEY (postId)
	REFERENCES Posts(postId),
	CONSTRAINT FK_UserComment FOREIGN KEY (userId)
	REFERENCES Users(userId)
);

insert into Comments (commentId, postId, userId, commentText, commentDate) values (1, 1, 1, 'Advanced bandwidth-monitored project', '4/8/2017');
insert into Comments (commentId, postId, userId, commentText, commentDate) values (2, 2, 2, 'Public-key radical ability', '11/23/2016');
insert into Comments (commentId, postId, userId, commentText, commentDate) values (3, 3, 3, 'Balanced fault-tolerant secured line', '2/15/2017');
insert into Comments (commentId, postId, userId, commentText, commentDate) values (4, 4, 4, 'Devolved exuding neural-net', '3/8/2017');
insert into Comments (commentId, postId, userId, commentText, commentDate) values (5, 5, 5, 'De-engineered attitude-oriented benchmark', '10/7/2015');
insert into Comments (commentId, postId, userId, commentText, commentDate) values (6, 6, 6, 'Pre-emptive disintermediate encoding', '12/28/2016');
insert into Comments (commentId, postId, userId, commentText, commentDate) values (7, 7, 7, 'Inverse motivating extranet', '1/9/2016');
insert into Comments (commentId, postId, userId, commentText, commentDate) values (8, 8, 8, 'Open-source modular orchestration', '2/27/2017');
insert into Comments (commentId, postId, userId, commentText, commentDate) values (9, 9, 9, 'Synergized optimal local area network', '7/30/2016');
insert into Comments (commentId, postId, userId, commentText, commentDate) values (10, 10, 10, 'Universal optimizing success', '8/5/2015');


create table Locations (
	locationId INT NOT NULL,
	address VARCHAR(50),
	city VARCHAR(50),
	country VARCHAR(50),
	userId INT NOT NULL,
	postId INT NOT NULL,
	PRIMARY KEY (locationId),
	CONSTRAINT FK_PostLocation FOREIGN KEY (postId)
	REFERENCES Posts(postId),
	CONSTRAINT FK_UserLocation FOREIGN KEY (userId)
	REFERENCES Users(userId)
);

insert into Locations (locationId, address, city, country, userId, postId) values (1, '937 Morrow Road', 'Casa Nova', 'Portugal', 1, 1);
insert into Locations (locationId, address, city, country, userId, postId) values (2, '5465 Gale Avenue', 'Krajan Joho', 'Indonesia', 2, 2);
insert into Locations (locationId, address, city, country, userId, postId) values (3, '04 Vermont Avenue', 'Araras', 'Brazil', 3, 3);
insert into Locations (locationId, address, city, country, userId, postId) values (4, '03361 Susan Road', 'Tromsø', 'Norway', 4, 4);
insert into Locations (locationId, address, city, country, userId, postId) values (5, '5782 Florence Trail', 'Mujur', 'Indonesia', 5, 5);
insert into Locations (locationId, address, city, country, userId, postId) values (6, '48337 Glendale Alley', 'Nusajaya', 'Malaysia', 6, 6);
insert into Locations (locationId, address, city, country, userId, postId) values (7, '86 Vahlen Plaza', 'Faqqū‘ah', 'Palestinian Territory', 7, 7);
insert into Locations (locationId, address, city, country, userId, postId) values (8, '69381 Park Meadow Point', 'Bankeryd', 'Sweden', 8, 8);
insert into Locations (locationId, address, city, country, userId, postId) values (9, '34 Judy Center', 'Syracuse', 'United States', 9, 9);
insert into Locations (locationId, address, city, country, userId, postId) values (10, '997 Amoth Hill', 'Kladanj', 'Bosnia and Herzegovina', 10, 10);

GO