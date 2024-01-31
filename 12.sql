--
-- Файл сгенерирован с помощью SQLiteStudio v3.4.4 в Вт дек 19 23:14:43 2023
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: account_emailaddress
CREATE TABLE IF NOT EXISTS "account_emailaddress" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "verified" bool NOT NULL, "primary" bool NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "email" varchar(254) NOT NULL UNIQUE);
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (1, 'yes', 1, 1, '1');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (2, 'yes', 2, 1, '2');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (3, 'yes', 3, 2, '3');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (4, 'yes', 4, 2, '4');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (5, 'no', 5, 2, '5');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (6, 'no', 6, 1, '6');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (7, 'yes', 7, 1, '7');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (8, 'no', 8, 2, '8');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (9, 'no', 9, 2, '9');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (10, 'yes', 10, 1, '10');

-- Таблица: account_emailconfirmation
CREATE TABLE IF NOT EXISTS "account_emailconfirmation" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "created" datetime NOT NULL, "sent" datetime NULL, "key" varchar(64) NOT NULL UNIQUE, "email_address_id" integer NOT NULL REFERENCES "account_emailaddress" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (1, 1, 1, '1', 1);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (2, 2, 2, '2', 2);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (3, 3, 3, '3', 3);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (4, 4, 4, '4', 4);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (5, 5, 5, '5', 5);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (6, 6, 6, '6', 6);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (7, 7, 7, '7', 7);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (8, 8, 8, '8', 8);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (9, 9, 9, '9', 9);
INSERT INTO account_emailconfirmation (id, created, sent, key, email_address_id) VALUES (10, 10, 10, '10', 1);

-- Таблица: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
INSERT INTO auth_group (id, name) VALUES (1, '1');
INSERT INTO auth_group (id, name) VALUES (2, '2');
INSERT INTO auth_group (id, name) VALUES (3, '3');
INSERT INTO auth_group (id, name) VALUES (4, '4');
INSERT INTO auth_group (id, name) VALUES (5, '5');
INSERT INTO auth_group (id, name) VALUES (6, '6');
INSERT INTO auth_group (id, name) VALUES (7, '7');
INSERT INTO auth_group (id, name) VALUES (8, '8');
INSERT INTO auth_group (id, name) VALUES (9, '9');
INSERT INTO auth_group (id, name) VALUES (10, '10');

