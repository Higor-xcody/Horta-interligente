# 🌱 Horta Dinorah

Aplicativo multiplataforma desenvolvido com **FlutterFlow + Flutter + Supabase** para auxiliar no gerenciamento de uma horta, organizando canteiros, cultivos e informações relacionadas ao acompanhamento e à colheita.

## ✨ Visão geral

O projeto utiliza uma aplicação Flutter gerada pelo FlutterFlow, com integração ao Supabase para autenticação, banco de dados e armazenamento. A estrutura inclui telas para gerenciamento de canteiros, cronograma de colheita, componentes de edição e controle de acesso.

## 🚀 Funcionalidades identificadas no projeto

- 🌱 Gerenciamento de canteiros.
- 📝 Criação e edição de informações dos canteiros.
- 🧺 Organização de colheitas.
- 📅 Cronograma de colheita.
- 👤 Estrutura de usuários e autenticação.
- 🔐 Tela de verificação de senha.
- ☁️ Integração com Supabase Database e Storage.
- 📡 Verificação de conexão com a internet.
- 🌐 Suporte à execução Web e aplicativos Android/iOS.
- 🌓 Suporte a tema claro e escuro.
- 🇧🇷 Interface configurada para português.

## 🧰 Tecnologias

- **Flutter**
- **Dart**
- **FlutterFlow**
- **Supabase**
- **GoRouter**
- **Provider**
- **Hive / Shared Preferences**
- **Flutter Web**
- **Android / iOS**

O `pubspec.yaml` inclui bibliotecas para autenticação, banco de dados, armazenamento, cache, conectividade, navegação, seleção de arquivos, imagens, vídeos e internacionalização.

## 🏗️ Arquitetura

```text
FlutterFlow
    ↓
Flutter / Dart
    ├── Pages
    ├── Components
    ├── Custom Code
    └── App State
          ↓
       Supabase
       ├── Auth
       ├── Database
       └── Storage
```

A aplicação inicializa o Supabase, o tema do FlutterFlow e o estado persistente antes de executar o aplicativo. fileciteturn16file0

## 📁 Principais áreas do projeto

```text
lib/
├── backend/supabase/       # Banco, tabelas e Storage
├── components/             # Componentes reutilizáveis
├── custom_code/            # Código personalizado
├── flutter_flow/           # Recursos gerados pelo FlutterFlow
├── pages/                  # Páginas da aplicação
├── cronograma_de_colheita/ # Cronograma de colheita
├── add_edit_bed_step1/     # Cadastro/edição de canteiros
├── add_edit_bed_step2/     # Etapa adicional do cadastro
├── principal_page/         # Tela principal
├── verifica_o_de_senha/    # Verificação de senha
└── main.dart               # Inicialização da aplicação
```

## ⚙️ Execução local

É necessário ter o Flutter instalado e configurado.

```bash
flutter pub get
flutter run
```

Para execução Web:

```bash
flutter run -d chrome
```

## 🔐 Configuração

A aplicação depende da integração com o Supabase. Antes de executar uma cópia independente, confira as configurações geradas pelo FlutterFlow em `lib/backend/supabase/` e as credenciais/configurações do projeto.

**Nunca publique chaves privadas ou credenciais de produção no repositório.**

## 📌 Status

**Em desenvolvimento.**

Projeto experimental voltado à organização e digitalização do gerenciamento de uma horta.