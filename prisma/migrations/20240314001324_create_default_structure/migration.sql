-- CreateTable
CREATE TABLE "Funcionario" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "idDepartamento" INTEGER NOT NULL,
    "fk_id_departamento" TEXT NOT NULL,

    CONSTRAINT "Funcionario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Departamento" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Departamento_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Funcionario_fk_id_departamento_key" ON "Funcionario"("fk_id_departamento");

-- CreateIndex
CREATE UNIQUE INDEX "Departamento_name_key" ON "Departamento"("name");

-- AddForeignKey
ALTER TABLE "Funcionario" ADD CONSTRAINT "Funcionario_fk_id_departamento_fkey" FOREIGN KEY ("fk_id_departamento") REFERENCES "Departamento"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
