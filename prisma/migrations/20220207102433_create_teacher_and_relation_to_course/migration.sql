/*
  Warnings:

  - Added the required column `fk_id_teacher` to the `modules` table without a default value. This is not possible if the table is not empty.
  - Added the required column `teachersId` to the `modules` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "modules" ADD COLUMN     "fk_id_teacher" TEXT NOT NULL,
ADD COLUMN     "teachersId" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "teachers" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "coursesId" TEXT,

    CONSTRAINT "teachers_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "teachers_name_key" ON "teachers"("name");

-- AddForeignKey
ALTER TABLE "modules" ADD CONSTRAINT "modules_teachersId_fkey" FOREIGN KEY ("teachersId") REFERENCES "teachers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teachers" ADD CONSTRAINT "teachers_coursesId_fkey" FOREIGN KEY ("coursesId") REFERENCES "courses"("id") ON DELETE SET NULL ON UPDATE CASCADE;
