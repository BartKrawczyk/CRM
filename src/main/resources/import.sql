INSERT INTO crm.users(admin, first_name, last_name, login, password) VALUES (true, 'Bart', 'Krawczyk', 'Bart', '123456789');
INSERT INTO crm.users(admin, first_name, last_name, login, password) VALUES (false, 'Tadeusz', 'Nowak', 'Nowak', 'qwertyuio');
INSERT INTO crm.users(admin, first_name, last_name, login, password) VALUES (false, 'Jan', 'Szpak', 'JancioSZ', 'asdklfja9');
INSERT INTO crm.users(admin, first_name, last_name, login, password) VALUES (false, 'Tomasz', 'Polak', 'Tomek', 'aidsf0');
INSERT INTO crm.users(admin, first_name, last_name, login, password) VALUES (false, 'Michał', 'Krotoszyński', 'Mitch', '8d8jhgh9');
INSERT INTO crm.users(admin, first_name, last_name, login, password) VALUES (false, 'Akeksander', 'Różewicz', 'Olo', 'adf232rreqw');
INSERT INTO crm.users(admin, first_name, last_name, login, password) VALUES (true, 'Krystian', 'Rudy', 'Krist', 'adfadf3');

INSERT INTO crm.projects(name, identifier, description, www, active, created) VALUES ('Cosmic traveling', 'Cosmic-traveling', 'About possibilities of space shuttles', 'https://www.spaceshuttle.com', true, '2020-01-05 09:12:50');
INSERT INTO crm.projects(name, identifier, description, www, active, created) VALUES ('Cosmic guns', 'Cosmic-guns', 'Cosmic guns are able to shoot the Moon down', 'https://www.moondown.com', true, '2020-01-04 10:38:23');
INSERT INTO crm.projects(name, identifier, description, www, active, created) VALUES ('Moon dust', 'Moon-dust', 'New stuff from moon could be new coal', 'https://www.newcoal.com', true, '2020-01-03 08:23:00');
INSERT INTO crm.projects(name, identifier, description, www, active, created) VALUES ('Breeding', 'Breeding', 'New ways of breeding aliens', 'https://www.alienbreed.com', false, '2019-12-03 12:24:09');
INSERT INTO crm.projects(name, identifier, description, www, active, created) VALUES ('Measurement of Sun', 'Measurement-of-Sun', 'All about measurements of sun', 'https://www.suntemp.com', true, '2019-10-20 09:23:22');
INSERT INTO crm.projects(name, identifier, description, www, active, created) VALUES ('StarWars', 'StarWars', 'All about lasers and cosmic torpedos', 'https://www.starwars.com', true, '2019-11-09 14:45:00');
INSERT INTO crm.projects(name, identifier, description, www, active, created) VALUES ('Space kitchen', 'Space-kitchen', 'Developing food for astronauts', 'https://www.spacekitchen.com', true, '2019-09-09 23:09');

INSERT INTO crm.project_user(id_user, id_project) VALUES (1, 1);
INSERT INTO crm.project_user(id_user, id_project) VALUES (1, 5);
INSERT INTO crm.project_user(id_user, id_project) VALUES (2, 7);
INSERT INTO crm.project_user(id_user, id_project) VALUES (2, 4);
INSERT INTO crm.project_user(id_user, id_project) VALUES (3, 2);
INSERT INTO crm.project_user(id_user, id_project) VALUES (3, 7);
INSERT INTO crm.project_user(id_user, id_project) VALUES (4, 1);
INSERT INTO crm.project_user(id_user, id_project) VALUES (4, 7);
INSERT INTO crm.project_user(id_user, id_project) VALUES (5, 2);
INSERT INTO crm.project_user(id_user, id_project) VALUES (5, 5);
INSERT INTO crm.project_user(id_user, id_project) VALUES (5, 6);
INSERT INTO crm.project_user(id_user, id_project) VALUES (6, 3);
INSERT INTO crm.project_user(id_user, id_project) VALUES (6, 4);
INSERT INTO crm.project_user(id_user, id_project) VALUES (6, 5);
INSERT INTO crm.project_user(id_user, id_project) VALUES (5, 7);

