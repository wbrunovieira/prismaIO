import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {

    const result = await prisma.courses.create({
        data:{
            ┬áduration:200,
            name: "Curso de NodeJS",
            description:"curso excelente de NodeJS"
        }
    })

    console.log(result)
}

main();