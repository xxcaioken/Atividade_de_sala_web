import { PrismaClient } from "@prisma/client";


const prisma = new PrismaClient();


async function main() {
    const result = await prisma.funcionario.create({
        data:{
        name:'caio',
        endereco:'endereço1',
        departamento:{
            connectOrCreate:{
                where:{name:'developer web'},
                create:{name:'developer web'}
            }}}
      });

      console.log(result);
}


main();