-- Таблица: auth_group_permissions
CREATE TABLE IF NOT EXISTS auth_group_permissions (id integer NOT NULL PRIMARY KEY AUTOINCREMENT, group_id integer NOT NULL REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED, permission_id integer NOT NULL REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (1, 1, 1);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (2, 2, 2);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (3, 3, 3);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (4, 4, 4);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (5, 5, 5);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (6, 6, 6);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (7, 7, 7);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (8, 8, 8);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (9, 9, 9);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (10, 1, 10);

-- Таблица: auth_permission
CREATE TABLE IF NOT EXISTS auth_permission (id integer NOT NULL PRIMARY KEY AUTOINCREMENT, content_type_id integer NOT NULL REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED, codename varchar (100) NOT NULL, name varchar (255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_chexi', 'Can add chexi');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_chexi', 'Can change chexi');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_chexi', 'Can delete chexi');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_chexi', 'Can view chexi');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_emailaddress', 'Can add email address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_emailaddress', 'Can change email address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_emailaddress', 'Can delete email address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_emailaddress', 'Can view email address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_emailconfirmation', 'Can add email confirmation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_emailconfirmation', 'Can change email confirmation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_emailconfirmation', 'Can delete email confirmation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_emailconfirmation', 'Can view email confirmation');

-- Таблица: auth_user
CREATE TABLE IF NOT EXISTS auth_user (id integer NOT NULL PRIMARY KEY AUTOINCREMENT, password varchar (128) NOT NULL, last_login datetime, is_superuser bool NOT NULL, username varchar (150) NOT NULL UNIQUE, last_name varchar (150) NOT NULL, email varchar (254) NOT NULL, is_staff bool NOT NULL, is_active bool NOT NULL, date_joined datetime NOT NULL, first_name varchar (150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$390000$K4dJZDaKj2Jp4nqU7J2ogp$+x12KwokjbMW/qaUeIF4pZW1TZjXxqt8a1DsUxbRrEc=', '2023-03-14 22:14:03.485222', 1, 'c00lc4t', '', 'krainukovaleksandr1@gmail.com', 1, 1, '2023-03-05 18:55:56.912885', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$390000$AvtDiFloyU1RKNv6RlaDtQ$TOu5NHMfJRB3UQHbp7LtiMtnlOTL+Jc+vD2JiagTmsw=', '2023-12-10 15:49:54.039650', 1, 'Alik', '', 'zhele533@gmail.com', 1, 1, '2023-03-08 20:15:30.280244', '');

-- Таблица: auth_user_groups
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (1, 1, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (2, 1, 2);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (3, 2, 3);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (4, 2, 4);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (5, 2, 5);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (6, 1, 6);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (7, 1, 7);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (8, 2, 8);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (9, 1, 9);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (10, 1, 10);

-- Таблица: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (1, 1, 1);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (2, 1, 2);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (3, 2, 3);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (4, 1, 4);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (5, 2, 5);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (6, 2, 6);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (7, 2, 7);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (8, 2, 8);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (9, 1, 9);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (10, 1, 10);

-- Таблица: django_admin_log
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '1', 'Chexi object (1)', 1, '[{"added": {}}]', 7, 1, '2023-03-05 19:14:55.674405');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '2', 'Chexi object (2)', 1, '[{"added": {}}]', 7, 1, '2023-03-08 13:43:44.005493');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '2', 'Chexi object (2)', 2, '[{"changed": {"fields": ["Photo"]}}]', 7, 1, '2023-03-08 13:44:28.059747');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '2', 'Chexi object (2)', 3, '', 7, 2, '2023-03-08 20:16:53.821355');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '1', 'Chexi object (1)', 2, '[]', 7, 2, '2023-03-08 20:19:22.024362');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '3', 'Chexi object (3)', 1, '[{"added": {}}]', 7, 2, '2023-03-08 20:21:02.415804');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '4', 'Chexi object (4)', 1, '[{"added": {}}]', 7, 2, '2023-03-08 20:21:55.624076');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '3', 'Chexi object (3)', 3, '', 7, 2, '2023-03-08 20:22:46.810393');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '4', 'Chexi object (4)', 3, '', 7, 2, '2023-03-08 20:22:52.440393');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '5', 'Chexi object (5)', 1, '[{"added": {}}]', 7, 2, '2023-03-09 21:05:46.102452');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '6', 'Chexi object (6)', 1, '[{"added": {}}]', 7, 2, '2023-03-09 21:06:39.150213');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '6', 'Chexi object (6)', 3, '', 7, 2, '2023-03-09 21:06:54.189263');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '5', 'Chexi object (5)', 3, '', 7, 2, '2023-03-09 21:06:54.273268');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (14, '7', 'Chexi object (7)', 1, '[{"added": {}}]', 7, 2, '2023-03-09 21:08:01.267271');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (15, '7', 'Chexi object (7)', 3, '', 7, 2, '2023-03-09 21:13:02.725604');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (16, '8', 'Chexi object (8)', 1, '[{"added": {}}]', 7, 2, '2023-03-09 21:18:34.339197');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (17, '8', 'Chexi object (8)', 3, '', 7, 2, '2023-03-09 21:20:19.552087');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (18, '9', 'Chexi object (9)', 1, '[{"added": {}}]', 7, 2, '2023-03-09 21:20:57.910917');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (19, '10', 'Chexi object (10)', 1, '[{"added": {}}]', 7, 2, '2023-03-09 21:21:08.360291');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (20, '11', 'Chexi object (11)', 1, '[{"added": {}}]', 7, 2, '2023-03-09 21:21:18.694134');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (21, '12', 'Chexi object (12)', 1, '[{"added": {}}]', 7, 2, '2023-03-13 20:30:59.590825');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (22, '9', 'Chexi object (9)', 2, '[{"changed": {"fields": ["Name", "Forename", "Age", "Country", "Gender", "Nationality", "Photo"]}}]', 7, 2, '2023-03-13 20:33:35.419982');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (23, '10', 'Chexi object (10)', 2, '[{"changed": {"fields": ["Name", "Forename", "Age", "Country", "Gender", "Nationality"]}}]', 7, 2, '2023-03-13 20:34:34.168993');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (24, '10', 'Chexi object (10)', 2, '[{"changed": {"fields": ["Photo"]}}]', 7, 2, '2023-03-13 20:34:44.917875');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (25, '11', 'Chexi object (11)', 2, '[{"changed": {"fields": ["Name", "Forename", "Age", "Country", "Gender", "Nationality", "Photo"]}}]', 7, 2, '2023-03-13 20:35:20.192185');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (26, '13', 'Chexi object (13)', 1, '[{"added": {}}]', 7, 2, '2023-03-13 20:37:12.373008');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (27, '13', 'Chexi object (13)', 3, '', 7, 2, '2023-03-14 22:30:43.161079');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (28, '14', 'Chexi object (14)', 1, '[{"added": {}}]', 7, 2, '2023-03-14 22:36:01.119217');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (29, '14', 'Chexi object (14)', 2, '[{"changed": {"fields": ["Kolvo", "Age opg soz", "Age opg"]}}]', 7, 2, '2023-03-14 22:47:01.009802');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (30, '14', 'Chexi object (14)', 2, '[{"changed": {"fields": ["Kolvo", "Age opg soz", "Age opg", "Crime opg"]}}]', 7, 2, '2023-03-14 22:51:16.141310');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (31, '14', 'Chexi object (14)', 2, '[{"changed": {"fields": ["Country", "Kolvo", "Age opg soz", "Age opg"]}}]', 7, 2, '2023-03-15 20:07:43.195926');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (32, '1', 'Chexi object (1)', 2, '[{"changed": {"fields": ["Crime"]}}]', 7, 2, '2023-03-19 21:48:23.491635');

