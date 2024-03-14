import { PrismaClient } from "@prisma/client";


const prisma = new PrismaClient();


async function main() {
    const result = await prisma.funcionario.delete({
        where:{
            id:'4f1ec35c-f1a3-4719-bfad-62570290df1a'
        }
    });

      console.log(result);
}


main();