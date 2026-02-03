# Projeto de Laboratório de Redes - GEPACC

## Informações do Projeto

| Campo | Informação |
|-------|------------|
| **Técnico Responsável** | kertf22 |
| **Grupo de Pesquisa** | GEPACC - Grupo de Estudo e Pesquisa em Acessibilidade |
| **Responsável pelo Laboratório** | Luana Feroni Andrade |
| **Campus/Centro** | Campus de Lagarto |
| **Instituição** | Universidade Federal de Sergipe (UFS) |

---

## Objetivo do Projeto

Este projeto visa implementar a infraestrutura de rede para o laboratório do **GEPACC (Grupo de Estudo e Pesquisa em Acessibilidade)** no Campus de Lagarto da UFS. O laboratório será equipado com recursos computacionais e de rede necessários para suportar pesquisas voltadas à acessibilidade, incluindo desenvolvimento de tecnologias assistivas, estudos de usabilidade e projetos de inclusão digital.

---

## Requisitos Específicos do Cliente

### Contexto do GEPACC

O GEPACC desenvolve pesquisas focadas em:
- Tecnologias assistivas para pessoas com deficiência
- Acessibilidade em sistemas web e aplicativos
- Estudos de usabilidade e experiência do usuário
- Desenvolvimento de soluções inclusivas

### Requisitos de Infraestrutura

#### 1. Rede Local Cabeada
- **Justificativa:** Necessária para garantir conexões estáveis e de alta velocidade para estações de trabalho de pesquisadores, essencial para transferência de grandes volumes de dados em testes de acessibilidade.

#### 2. Rede Wi-Fi
- **Justificativa:** Permite mobilidade para testes de dispositivos móveis e tecnologias assistivas sem fio, além de acomodar visitantes e colaboradores externos.

#### 3. Switch Camada 2
- **Justificativa:** Gerenciamento do tráfego de rede local, conectando estações de trabalho, servidores e dispositivos de teste.

#### 4. Gateway/Roteador
- **Justificativa:** Conexão do laboratório com a internet e rede da UFS, permitindo acesso a recursos externos e colaboração remota.

#### 5. Rack de Equipamentos
- **Justificativa:** Organização física dos equipamentos de rede e servidores em ambiente controlado.

#### 6. Nobreak
- **Justificativa:** Proteção contra quedas de energia, garantindo continuidade das pesquisas e integridade dos dados.

#### 7. Servidor Web
- **Justificativa:** Hospedagem de aplicações web acessíveis desenvolvidas pelo grupo, plataformas de teste e portfólio de projetos.

#### 8. Servidor de Banco de Dados
- **Justificativa:** Armazenamento de dados de pesquisa, resultados de testes de usabilidade e informações de projetos.

#### 9. Servidor de Aplicação
- **Justificativa:** Execução de sistemas desenvolvidos pelo grupo, ferramentas de análise de acessibilidade e ambientes de teste.

#### 10. Servidor de Autenticação
- **Justificativa:** Controle de acesso aos recursos do laboratório, garantindo segurança e rastreabilidade de uso.

---

## Checklist de Dispositivos

| Dispositivo | Quantidade | Justificativa para o GEPACC |
|-------------|------------|----------------------------|
| Switch Camada 2 | 1 | Conexão de até 24 dispositivos de pesquisa |
| Roteador/Gateway | 1 | Acesso à internet e integração com rede UFS |
| Access Point Wi-Fi | 2 | Cobertura completa para testes de dispositivos móveis |
| Rack 12U | 1 | Organização de equipamentos |
| Nobreak 3kVA | 1 | Proteção de servidores e equipamentos críticos |
| Servidor (Dell/HP) | 1 | Web + BD + Aplicação (virtualizado) |
| Cabeamento Cat6 | 300m | Infraestrutura de rede estruturada |
| Patch Panel 24p | 1 | Organização de conexões |

---

## Topologia de Rede

A topologia da rede está documentada nos seguintes arquivos:
- `topologia/lab-gepacc.imn` - Arquivo de simulação IMUNES/CORE
- `topologia/lab-gepacc.svg` - Imagem da topologia

### Diagrama Lógico

```
                    [Internet]
                        |
                   [Gateway]
                        |
                   [Firewall]
                        |
                  [Switch L2]
            ____________|____________
           |      |      |      |    |
         [AP1]  [AP2] [Srv1] [PC1] [PC2]...
           |      |      |
        Wi-Fi  Wi-Fi  Servidores
                     (Web/BD/App)
```

---

## Docker Compose

O projeto inclui um `docker-compose.yml` para simulação dos serviços:

```bash
# Iniciar serviços
docker-compose up -d

# Acessar
# Site: http://localhost:8080
# phpMyAdmin: http://localhost:8081
```

### Serviços

| Serviço | Porta | Descrição |
|---------|-------|-----------|
| Web (Nginx) | 8080 | Site do laboratório |
| MySQL | 3306 | Banco de dados |
| phpMyAdmin | 8081 | Interface do banco |
| App (Node.js) | 3000 | Servidor de aplicação |

---

## Estrutura do Repositório

```
lab-redes/
├── README.md                 # Este arquivo
├── docker-compose.yml        # Configuração dos containers
├── site/                     # Site do laboratório
│   ├── Dockerfile            # Dockerfile para AWS EC2
│   ├── index.html
│   └── css/
│       └── style.css
├── topologia/                # Arquivos de topologia
│   ├── lab-gepacc.imn
│   └── lab-gepacc.svg
└── docs/                     # Documentação adicional
    ├── levantamento-requisitos.md  # Formulário de requisitos
    └── contribuicoes.md            # Relatório de contribuições
```

---

## Dockerfile para AWS

O arquivo `site/Dockerfile` permite executar o site em uma instância EC2:

```bash
# Construir a imagem
docker build -t gepacc-site ./site

# Executar o container
docker run -d -p 80:80 gepacc-site
```

---

## Proposta de Condomínio

### Benefícios da Inclusão do GEPACC

1. **Relevância Social:** Pesquisas em acessibilidade beneficiam toda a comunidade acadêmica e sociedade
2. **Interdisciplinaridade:** Possibilidade de colaboração com outros grupos de pesquisa
3. **Infraestrutura Compartilhável:** Servidores podem hospedar projetos colaborativos
4. **Custo-Benefício:** Equipamentos podem ser compartilhados em horários alternados

---

## Contato

- **Técnico:** kertf22
- **Email:** kertf@academico.ufs.br
- **Grupo de Discussão:** [lab2025-2-t2grupo](https://groups.google.com/a/academico.ufs.br/g/lab2025-2-t2grupo)
