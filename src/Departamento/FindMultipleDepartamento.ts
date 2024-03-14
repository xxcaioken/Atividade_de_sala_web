import { PrismaClient } from "@prisma/client";


const prisma = new PrismaClient();


async function main() {
    const result = await prisma.departamento.findMany({})

    console.log(result);
}


main();