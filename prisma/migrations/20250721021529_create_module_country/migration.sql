-- CreateTable
CREATE TABLE "country" (
    "country_name" VARCHAR(30) NOT NULL,
    "language" TEXT NOT NULL,
    "region" VARCHAR(30) NOT NULL,

    CONSTRAINT "country_pkey" PRIMARY KEY ("country_name")
);
