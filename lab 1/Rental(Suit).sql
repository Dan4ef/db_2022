CREATE TABLE "cloth" (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar,
  "created_at" timestamp,
  "brand_id" int,
  "color_id" int,
  "size_id" int,
  "is_solid" boolean,
  "price" int
);

CREATE TABLE "brand" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "distributor" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "brand_id" int
);

CREATE TABLE "color" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "red" int,
  "green" int,
  "blue" int,
  "transparency" int
);

CREATE TABLE "size" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "size" int
);

CREATE TABLE "client" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "surname" varchar,
  "email" varchar,
  "phone" varchar
);

CREATE TABLE "bookings" (
  "id" SERIAL PRIMARY KEY,
  "status" varchar,
  "client_id" int,
  "cloth_id" int,
  "quantity" int DEFAULT 1
);

ALTER TABLE "bookings" ADD FOREIGN KEY ("client_id") REFERENCES "client" ("id");

ALTER TABLE "bookings" ADD FOREIGN KEY ("cloth_id") REFERENCES "cloth" ("id");

ALTER TABLE "cloth" ADD FOREIGN KEY ("brand_id") REFERENCES "brand" ("id");

ALTER TABLE "distributor" ADD FOREIGN KEY ("brand_id") REFERENCES "brand" ("id");

ALTER TABLE "cloth" ADD FOREIGN KEY ("color_id") REFERENCES "color" ("id");

ALTER TABLE "cloth" ADD FOREIGN KEY ("size_id") REFERENCES "size" ("id");
