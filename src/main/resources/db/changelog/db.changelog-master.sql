--changeset est:1
--comment: create user table
create sequence seq_cms_user
INCREMENT BY 1;

create table t_cms_user (
    id       INT NOT NULL DEFAULT nextval('seq_cms_user') PRIMARY KEY,
    username VARCHAR(32) NOT NULL,
    email TEXT,
    password TEXT NOT NULL
);
CREATE EXTENSION pgcrypto;

INSERT INTO t_cms_user (username, password)
    values('est', crypt('est', gen_salt('bf')));
