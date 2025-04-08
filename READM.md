# 🔧 Sistema de Controle de Ordens de Serviço para Oficina Mecânica

Este projeto consiste em um modelo conceitual para um sistema de gerenciamento de ordens de serviço (OS) em uma oficina mecânica. A modelagem foi feita com base em uma narrativa fornecida no desafio proposto.

## 📘 Descrição

Clientes levam seus veículos até a oficina para serviços de manutenção ou revisão. Uma equipe de mecânicos é responsável por identificar os serviços, listar peças e preencher a OS com datas e valores. Os serviços são precificados com base em uma tabela de mão de obra e a OS só é executada após autorização do cliente.

## 🧩 Entidades e Relacionamentos

- Cliente ↔️ Veículo
- Veículo ↔️ Ordem de Serviço
- Equipe ↔️ Mecânicos e Ordens de Serviço
- Ordem de Serviço ↔️ Serviços e Peças (relacionamento N:N)

## 💡 Observações

- A equipe responsável pela OS também avalia e executa os serviços.
- Toda OS possui status, valor total e datas de emissão e conclusão.
- Os valores são calculados somando o custo de mão de obra e peças.
- A autorização do cliente está registrada na OS.

## 🛠️ Tecnologias futuras sugeridas

- Modelagem física em MySQL ou PostgreSQL
- Frontend para ordens de serviço (Ex: React ou Delphi VCL)
- Backend em Node.js, PHP ou Delphi

