CREATE USER 'retriever' IDENTIFIED BY 'password';
GRANT SELECT, DELETE, INSERT, UPDATE ON game.* TO 'retriever'@'%';

FLUSH privileges;