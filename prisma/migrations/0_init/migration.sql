-- CreateTable
CREATE TABLE "drink" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR NOT NULL,
    "photo_url" VARCHAR,

    CONSTRAINT "drink_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "drink_ingredient" (
    "id" SERIAL NOT NULL,
    "drink_id" INTEGER NOT NULL,
    "description" VARCHAR NOT NULL,
    "display_order" INTEGER NOT NULL,
    "ingredient_id" VARCHAR NOT NULL,

    CONSTRAINT "drink_ingredient_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ingredient" (
    "id" VARCHAR NOT NULL DEFAULT nextval('ingredient_id_seq'::regclass),
    "name" VARCHAR NOT NULL,
    "in_stock" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "ingredient_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "drink_name_key" ON "drink"("name");

-- CreateIndex
CREATE UNIQUE INDEX "ingredient_name_key" ON "ingredient"("name");

-- AddForeignKey
ALTER TABLE "drink_ingredient" ADD CONSTRAINT "drink_ingredient_drink_id_fkey" FOREIGN KEY ("drink_id") REFERENCES "drink"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "drink_ingredient" ADD CONSTRAINT "drink_ingredient_ingredient_id_fkey" FOREIGN KEY ("ingredient_id") REFERENCES "ingredient"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

