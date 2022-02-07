import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.courses.update({
    where: {
      id: "db8dc944-410a-457e-aa60-cef96b8ec60e",
    },
    data: {
      duration: 250,
      name: "Curso de ReactJS",
    },
  });

  console.log(result);
}

main();