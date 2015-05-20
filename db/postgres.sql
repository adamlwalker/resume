PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO "schema_migrations" VALUES('20150517002312');
INSERT INTO "schema_migrations" VALUES('20150517002504');
INSERT INTO "schema_migrations" VALUES('20150517003020');
INSERT INTO "schema_migrations" VALUES('20150517003028');
INSERT INTO "schema_migrations" VALUES('20150517030937');
INSERT INTO "schema_migrations" VALUES('20150517031005');
INSERT INTO "schema_migrations" VALUES('20150517182627');
INSERT INTO "schema_migrations" VALUES('20150517212036');
INSERT INTO "schema_migrations" VALUES('20150517215601');
INSERT INTO "schema_migrations" VALUES('20150518035636');
CREATE TABLE "resumes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "company" varchar, "position" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "resumes" VALUES(1,'phishme','PhishMe','Software Developer','2015-05-17 00:33:48.043643','2015-05-17 00:33:48.043643');
INSERT INTO "resumes" VALUES(2,'default','Hello','Software Engineer','2015-05-17 02:16:34.774528','2015-05-17 17:36:33.000212');
CREATE TABLE "skills" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "level" float, "resume_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "skills" VALUES(2,'Ruby',0.7,1,'2015-05-17 00:44:05.883931','2015-05-17 18:09:03.765575');
CREATE TABLE "admin_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime, "updated_at" datetime);
INSERT INTO "admin_users" VALUES(1,'admin@example.com','$2a$10$bd1tLPhXLlmN2QH4MkkR3uXtM9hCa/aVZMA0fvBG62S1JgzKDlIue',NULL,NULL,NULL,2,'2015-05-17 15:25:30.379524','2015-05-17 00:32:21.523199','127.0.0.1','127.0.0.1','2015-05-17 00:30:41.399699','2015-05-17 15:25:30.380717');
CREATE TABLE "active_admin_comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "namespace" varchar, "body" text, "resource_id" varchar NOT NULL, "resource_type" varchar NOT NULL, "author_id" integer, "author_type" varchar, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "softwares" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "level" float, "resume_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "services" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "level" float, "resume_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "details" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "summary" text, "about" text, "extra" text, "resume_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "details" VALUES(1,'','I am a self driven Software Engineer and Rubyist with 18 years of diverse experience in end-user support, web design, server management, system administration, computer consulting and repair. I am equally comfortable in Windows, Linux and OSX environments but prefer a bash shell to a GUI.

I get really excited about automating tasks and bridging the gap between IT and Project Managers. Selenium, Chef, Watir-Webdriver and cucumber are the favorite toys in this big kids toystore.

Outside of work I spend time working on open source Ruby and Python projects. Learning is a passion of mine and I am currently learning Russian and teaching a beginners class in Ruby/HTML/CSS. ','asdasfdafsf',1,'2015-05-17 21:32:43.502350','2015-05-18 04:47:36.728061');
INSERT INTO "details" VALUES(2,'default info','asasd','adsasd',2,'2015-05-17 23:11:53.278166','2015-05-17 23:11:53.278166');
CREATE TABLE "hobbies" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "resume_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "experiences" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "employer" varchar, "startend" varchar, "jobtitle" varchar, "jobdescription" text, "order" integer, "resume_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "experiences" VALUES(1,'Ruro, Inc','2014 - Current','Software Engineer','Responsible for general software design execution and testing support; Participates in software programming and related including installation, configuration, customization, integration, data migration; Participates in software product definition, including business case or gap analysis; Supports or leads specification definition and documentation, including requirement analysis; Conducts feasibility and cost–benefit analysis, including application architecture and framework; Supports system documentation generation and review; Supports external and internal testing; Participates in software release and post-release activities; Performs maintenance activities; Support applicable SDLC SOPs<br/>
<br/>
My position at Ruro offers me the exciting opportunity to:<br/>
✔ Troubleshoot and/or write Ruby scripts for our LIMS framework, Limfinity, for an ever growing list of Laboratories and BioBanks. <br/>
✔ Assist our FreezerPro clients with API scripting questions and troubleshoot client scripts written in Ruby, Python, ASP, PHP and JavaScript.<br/>
✔ Work with Oracle, MS SQL, MySQL and PostgreSQL<br/>
✔ Work with virtualization technology such as VMware vSphere and Amazon EC2<br/>
✔ Write and Perform UAT and Regression tests and author automated tests in Selenium 2, RSpec and Cucumber, Sikuli and jruby.<br/>
✔ Remotely configure and troubleshoot client hosted VM''s and associated services (nginx, etc)<br/>
✔ Assist our PM''s and implementation specialists with Ruby, HTML, Liquid and framework questions<br/>
✔ Create Ruby on Rails API integrations for robotic freezers.<br/>
✔ Work with a fantastic team of Developers, Project Managers, Support Technicians et al. that are committed to providing a revolutionary laboratory management solution to our clients.<br/>',1,2,'2015-05-17 22:53:16.436634','2015-05-17 23:15:05.045198');
INSERT INTO "experiences" VALUES(2,'Ruro, Inc','2014 - Current','Software Engineer','Responsible for general software design execution and testing support; Participates in software programming and related including installation, configuration, customization, integration, data migration; Participates in software product definition, including business case or gap analysis; Supports or leads specification definition and documentation, including requirement analysis; Conducts feasibility and cost–benefit analysis, including application architecture and framework; Supports system documentation generation and review; Supports external and internal testing; Participates in software release and post-release activities; Performs maintenance activities; Support applicable SDLC SOPs<br/>
<br/>
My position at Ruro offers me the exciting opportunity to:<br/>
✔ Troubleshoot and/or write Ruby scripts for our LIMS framework, Limfinity, for an ever growing list of Laboratories and BioBanks. <br/>
✔ Assist our FreezerPro clients with API scripting questions and troubleshoot client scripts written in Ruby, Python, ASP, PHP and JavaScript.<br/>
✔ Work with Oracle, MS SQL, MySQL and PostgreSQL<br/>
✔ Work with virtualization technology such as VMware vSphere and Amazon EC2<br/>
✔ Write and Perform UAT and Regression tests and author automated tests in Selenium 2, RSpec and Cucumber, Sikuli and jruby.<br/>
✔ Remotely configure and troubleshoot client hosted VM''s and associated services (nginx, etc)<br/>
✔ Assist our PM''s and implementation specialists with Ruby, HTML, Liquid and framework questions<br/>
✔ Create Ruby on Rails API integrations for robotic freezers.<br/>
✔ Work with a fantastic team of Developers, Project Managers, Support Technicians et al. that are committed to providing a revolutionary laboratory management solution to our clients.<br/>',1,1,'2015-05-17 23:15:49.088111','2015-05-17 23:15:49.088111');
CREATE TABLE "milestones" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "year" integer, "description" text, "resume_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "milestones" VALUES(1,'Became a Sysop',1999,'sdfsfsdf',1,'2015-05-18 04:04:19.440397','2015-05-18 04:04:19.440397');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('admin_users',1);
INSERT INTO "sqlite_sequence" VALUES('resumes',2);
INSERT INTO "sqlite_sequence" VALUES('skills',3);
INSERT INTO "sqlite_sequence" VALUES('details',2);
INSERT INTO "sqlite_sequence" VALUES('experiences',2);
INSERT INTO "sqlite_sequence" VALUES('milestones',1);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE INDEX "index_skills_on_resume_id" ON "skills" ("resume_id");
CREATE UNIQUE INDEX "index_admin_users_on_email" ON "admin_users" ("email");
CREATE UNIQUE INDEX "index_admin_users_on_reset_password_token" ON "admin_users" ("reset_password_token");
CREATE INDEX "index_active_admin_comments_on_namespace" ON "active_admin_comments" ("namespace");
CREATE INDEX "index_active_admin_comments_on_author_type_and_author_id" ON "active_admin_comments" ("author_type", "author_id");
CREATE INDEX "index_active_admin_comments_on_resource_type_and_resource_id" ON "active_admin_comments" ("resource_type", "resource_id");
CREATE INDEX "index_softwares_on_resume_id" ON "softwares" ("resume_id");
CREATE INDEX "index_services_on_resume_id" ON "services" ("resume_id");
CREATE INDEX "index_details_on_resume_id" ON "details" ("resume_id");
CREATE INDEX "index_hobbies_on_resume_id" ON "hobbies" ("resume_id");
CREATE INDEX "index_experiences_on_resume_id" ON "experiences" ("resume_id");
CREATE INDEX "index_milestones_on_resume_id" ON "milestones" ("resume_id");
COMMIT;
