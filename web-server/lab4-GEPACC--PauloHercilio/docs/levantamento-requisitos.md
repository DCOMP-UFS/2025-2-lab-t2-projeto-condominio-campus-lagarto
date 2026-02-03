# Levantamento de Requisitos - Projeto de Laboratório

## Formulário de Requisitos para Grupo de Pesquisa da UFS

---

### Identificação

| Campo | Resposta |
|-------|----------|
| **Nome e usuário do Github** | kertf22 |
| **Campus/Centro da UFS** | CAMPUS DE LAGARTO |
| **Grupo de Pesquisa** | GEPACC - Grupo de Estudo e Pesquisa em Acessibilidade |
| **Responsável pelo Laboratório** | Luana Feroni Andrade |

---

### Tecnologias Necessárias

Marque as tecnologias selecionadas para o projeto:

- [x] Rede local cabeada
- [x] Wi-Fi
- [x] Gateway
- [x] Switch Camada 2
- [x] Roteador
- [x] Firewall
- [x] Servidor Web
- [x] Servidor de Banco de Dados
- [x] Servidor de Aplicação
- [x] Servidor de Autenticação
- [x] Nobreak
- [x] Rack
- [x] Cabeamento (Cat 6)
- [ ] Segmentação da rede local (VLANs)
- [ ] IoT
- [ ] Cluster
- [ ] Servidor de Domínio
- [ ] Switch Camada 3
- [ ] Refrigeração

---

### Checklist de Dispositivos com Justificativas

**DISPOSITIVOS E JUSTIFICATIVAS**

1. Rede Local Cabeada
Quantidade: N/A
Justificativa: Conexões estáveis e de alta velocidade para testes de acessibilidade em tempo real.

2. Wi-Fi (Access Points)
Quantidade: 2
Justificativa: Testes com dispositivos móveis e tecnologias assistivas sem fio.

3. Gateway/Roteador
Quantidade: 1
Justificativa: Conexão à internet e rede da UFS para colaboração remota e acesso a recursos acadêmicos.

4. Switch Camada 2
Quantidade: 1
Justificativa: Conecta até 24 dispositivos do laboratório (estações, servidores e equipamentos de teste).

5. Firewall
Quantidade: 1
Justificativa: Proteção de dados de pesquisa e informações sensíveis conforme LGPD.

6. Servidor Web
Quantidade: 1
Justificativa: Hospedagem de aplicações web acessíveis e demonstração de tecnologias desenvolvidas.

7. Servidor de Banco de Dados
Quantidade: 1
Justificativa: Armazenamento de dados de pesquisa, resultados de testes e métricas de acessibilidade.

8. Servidor de Aplicação
Quantidade: 1
Justificativa: Execução de sistemas desenvolvidos e ferramentas de análise de acessibilidade (validadores WCAG).

9. Servidor de Autenticação
Quantidade: 1
Justificativa: Controle de acesso aos recursos do laboratório com segurança e rastreabilidade.

10. Nobreak 3kVA
Quantidade: 1
Justificativa: Proteção contra quedas de energia durante experimentos com participantes.

11. Rack 12U
Quantidade: 1
Justificativa: Organização física dos equipamentos de rede e servidores.

12. Cabeamento Cat6
Quantidade: 300m
Justificativa: Infraestrutura Gigabit Ethernet para transferência rápida de arquivos multimídia.

13. Patch Panel 24p
Quantidade: 1
Justificativa: Organização e gerenciamento das conexões de rede.
---

### Como os Dispositivos Ajudam o Pesquisador

O GEPACC desenvolve pesquisas em acessibilidade que requerem infraestrutura robusta:

1. **Testes de Tecnologias Assistivas**
   - Servidores permitem hospedar e testar leitores de tela web, ampliadores de tela e ferramentas de navegação alternativa
   - Wi-Fi viabiliza testes com dispositivos móveis e wearables

2. **Estudos de Usabilidade**
   - Banco de dados armazena métricas de desempenho de usuários
   - Servidor de aplicação executa sistemas de coleta de dados em tempo real
   - Nobreak garante que sessões com participantes não sejam interrompidas

3. **Desenvolvimento de Aplicações Acessíveis**
   - Servidor web hospeda protótipos e versões de teste
   - Rede cabeada de alta velocidade permite colaboração em tempo real

4. **Colaboração e Publicação**
   - Gateway conecta o laboratório a colaboradores externos
   - Servidor web divulga resultados e ferramentas desenvolvidas

---

### Arquivos de Topologia

Os arquivos da topologia de rede estão disponíveis no repositório:

- **Arquivo IMUNES/CORE:** `topologia/lab-gepacc.imn`
- **Imagem da Topologia:** `topologia/lab-gepacc.svg`

---

### Site do Grupo de Pesquisa

O site do GEPACC apresenta:
- Informações sobre o grupo e suas linhas de pesquisa
- Infraestrutura do laboratório
- Resultados esperados com o projeto
- Benefícios da adesão ao condomínio de laboratórios

**Dockerfile do projeto:** `site/Dockerfile`

Para executar o site na AWS EC2:

```bash
# Construir a imagem
docker build -t gepacc-site ./site

# Executar o container
docker run -d -p 80:80 gepacc-site
```

Ou usando Docker Compose:

```bash
docker-compose up -d
```

---

### Resultados Esperados com o Projeto

1. **Infraestrutura operacional** para desenvolvimento de pesquisas em acessibilidade
2. **Ambiente de testes** para validação de tecnologias assistivas
3. **Plataforma de colaboração** com outros grupos de pesquisa
4. **Hospedagem de aplicações** desenvolvidas pelo GEPACC
5. **Base de dados segura** para armazenamento de resultados de pesquisa

---

### Benefícios da Adesão ao Condomínio de Laboratórios

| Benefício | Descrição |
|-----------|-----------|
| **Relevância Social** | Pesquisas em acessibilidade beneficiam toda a comunidade acadêmica e sociedade, promovendo inclusão digital |
| **Interdisciplinaridade** | Possibilidade de colaboração com grupos de Computação, Saúde, Educação e outras áreas |
| **Infraestrutura Compartilhável** | Servidores podem hospedar projetos colaborativos entre grupos |
| **Custo-Benefício** | Equipamentos podem ser compartilhados em horários alternados |
| **Visibilidade Institucional** | Projetos de acessibilidade fortalecem a imagem da UFS na comunidade |

---

### Grupo de Discussão

Trilha: **CAMPUS DE LAGARTO**

Contribuições e colaborações no grupo oficial:
[lab2025-2-t2grupo](https://groups.google.com/a/academico.ufs.br/g/lab2025-2-t2grupo)

---

*Documento gerado para o Projeto de Laboratório de Redes - GEPACC*
*Técnico Responsável: kertf22*
*UFS - Campus de Lagarto*
