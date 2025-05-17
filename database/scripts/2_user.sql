CREATE USER 'client'@'%' IDENTIFIED BY 'bancodedados';
GRANT SELECT, UPDATE, DELETE, INSERT ON social_media.* TO 'client'@'%';
FLUSH PRIVILEGES; 