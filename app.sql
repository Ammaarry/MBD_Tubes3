DROP TABLE IF EXISTS "gaji";

CREATE TABLE "gaji" (
  id SERIAL PRIMARY KEY,
  nama varchar(255) default NULL,
  email varchar(255) default NULL,
  phone varchar(100) default NULL,
  alamat varchar(255) default NULL,
  company varchar(255),
  masa_kerja integer NULL,
  tanggal_lahir varchar(255),
  gaji varchar(100) default NULL
);

INSERT INTO gaji (nama,email,phone,alamat,company,masa_kerja,tanggal_lahir,gaji)
VALUES
  ('Patience Jimenez','feugiat.lorem.ipsum@yahoo.net','+6289-5419-4992','630-9075 Magna Rd.','Tincidunt Limited',3,'Feb 18, 2003','$8,055'),
  ('Risa Short','egestas@yahoo.couk','+6281-5546-4216','3378 Parturient Road','Vitae Aliquet Foundation',3,'Dec 5, 2002','$9,818'),
  ('Barclay Jackson','sit@icloud.ca','+6289-3217-5332','Ap #253-1020 Posuere Rd.','Viverra Limited',5,'Jan 31, 2002','$5,951'),
  ('Hop Reilly','consectetuer@icloud.edu','+6281-0443-3446','P.O. Box 569, 7423 Adipiscing Av.','Mauris Rhoncus Incorporated',4,'Jul 25, 2001','$7,000'),
  ('Asher Carter','augue.ac.ipsum@protonmail.org','+6289-7570-5552','Ap #615-7409 Nunc Street','Tellus Non Inc.',3,'Oct 31, 2002','$7,075'),
  ('Deacon Daniels','feugiat.lorem.ipsum@hotmail.com','+6289-2868-4171','P.O. Box 807, 9262 Tempor Street','Pellentesque Ut LLP',1,'May 13, 2002','$6,317'),
  ('Callum Gonzalez','sed.turpis.nec@icloud.net','+6289-7842-2242','366-3493 Risus St.','Eget Odio Aliquam Associates',1,'May 15, 2003','$8,402'),
  ('Phoebe Berg','mauris.vel.turpis@outlook.ca','+6289-3255-1349','9580 Aliquam St.','Enim Nisl Elementum Ltd',5,'Mar 4, 2001','$7,766'),
  ('Tad Petty','quam.pellentesque@hotmail.edu','+6289-2644-7766','294 Augue St.','Iaculis Aliquet Associates',3,'Dec 19, 2000','$6,171'),
  ('Harper Griffith','ultrices.a.auctor@yahoo.ca','+6281-3496-1906','Ap #375-2617 Massa. Rd.','Eu Elit Nulla Industries',3,'Oct 31, 2002','$8,892');
INSERT INTO gaji (nama,email,phone,alamat,company,masa_kerja,tanggal_lahir,gaji)
VALUES
  ('Clare Lewis','nec.imperdiet@google.ca','+6281-2916-7269','397-1265 A Street','Euismod Est PC',2,'Nov 19, 2002','$7,275'),
  ('Suki Ray','id.risus@outlook.net','+6289-5632-8015','P.O. Box 507, 9430 Nibh Ave','Dignissim Institute',4,'Oct 21, 2003','$5,725'),
  ('Plato Gibbs','risus@outlook.com','+6281-2516-1424','598-6164 Non St.','Etiam Vestibulum Massa LLC',2,'May 12, 2003','$6,671'),
  ('Irma Hart','hendrerit.donec@hotmail.com','+6281-1444-5025','P.O. Box 801, 4063 Auctor, St.','Cursus Nunc Incorporated',2,'Nov 17, 2003','$9,587'),
  ('Brendan Dickson','non.luctus@hotmail.ca','+6281-8242-1746','P.O. Box 954, 3039 Laoreet St.','Risus Institute',1,'Jul 13, 2003','$6,719'),
  ('Oren Thompson','ultricies.adipiscing.enim@outlook.com','+6281-0236-8652','P.O. Box 314, 8587 Donec Rd.','Sodales Elit Company',2,'Jan 24, 2001','$8,221'),
  ('Xander West','risus@yahoo.edu','+6289-5035-0290','779-5107 Enim Av.','Nisi Aenean LLP',3,'Oct 25, 2003','$6,800'),
  ('Tamekah Santana','litora.torquent.per@google.ca','+6289-2637-4851','5883 Sed Street','Pharetra Nam Ac Industries',2,'Aug 20, 2003','$7,716'),
  ('Tamekah Singleton','integer.sem@protonmail.com','+6289-4613-7181','718-1597 Dolor. Road','Et Rutrum Non Industries',1,'Mar 28, 2001','$7,002'),
  ('Christen Wagner','ante.ipsum.primis@yahoo.edu','+6289-4553-4690','Ap #441-7544 Molestie Av.','Etiam Ligula Incorporated',4,'Jan 15, 2001','$8,195');
