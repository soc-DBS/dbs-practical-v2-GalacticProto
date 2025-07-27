/*
  Warnings:

  - You are about to drop the `country` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `course` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `department` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `pre_requisite` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `staff` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `staff_backup` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `staff_dependent` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `student` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user_account` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user_role` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "course" DROP CONSTRAINT "course_offered_by_fk";

-- DropForeignKey
ALTER TABLE "department" DROP CONSTRAINT "dept_hod_fk";

-- DropForeignKey
ALTER TABLE "staff" DROP CONSTRAINT "staff_dept_code_fk";

-- DropForeignKey
ALTER TABLE "staff_dependent" DROP CONSTRAINT "staff_dependent_staff_no_fk";

-- DropForeignKey
ALTER TABLE "student" DROP CONSTRAINT "crse_code_fk";

-- DropForeignKey
ALTER TABLE "student" DROP CONSTRAINT "nationality_fk";

-- DropTable
DROP TABLE "country";

-- DropTable
DROP TABLE "course";

-- DropTable
DROP TABLE "department";

-- DropTable
DROP TABLE "pre_requisite";

-- DropTable
DROP TABLE "staff";

-- DropTable
DROP TABLE "staff_backup";

-- DropTable
DROP TABLE "staff_dependent";

-- DropTable
DROP TABLE "student";

-- DropTable
DROP TABLE "user_account";

-- DropTable
DROP TABLE "user_role";
