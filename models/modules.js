const { PrismaClient, Prisma } = require('@prisma/client');
const prisma = new PrismaClient();

module.exports.create = function create(code, name, credit) {
  return prisma.module.create({
    data: {
      modCode: code,
      modName: name,
      creditUnit: parseInt(credit)
    }
  }).then(function (module) {
    return module;
  }).catch(function (error) {
    if (error instanceof Prisma.PrismaClientKnownRequestError) {
      if (error.code === 'P2002') {
        // Unique constraint violation (e.g., module code already exists)
        throw new Error('A module with this code already exists.');
      }
    }
    // Rethrow other errors
    throw error;
  });
};

module.exports.updateByCode = function updateByCode(code, credit) {
  return prisma.module.update({
    where: {
      modCode: code
    },
    data: {
      creditUnit: parseInt(credit)
    }
  }).then(function (module) {
    return module; // Return the updated module
  }).catch(function (error) {
    if (error instanceof Prisma.PrismaClientKnownRequestError) {
      if (error.code === 'P2025') {
        // Record not found
        throw new Error(`Module with code ${code} not found.`);
      }
    }
    throw error;
  });
};

module.exports.deleteByCode = function deleteByCode(code) {
  return prisma.module.delete({
    where: {
      modCode: code
    }
  }).then(function (module) {
    return module; // Return the deleted module
  }).catch(function (error) {
    if (error instanceof Prisma.PrismaClientKnownRequestError) {
      if (error.code === 'P2025') {
        // Record not found
        throw new Error(`Module with code ${code} not found.`);
      }
    }
    throw error;
  });
};

module.exports.retrieveAll = function retrieveAll() {
  return prisma.module.findMany();
};

module.exports.retrieveByCode = function retrieveByCode(code) {
  return prisma.module.findUnique({
    where: {
      modCode: code
    }
  }).then(function (module) {
    if (!module) {
      // If no module was found, manually throw error (Prisma won't throw P2025 here)
      throw new Error(`Module with code ${code} not found.`);
    }
    return module;
  }).catch(function (error) {
    throw error; // Let other unexpected errors bubble up
  });
};
