# --- !Ups

create table user (`userID` VARCHAR(254) NOT NULL PRIMARY KEY, `firstName` VARCHAR(254), `lastName` VARCHAR(254),`fullName` VARCHAR(254), `email` VARCHAR(254), `avatarURL` VARCHAR(254));
create table logininfo (`id` BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,`providerID` VARCHAR(254) NOT NULL,`providerKey` VARCHAR(254) NOT NULL);
create table userlogininfo (`userID` VARCHAR(254) NOT NULL,`loginInfoId` BIGINT NOT NULL);
create table passwordinfo (`hasher` VARCHAR(254) NOT NULL,`password` VARCHAR(254) NOT NULL,`salt` VARCHAR(254), `loginInfoId` BIGINT NOT NULL);
create table oauth1info (`id` BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,`token` VARCHAR(254) NOT NULL,`secret` VARCHAR(254) NOT NULL,`loginInfoId` BIGINT NOT NULL);
create table oauth2info (`id` BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,`accesstoken` VARCHAR(254) NOT NULL,`tokentype` VARCHAR(254), `expiresin` INTEGER,`refreshtoken` VARCHAR(254), `logininfoid` BIGINT NOT NULL);
create table openidinfo (`id` VARCHAR(254) NOT NULL PRIMARY KEY,`logininfoid` BIGINT NOT NULL);
create table openidattributes (`id` VARCHAR(254) NOT NULL,`key` VARCHAR(254) NOT NULL,`value` VARCHAR(254) NOT NULL);


# --- !Downs

drop table `openidattributes`;
drop table `openidinfo`;
drop table `oauth2info`;
drop table `oauth1info`;
drop table `passwordinfo`;
drop table `userlogininfo`;
drop table `logininfo`;
drop table `user`;