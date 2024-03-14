import { PrismaClient } from "@prisma/client";


const prisma = new PrismaClient();


async function main() {
    const result = await prisma.departamento.create({
        data:{
            name:'developer full stack',
            Funcionario:{
                create:{
                    name:'caio',
                    endereco:'endereço1',
                }
            }
        }
      });

      console.log(result);
}


main();