-- Таблица: django_content_type
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'kartoteka', 'chexi');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'account', 'emailaddress');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'account', 'emailconfirmation');

-- Таблица: django_migrations
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2023-03-05 18:54:26.063442');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2023-03-05 18:54:26.098836');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2023-03-05 18:54:26.125499');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-03-05 18:54:26.147548');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-05 18:54:26.160471');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-03-05 18:54:26.188754');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-03-05 18:54:26.209317');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-03-05 18:54:26.231981');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-03-05 18:54:26.249518');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-03-05 18:54:26.268559');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-03-05 18:54:26.278601');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-05 18:54:26.293370');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-03-05 18:54:26.311915');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-05 18:54:26.330441');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-03-05 18:54:26.352217');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-03-05 18:54:26.365746');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-05 18:54:26.392818');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'kartoteka', '0001_initial', '2023-03-05 18:54:26.405676');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'sessions', '0001_initial', '2023-03-05 18:54:26.430714');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'account', '0001_initial', '2023-03-09 20:54:33.062565');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'account', '0002_email_max_length', '2023-03-09 20:54:33.160574');

-- Таблица: django_session
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ieo1pb4yvh8x21fnhzmo30foup1mnf8a', '.eJxVjLEOAiEQRP-F2hBgwyGW9n4D2WVBTg0kx11l_He55AqdYop5M_MWAbe1hK2nJcwsLkKL029GGJ-p7oAfWO9NxlbXZSa5V-RBu7w1Tq_r0f07KNjLWAPARMYjWATKQ8pFQGWIpuicV8lmNMPPmI1np9kRGMeaEhhrwYrPF-5YN_M:1pYtWq:uSz3Ae_IKat4bIl--EauQYbbF1PYJYePTLVJd7v7lXY', '2023-03-19 18:56:16.484920');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('mi67z3ma130o0j3cafj6gi3xgiitcxx0', '.eJxVjEEOwiAURO_C2hAE2kKX7j0Dofz_BTVgSptojHe3JF3obmbe5L2Z8-sS3VpxdgnYyCQ7_G6TDzfMDcDV50vhoeRlThNvF77Tys8F8H7av3-C6GtsWoPKGlKCOjMgGCutIBBS9Z609oS09e5oVJBIOsCgB0VEvQIttkxNWrHWVLLD5yPNLzaKzxeJjj83:1pbp6m:DKBdvh2JYd_bwwK2o6rAeEquaMyIb0n0yZ-XnGTiBNQ', '2023-03-27 20:49:28.344248');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('1z7pqp1ml1uimqfc0wfzv37yyg3wkl8g', '.eJxVjLEOAiEQRP-F2hBgwyGW9n4D2WVBTg0kx11l_He55AqdYop5M_MWAbe1hK2nJcwsLkKL029GGJ-p7oAfWO9NxlbXZSa5V-RBu7w1Tq_r0f07KNjLWAPARMYjWATKQ8pFQGWIpuicV8lmNMPPmI1np9kRGMeaEhhrwYrPF-5YN_M:1pcCuB:EQZs5J3KB_M46r72ZsFWPR9VEAeJRPU7NWibxizmNQ0', '2023-03-28 22:14:03.488419');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ykufnokxdzmaereww18kbqdo2h5hhv5j', '.eJxVjEEOwiAURO_C2hAE2kKX7j0Dofz_BTVgSptojHe3JF3obmbe5L2Z8-sS3VpxdgnYyCQ7_G6TDzfMDcDV50vhoeRlThNvF77Tys8F8H7av3-C6GtsWoPKGlKCOjMgGCutIBBS9Z609oS09e5oVJBIOsCgB0VEvQIttkxNWrHWVLLD5yPNLzaKzxeJjj83:1pcl3X:VsdWCsoOXM-bOWRWngyBMcvquBLlhMTj_jTMkoGBLps', '2023-03-30 10:41:59.953720');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('sc4zm3wxnai5fog94yp77afhy5x70qyr', '.eJxVjMEOwiAQRP-FsyHI0gIevfsNhLK7UjWQlPZk_HdL0oPeZua9zFuEuK05bI2WMKO4CC1Ov9sU05NKB_iI5V5lqmVd5kl2RR60yVtFel0P9-8gx5b7rSPwjkHx4Cyh89orRqVhjGxMZOK9D2cHSRObhNZYYOYR0Kg9s_h8Ad-wN_o:1pe0qd:c5swG-gUnlmwZLbrh9_E6r21g8EQ-x5YVw-IircSYcs', '2023-04-02 21:45:51.137358');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('que9586oopkjtshjgk1vosbnolx0lwsn', '.eJxVjMEOwiAQRP-FsyHI0gIevfsNhLK7UjWQlPZk_HdL0oPeZua9zFuEuK05bI2WMKO4CC1Ov9sU05NKB_iI5V5lqmVd5kl2RR60yVtFel0P9-8gx5b7rSPwjkHx4Cyh89orRqVhjGxMZOK9D2cHSRObhNZYYOYR0Kg9s_h8Ad-wN_o:1rCM42:DAqAJgZo3ClD_kUqouHcK7mKPBa5mhBFFTwmIXc8lYs', '2023-12-24 15:49:54.197659');

