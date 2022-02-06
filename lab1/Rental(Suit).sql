CREATE TABLE "warehouse" (
  "id" SERIAL PRIMARY KEY,
  "item_name" varchar,
  "continent_name" varchar
);

CREATE TABLE "suit" (
  "id" SERIAL PRIMARY KEY,
  "suit_name" varchar,
  "color" varchar
);

CREATE TABLE "warehouse_suits" (
  "id" SERIAL PRIMARY KEY,
  "item_name_id" int,
  "suit_name_id" int,
  "continent_name" varchar
);

CREATE TABLE "clients" (
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
  "warehouse_suit_id" int,
  "quantity" int DEFAULT 1
);

ALTER TABLE "warehouse_suits" ADD FOREIGN KEY ("item_name_id") REFERENCES "warehouse" ("id");

ALTER TABLE "warehouse_suits" ADD FOREIGN KEY ("suit_name_id") REFERENCES "suit" ("id");

ALTER TABLE "bookings" ADD FOREIGN KEY ("client_id") REFERENCES "clients" ("id");

ALTER TABLE "bookings" ADD FOREIGN KEY ("warehouse_suit_id") REFERENCES "warehouse_suits" ("id");
