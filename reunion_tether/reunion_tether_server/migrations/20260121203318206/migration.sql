BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "contact" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "name" text NOT NULL,
    "relationshipType" text NOT NULL,
    "location" text,
    "latitude" double precision,
    "longitude" double precision,
    "birthday" timestamp without time zone,
    "anniversary" timestamp without time zone,
    "lastMeetup" timestamp without time zone,
    "notes" text,
    "conversationTopics" text,
    "preferredContactMethod" text,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "destination" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "city" text NOT NULL,
    "country" text,
    "latitude" double precision,
    "longitude" double precision,
    "notes" text,
    "priority" text,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "flight_price" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "destinationCity" text NOT NULL,
    "destinationCountry" text,
    "originCity" text NOT NULL,
    "price" double precision NOT NULL,
    "currency" text NOT NULL,
    "observedDate" timestamp without time zone NOT NULL,
    "source" text,
    "notes" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "interaction" (
    "id" bigserial PRIMARY KEY,
    "contactId" bigint NOT NULL,
    "userId" bigint NOT NULL,
    "interactionDate" timestamp without time zone NOT NULL,
    "interactionType" text NOT NULL,
    "notes" text,
    "location" text,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "itinerary" (
    "id" bigserial PRIMARY KEY,
    "tripId" bigint NOT NULL,
    "dayNumber" bigint NOT NULL,
    "date" timestamp without time zone,
    "activities" text NOT NULL,
    "notes" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "reminder" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "contactId" bigint,
    "tripId" bigint,
    "reminderType" text NOT NULL,
    "scheduledDate" timestamp without time zone NOT NULL,
    "isSent" boolean NOT NULL,
    "title" text NOT NULL,
    "message" text,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "trip" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "destinationCity" text NOT NULL,
    "destinationCountry" text,
    "latitude" double precision,
    "longitude" double precision,
    "startDate" timestamp without time zone,
    "endDate" timestamp without time zone,
    "status" text NOT NULL,
    "notes" text,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "trip_contact" (
    "id" bigserial PRIMARY KEY,
    "tripId" bigint NOT NULL,
    "contactId" bigint NOT NULL,
    "isConfirmed" boolean NOT NULL,
    "plannedMeetupDate" timestamp without time zone,
    "meetupLocation" text
);


--
-- MIGRATION VERSION FOR reunion_tether
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('reunion_tether', '20260121203318206', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260121203318206', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20251208110333922-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110333922-v3-0-0', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20260109031533194', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260109031533194', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20251208110412389-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110412389-v3-0-0', "timestamp" = now();


COMMIT;