-- Таблица: kartoteka_chexi
CREATE TABLE IF NOT EXISTS "kartoteka_chexi" (
	"id"	integer NOT NULL,
	"name"	varchar(10) NOT NULL,
	"forename"	varchar(10) NOT NULL,
	"age"	varchar(10) NOT NULL,
	"country"	varchar(10) NOT NULL,
	"gender"	varchar(10) NOT NULL,
	"nationality"	varchar(10) NOT NULL,
	"photo"	,
	"crime"	INTEGER,
	"name_opg"	INTEGER,
	"name_opg_soz"	INTEGER,
	"forename_opg_soz"	INTEGER,
	"kolvo"	INTEGER,
	"chels"	INTEGER,
	"age_opg_soz"	INTEGER,
	"age_opg"	INTEGER,
	"gender_opg_soz"	INTEGER,
	"gender_opg"	INTEGER,
	"crime_opg"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO kartoteka_chexi (id, name, forename, age, country, gender, nationality, photo, crime, name_opg, name_opg_soz, forename_opg_soz, kolvo, chels, age_opg_soz, age_opg, gender_opg_soz, gender_opg, crime_opg) VALUES (1, 'Джон', 'Линдер', '35', 'Америка', 'Мужчина', 'Американец', 'photo/2023/03/05/johnny-silverhand-cyberpunk-2077-keanu-reeves-2020-games-2048x1536-3033.jpg', 'Организатор налёта на Арасака-тауэр в Найт-Сити 5 августа 2013 года, террорист, совершивший подрыв Арасака-тауэр 20 августа 2023 года.', '', '', '', '', '', '', '', '', '', '');
INSERT INTO kartoteka_chexi (id, name, forename, age, country, gender, nationality, photo, crime, name_opg, name_opg_soz, forename_opg_soz, kolvo, chels, age_opg_soz, age_opg, gender_opg_soz, gender_opg, crime_opg) VALUES (9, 'Купит', 'Мэн', '32', 'Россия', 'Мужчина', 'Русский', 'photo/2023/03/13/k2lXXIG5jWU.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO kartoteka_chexi (id, name, forename, age, country, gender, nationality, photo, crime, name_opg, name_opg_soz, forename_opg_soz, kolvo, chels, age_opg_soz, age_opg, gender_opg_soz, gender_opg, crime_opg) VALUES (10, 'Бугульма', 'Кумысова', '14', 'Казахстан', 'Кот', 'Казах', 'photo/2023/03/13/i8o7nRnVMUw.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO kartoteka_chexi (id, name, forename, age, country, gender, nationality, photo, crime, name_opg, name_opg_soz, forename_opg_soz, kolvo, chels, age_opg_soz, age_opg, gender_opg_soz, gender_opg, crime_opg) VALUES (11, 'Алик', 'Афганец', '19', 'Россия', 'Мужчина', 'Русский', 'photo/2023/03/13/f575d96edf51dc0f9c4661ede71ce590.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO kartoteka_chexi (id, name, forename, age, country, gender, nationality, photo, crime, name_opg, name_opg_soz, forename_opg_soz, kolvo, chels, age_opg_soz, age_opg, gender_opg_soz, gender_opg, crime_opg) VALUES (12, 'Colgate', 'digital', '20', 'Россия', 'Мужчина', 'Русский', 'photo/2023/03/13/FKMOZINHEI4FJDC.ico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Индекс: account_emailaddress_user_id_2c513194
CREATE INDEX IF NOT EXISTS "account_emailaddress_user_id_2c513194" ON "account_emailaddress" ("user_id");

-- Индекс: account_emailconfirmation_email_address_id_5b7f8c58
CREATE INDEX IF NOT EXISTS "account_emailconfirmation_email_address_id_5b7f8c58" ON "account_emailconfirmation" ("email_address_id");

-- Индекс: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions ("group_id");

-- Индекс: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions ("group_id", "permission_id");

-- Индекс: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions ("permission_id");

-- Индекс: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS auth_permission_content_type_id_2f476e4b ON auth_permission ("content_type_id");

-- Индекс: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission ("content_type_id", "codename");

-- Индекс: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Индекс: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Индекс: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Индекс: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Индекс: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Индекс: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Индекс: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Индекс: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Индекс: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Индекс: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
