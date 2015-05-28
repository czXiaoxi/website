create TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) not NULL,
  password varchar(20) not null, 
  `address` varchar(200) not NULL,
  phone_number varchar(20)not null,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


create TABLE `estore` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(50) not NULL,
  category varchar(20) not null, 
  `describe` varchar(200) not NULL,
  price double not null,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

create TABLE `shopping_cart` (
  `user_id` int(11) NOT NULL,
  `goods_id` varchar(50) not NULL,
  goods_name varchar(50) not NULL, 
  `count` int not NULL,
  price double not null,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table orderline;
create table orderline(
	line_id int AUTO_INCREMENT primary key,
	goods_id int references estore(goods_id),
	count int not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into estore(goods_id,goods_name,category,describe,price) values(,"怡宝"，"食品"，"纯净水"，2),
							(,"iphone6","手机"，"电子"，"shouji","5000"),
							(,"水杯"，"家电","杯子",50);