-- Tabela que recebe a base de processos exportada pelo ERP (Seção A do workflow).
-- O nó "Upsert Supabase" usa "Pasta" como chave de conflito.

create table if not exists public.base_erp (
  "Pasta"                           text primary key,
  "Tipo de processo"                text,
  "Classe"                          text,
  "Cliente"                         text,
  "Posição"                         text,
  "Grupo do Cliente"                text,
  "Parte contrária"                 text,
  "Número do Processo"              text,
  "outroNumero"                     text,
  "Natureza"                        text,
  "Tipo de Ação"                    text,
  "Cidade"                          text,
  "UF"                              text,
  "Órgão"                           text,
  "Data da distribuição"            date,
  "Valor da Causa"                  text,
  "Valor envolvido (contingência)"  text,
  "Valor da Condenação/Acordo"      text,
  "Análise de Risco"                text,
  "Advogado Responsável"            text,
  "Etiquetas"                       text,
  "Escritório responsável"          text,
  "Data do cadastro"                date,
  "Data do encerramento"            date,
  "Data da baixa"                   date,
  "Status"                          text
);

-- A Seção D cruza pelo número do processo.
create index if not exists base_erp_numero_idx on public.base_erp ("Número do Processo");
