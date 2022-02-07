import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {

    const result = await prisma.courses.findFirst({
        // achar o ultimo
        take: -1
    })

    console.log(result)
}

main();