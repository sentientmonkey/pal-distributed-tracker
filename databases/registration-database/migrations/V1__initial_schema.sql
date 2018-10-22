create table users (
  id   bigint(20) not null auto_increment,
  name VARCHAR(190),

  primary key (id),
  unique key name (name)
)
engine = innodb
default charset = utf8mb4;

create table accounts (
  id       bigint(20) not null auto_increment,
  owner_id bigint(20),
  name     VARCHAR(190),

  primary key (id),
  unique key name (name),
  constraint foreign key (owner_id) references users (id)
)
engine = innodb
default charset = utf8mb4;

create table projects (
  id         bigint(20) not null auto_increment,
  account_id bigint(20),
  name       VARCHAR(190),
  active     bit(1) not null default b'1',

  primary key (id),
  unique key name (name),
  constraint foreign key (account_id) references accounts (id)
)
engine = innodb
default charset = utf8mb4;
