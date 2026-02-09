# List of All Agents, What They Do and What They Are

## Table of Contents

- [Code Quality & DevOps](#code-quality--devops-subagents)
- [Core Development](#core-development-subagents)
- [Language Specialists](#language-specialists-subagents)
- [Infrastructure](#infrastructure-subagents)
- [Quality & Security](#quality--security-subagents)
- [Data & AI](#data--ai-subagents)
- [Developer Experience](#developer-experience-subagents)
- [Specialized Domains](#specialized-domains-subagents)
- [Business & Product](#business--product-subagents)
- [Meta & Orchestration](#meta--orchestration-subagents)
- [Research & Analysis](#research--analysis-subagents)
- [Getting Started](#getting-started)
- [Best Practices](#best-practices)

---

## Code Quality & DevOps Subagents

Code Quality & DevOps subagents are your essential toolkit for maintaining high-quality, secure, and well-documented codebases. These specialized agents cover the entire quality spectrum — from code review to security auditing, from build error resolution to end-to-end testing, and from architecture planning to documentation maintenance.

Use these subagents when you need to:

- **Review code changes** for quality, security, and best practices
- **Fix build errors** quickly with minimal, surgical changes
- **Plan and architect** new features or system refactors
- **Write and run tests** following TDD methodology
- **Audit security** across your application stack
- **Clean up dead code** and consolidate duplicates
- **Keep documentation** in sync with your codebase
- **Optimize databases** and resolve query performance issues

### [**architect**](architect.md) - System design and scalability specialist

The strategic thinker who designs scalable, maintainable system architecture. Expert in trade-off analysis, architectural patterns, and creating Architecture Decision Records (ADRs). Plans for growth from 10K to 10M users.

**Use when:** Planning new features, refactoring large systems, making architectural decisions, or evaluating technical trade-offs.

### [**planner**](planner.md) - Implementation planning specialist

Your go-to agent for breaking down complex features into actionable, phased implementation plans. Analyzes requirements, identifies dependencies and risks, and creates step-by-step guides with specific file paths and code locations.

**Use when:** Starting a new feature, planning a complex refactor, breaking down large tasks, or when you need a clear roadmap before writing code.

### [**code-reviewer**](code-reviewer.md) - General code review specialist

Senior code reviewer ensuring high standards across your entire codebase. Checks for security vulnerabilities, code quality, performance issues, and best practices. Provides feedback organized by priority (Critical, Warning, Suggestion).

**Use when:** After writing or modifying any code. Should be used for all code changes regardless of language.

### [**go-reviewer**](go-reviewer.md) - Go code review specialist

Expert Go reviewer specializing in idiomatic Go, concurrency patterns, error handling, and performance. Runs `go vet`, `staticcheck`, and race detection. Ensures code meets the standards of top Go shops.

**Use when:** Reviewing any Go code changes. Must be used for all Go projects.

### [**python-reviewer**](python-reviewer.md) - Python code review specialist

Senior Python reviewer specializing in PEP 8 compliance, Pythonic idioms, type hints, and framework-specific patterns (Django, FastAPI, Flask). Runs `ruff`, `mypy`, `bandit`, and other static analysis tools.

**Use when:** Reviewing any Python code changes. Must be used for all Python projects.

### [**database-reviewer**](database-reviewer.md) - PostgreSQL and database specialist

Expert PostgreSQL specialist focused on query optimization, schema design, Row Level Security, and connection management. Incorporates Supabase best practices for modern database workflows.

**Use when:** Writing SQL, creating migrations, designing schemas, troubleshooting database performance, or implementing RLS policies.

### [**security-reviewer**](security-reviewer.md) - Security vulnerability detection specialist

Expert security specialist covering the OWASP Top 10 and beyond. Detects hardcoded secrets, injection vulnerabilities, SSRF, broken authentication, race conditions in financial operations, and more.

**Use when:** After writing code that handles user input, authentication, API endpoints, sensitive data, or financial transactions.

### [**build-error-resolver**](build-error-resolver.md) - TypeScript/JS build error fixer

Build error resolution specialist focused on getting builds green with minimal diffs. Fixes TypeScript errors, module resolution issues, dependency conflicts, and configuration problems without architectural changes.

**Use when:** `npm run build` fails, `tsc --noEmit` shows errors, or type errors are blocking development.

### [**go-build-resolver**](go-build-resolver.md) - Go build error fixer

Go build error resolution specialist that fixes compilation errors, `go vet` issues, and linter warnings with surgical precision. Handles module dependency problems, interface mismatches, and import cycles.

**Use when:** `go build ./...` fails, `go vet` reports issues, or linter warnings need resolution.

### [**tdd-guide**](tdd-guide.md) - Test-Driven Development specialist

TDD specialist enforcing write-tests-first methodology through the Red-Green-Refactor cycle. Guides unit, integration, and E2E test creation while targeting 80%+ coverage.

**Use when:** Writing new features, fixing bugs, or refactoring code — always write tests first.

### [**e2e-runner**](e2e-runner.md) - End-to-end testing specialist

E2E testing specialist using Vercel Agent Browser (preferred) with Playwright fallback. Creates, maintains, and executes comprehensive E2E tests with artifact management, flaky test quarantine, and critical user flow validation.

**Use when:** Generating or running E2E tests, validating critical user journeys, debugging flaky tests, or setting up browser automation.

### [**refactor-cleaner**](refactor-cleaner.md) - Dead code cleanup specialist

Refactoring specialist that identifies and removes dead code, duplicates, and unused exports using tools like `knip`, `depcheck`, and `ts-prune`. Documents all deletions in a structured log.

**Use when:** Cleaning up unused code, consolidating duplicates, removing unused dependencies, or reducing bundle size.

### [**doc-updater**](doc-updater.md) - Documentation and codemap specialist

Documentation specialist that generates architectural codemaps from your codebase, updates READMEs, and keeps guides in sync with reality using AST analysis and dependency mapping.

**Use when:** Updating codemaps and documentation, generating architectural maps, refreshing READMEs, or after major feature additions.

### Code Quality & DevOps Quick Reference

| If you need to...                  | Use this subagent        |
| ---------------------------------- | ------------------------ |
| Plan a new feature                 | **planner**              |
| Design system architecture         | **architect**            |
| Review any code change             | **code-reviewer**        |
| Review Go code                     | **go-reviewer**          |
| Review Python code                 | **python-reviewer**      |
| Review database queries/schema     | **database-reviewer**    |
| Audit for security vulnerabilities | **security-reviewer**    |
| Fix TypeScript/JS build errors     | **build-error-resolver** |
| Fix Go build errors                | **go-build-resolver**    |
| Write tests before code            | **tdd-guide**            |
| Run end-to-end tests               | **e2e-runner**           |
| Remove dead code and duplicates    | **refactor-cleaner**     |
| Update docs and codemaps           | **doc-updater**          |

### 💡 Common Workflows

**New Feature Development:**

1. Start with **planner** to create an implementation plan
2. Use **architect** for design decisions and trade-offs
3. Follow **tdd-guide** to write tests first
4. Run **code-reviewer** on all changes
5. Use **security-reviewer** for endpoints handling user input
6. Finish with **doc-updater** to keep docs current

**Bug Fix Workflow:**

1. Use **tdd-guide** to write a failing test that reproduces the bug
2. Fix the bug (test goes green)
3. Run **code-reviewer** on the fix
4. Run **e2e-runner** to validate the user flow

**Build Recovery:**

1. Use **build-error-resolver** (TypeScript/JS) or **go-build-resolver** (Go)
2. Run **code-reviewer** to verify fixes don't introduce issues
3. Run **tdd-guide** to ensure tests still pass

**Codebase Health Check:**

1. Run **security-reviewer** for vulnerability audit
2. Use **refactor-cleaner** to remove dead code
3. Run **database-reviewer** for query and schema optimization
4. Finish with **doc-updater** to refresh documentation

**Code Review Pipeline:**

1. Start with **code-reviewer** for general quality
2. Add **go-reviewer** or **python-reviewer** for language-specific checks
3. Run **security-reviewer** for security-sensitive changes
4. Use **database-reviewer** for any SQL or schema changes

## Core Development Subagents

Core Development subagents are your essential toolkit for building modern applications from the ground up. These specialized agents cover the entire development spectrum - from backend services to frontend interfaces, from mobile apps to desktop applications, and from simple APIs to complex distributed systems.

Use these subagents when you need to:

- **Build new applications** from scratch with proper architecture
- **Implement complex features** that require deep technical expertise
- **Design scalable systems** that can grow with your needs
- **Create beautiful UIs** that provide exceptional user experiences
- **Develop real-time features** for interactive applications
- **Modernize legacy systems** with current best practices
- **Optimize performance** across the entire stack

### [**api-designer**](api-designer.md) - REST and GraphQL API architect

The architect who designs beautiful, intuitive, and scalable APIs. Expert in RESTful principles, GraphQL schemas, API versioning, and documentation. Ensures your APIs are developer-friendly and future-proof.

**Use when:** Designing new APIs, refactoring existing endpoints, implementing API standards, or creating comprehensive API documentation.

### [**backend-developer**](backend-developer.md) - Server-side expert for scalable APIs

Your go-to specialist for building robust server applications, RESTful APIs, and microservices. Excels at database design, authentication systems, and performance optimization. Perfect for creating the backbone of your application with Node.js, Python, Java, or other backend technologies.

**Use when:** Building APIs, designing databases, implementing authentication, handling business logic, or optimizing server performance.

### [**electron-pro**](electron-pro.md) - Desktop application expert

Specialist in building cross-platform desktop applications using web technologies. Masters Electron framework for creating installable desktop apps with native capabilities. Handles auto-updates, system integration, and desktop-specific features.

**Use when:** Creating desktop applications, porting web apps to desktop, implementing system tray features, or building offline-capable desktop tools.

### [**frontend-developer**](frontend-developer.md) - UI/UX specialist for React, Vue, and Angular

Master of modern web interfaces who creates responsive, accessible, and performant user experiences. Expert in component architecture, state management, and modern CSS. Transforms designs into pixel-perfect, interactive applications.

**Use when:** Creating web interfaces, implementing complex UI components, optimizing frontend performance, or ensuring accessibility compliance.

### [**fullstack-developer**](fullstack-developer.md) - End-to-end feature development

The versatile expert who seamlessly works across the entire stack. Builds complete features from database to UI, ensuring smooth integration between frontend and backend. Ideal for rapid prototyping and full feature implementation.

**Use when:** Building complete features, prototyping applications, working on small to medium projects, or when you need unified development across the stack.

### [**graphql-architect**](graphql-architect.md) - GraphQL schema and federation expert

Specialized in GraphQL ecosystem, from schema design to federation strategies. Masters resolver optimization, subscription patterns, and GraphQL best practices. Perfect for building flexible, efficient data layers.

**Use when:** Implementing GraphQL APIs, designing schemas, optimizing resolvers, setting up federation, or migrating from REST to GraphQL.

### [**microservices-architect**](microservices-architect.md) - Distributed systems designer

Expert in designing and implementing microservices architectures. Handles service decomposition, inter-service communication, distributed transactions, and orchestration. Ensures your system scales horizontally with resilience.

**Use when:** Breaking monoliths into microservices, designing distributed systems, implementing service mesh, or solving distributed system challenges.

### [**mobile-developer**](mobile-developer.md) - Cross-platform mobile specialist

Expert in creating native and cross-platform mobile applications for iOS and Android. Proficient in React Native, Flutter, and native development. Focuses on mobile-specific challenges like offline functionality, push notifications, and app store optimization.

**Use when:** Building mobile apps, implementing mobile-specific features, optimizing for mobile performance, or preparing for app store deployment.

### [**ui-designer**](ui-designer.md) - Visual design and interaction specialist

Master of visual design who creates beautiful, intuitive, and accessible user interfaces. Expert in design systems, typography, color theory, and interaction patterns. Transforms ideas into polished designs that balance aesthetics with functionality while maintaining brand consistency.

**Use when:** Creating visual designs, building design systems, defining interaction patterns, establishing brand identity, or preparing design handoffs for development.

### [**websocket-engineer**](websocket-engineer.md) - Real-time communication specialist

Master of real-time, bidirectional communication. Implements WebSocket servers, manages connections at scale, and handles real-time features like chat, notifications, and live updates. Expert in Socket.io and native WebSocket implementations.

**Use when:** Building chat applications, implementing real-time notifications, creating collaborative features, or developing live-updating dashboards.

### [**wordpress-master**](wordpress-master.md) - WordPress development and optimization expert

Specialist in WordPress ecosystem who builds everything from simple blogs to enterprise platforms. Masters theme development, plugin architecture, Gutenberg blocks, and performance optimization. Expert in both classic PHP development and modern block-based solutions.

**Use when:** Building WordPress sites, developing custom themes, creating plugins, implementing WooCommerce solutions, or optimizing WordPress performance.

### Core Development Quick Reference

| If you need to...                  | Use this subagent           |
| ---------------------------------- | --------------------------- |
| Build a REST API with database     | **backend-developer**       |
| Create a responsive web UI         | **frontend-developer**      |
| Develop a complete web application | **fullstack-developer**     |
| Build a mobile app                 | **mobile-developer**        |
| Design user interfaces             | **ui-designer**             |
| Create a desktop application       | **electron-pro**            |
| Design a new API structure         | **api-designer**            |
| Implement GraphQL                  | **graphql-architect**       |
| Build a distributed system         | **microservices-architect** |
| Add real-time features             | **websocket-engineer**      |
| Create a WordPress site            | **wordpress-master**        |

### 💡 Common Combinations

**Full-Stack Web Application:**

- Start with **api-designer** for API structure
- Use **backend-developer** for server implementation
- Employ **frontend-developer** for UI development

**Enterprise System:**

- Begin with **microservices-architect** for system design
- Use **graphql-architect** for data layer
- Add **backend-developer** for service implementation

**Real-time Application:**

- Start with **websocket-engineer** for real-time infrastructure
- Add **backend-developer** for business logic
- Use **frontend-developer** for interactive UI

**Design-Driven Development:**

- Begin with **ui-designer** for visual design and prototypes
- Use **frontend-developer** for implementation
- Add **accessibility-tester** for compliance validation

**WordPress Project:**

- Start with **wordpress-master** for architecture and setup
- Add **php-pro** for custom PHP development
- Use **frontend-developer** for custom JavaScript

## Language Specialists Subagents

Language Specialists are your expert guides for specific programming languages and their ecosystems. These subagents bring deep knowledge of language idioms, best practices, performance optimization techniques, and framework expertise. Whether you're working with modern web frameworks, system programming languages, or enterprise platforms, these specialists ensure you're writing idiomatic, efficient, and maintainable code.

Use these subagents when you need to:

- **Master language-specific features** and advanced patterns
- **Optimize performance** using language-specific techniques
- **Implement framework best practices** for production applications
- **Migrate or modernize** existing codebases
- **Solve language-specific challenges** with expert guidance
- **Learn advanced patterns** and idioms of a language
- **Build framework-specific applications** with confidence

### [**angular-architect**](angular-architect.md) - Angular 15+ enterprise patterns expert

Master of Angular ecosystem specializing in enterprise-scale applications. Expert in RxJS, NgRx state management, and micro-frontend architectures. Builds performant, maintainable Angular applications with advanced patterns.

**Use when:** Building enterprise Angular apps, implementing complex state management, optimizing Angular performance, or migrating to latest Angular versions.

### [**cpp-pro**](cpp-pro.md) - C++ performance expert

Systems programming specialist with deep knowledge of modern C++ standards, memory management, and performance optimization. Masters template metaprogramming, RAII patterns, and low-level optimizations.

**Use when:** Writing high-performance C++ code, implementing system-level software, optimizing memory usage, or working with embedded systems.

### [**csharp-developer**](csharp-developer.md) - .NET ecosystem specialist

Expert in C# language features and the entire .NET ecosystem. Proficient in ASP.NET Core, Entity Framework, and cross-platform development. Builds enterprise applications with clean architecture.

**Use when:** Developing .NET applications, building ASP.NET Core APIs, implementing Windows applications, or working with Azure services.

### [**django-developer**](django-developer.md) - Django 4+ web development expert

Python web framework specialist focusing on Django's batteries-included philosophy. Masters ORM optimization, async views, and Django's security features. Builds scalable web applications rapidly.

**Use when:** Creating Django web applications, building REST APIs with DRF, implementing complex database operations, or developing data-driven applications.

### [**dotnet-core-expert**](dotnet-core-expert.md) - .NET 8 cross-platform specialist

Modern .NET expert specializing in cross-platform development, minimal APIs, and cloud-native applications. Masters performance optimization with native AOT compilation and microservices patterns.

**Use when:** Building cross-platform .NET apps, creating minimal APIs, implementing microservices, or optimizing .NET performance.

### [**dotnet-framework-4.8-expert**](dotnet-framework-4.8-expert.md) - .NET Framework legacy enterprise specialist

Expert in maintaining and modernizing .NET Framework 4.8 enterprise applications. Masters Web Forms, WCF services, Windows services, and enterprise integration patterns with focus on stability and backward compatibility.

**Use when:** Maintaining legacy .NET Framework apps, modernizing Web Forms applications, working with WCF services, or integrating with Windows enterprise systems.

### [**elixir-expert**](elixir-expert.md) - Elixir and OTP specialist

Elixir language expert focusing on fault-tolerant, concurrent systems using OTP patterns. Masters Phoenix, LiveView, and distributed systems on the BEAM VM. Builds highly available applications with "let it crash" philosophy.

**Use when:** Building fault-tolerant systems, creating real-time apps with Phoenix LiveView, implementing distributed Elixir clusters, or leveraging OTP patterns for reliability.

### [**flutter-expert**](flutter-expert.md) - Flutter 3+ cross-platform mobile expert

Mobile development specialist creating beautiful, natively compiled applications from a single codebase. Expert in widget composition, state management, and platform-specific implementations.

**Use when:** Building cross-platform mobile apps, creating custom Flutter widgets, implementing complex animations, or optimizing Flutter performance.

### [**golang-pro**](golang-pro.md) - Go concurrency specialist

Go language expert focusing on concurrent programming, channels, and goroutines. Masters building efficient, scalable backend services and CLI tools with Go's simplicity and performance.

**Use when:** Building concurrent systems, creating microservices in Go, developing CLI tools, or implementing high-performance network services.

### [**java-architect**](java-architect.md) - Enterprise Java expert

Java ecosystem master with expertise in Spring, Jakarta EE, and enterprise patterns. Specializes in building robust, scalable applications with modern Java features and frameworks.

**Use when:** Developing enterprise Java applications, implementing Spring Boot services, designing Java architectures, or modernizing legacy Java code.

### [**javascript-pro**](javascript-pro.md) - JavaScript development expert

Modern JavaScript specialist mastering ES6+, async patterns, and the npm ecosystem. Expert in both browser and Node.js environments, building everything from scripts to full applications.

**Use when:** Writing modern JavaScript, working with Node.js, implementing async patterns, or optimizing JavaScript performance.

### [**kotlin-specialist**](kotlin-specialist.md) - Modern JVM language expert

Kotlin language expert for Android development and JVM applications. Masters coroutines, DSL creation, and Kotlin's expressive features. Builds safe, concise applications.

**Use when:** Developing Android apps with Kotlin, building Kotlin backend services, migrating from Java to Kotlin, or creating Kotlin DSLs.

### [**laravel-specialist**](laravel-specialist.md) - Laravel 10+ PHP framework expert

PHP framework specialist focusing on Laravel's elegant syntax and powerful features. Masters Eloquent ORM, queue systems, and Laravel's extensive ecosystem.

**Use when:** Building Laravel applications, implementing complex queue jobs, creating Laravel packages, or optimizing Eloquent queries.

### [**nextjs-developer**](nextjs-developer.md) - Next.js 14+ full-stack specialist

React framework expert specializing in Next.js App Router, server components, and full-stack features. Builds blazing-fast, SEO-friendly web applications.

**Use when:** Creating Next.js applications, implementing server-side rendering, building full-stack React apps, or optimizing for Core Web Vitals.

### [**php-pro**](php-pro.md) - PHP web development expert

Modern PHP specialist with expertise in PHP 8+ features, Composer ecosystem, and framework-agnostic development. Builds secure, performant PHP applications.

**Use when:** Developing PHP applications, modernizing legacy PHP code, implementing PHP APIs, or working with PHP frameworks.

### [**powershell-5.1-expert**](powershell-5.1-expert.md) - Windows PowerShell 5.1 automation specialist

Expert in PowerShell 5.1 scripting for Windows infrastructure, RSAT modules, and legacy .NET Framework environments. Ensures compatibility, stability, and safe automation across AD, DNS, DHCP, and GPO.

**Use when:** Working with Windows-only automation, legacy modules, on-prem infrastructure, or scripts requiring compatibility with older servers and full .NET Framework.

### [**powershell-7-expert**](powershell-7-expert.md) - Cross-platform PowerShell 7 automation specialist

Expert in modern PowerShell 7+, .NET 6/7 APIs, cross-platform scripting, CI/CD integration, and cloud automation using Az and Microsoft Graph.

**Use when:** Building modern automation tools, cross-platform scripts, Azure integrations, CI/CD cmdlets, or modernization projects moving off Windows PowerShell.

### [**python-pro**](python-pro.md) - Python ecosystem master

Python language expert covering web development, data science, automation, and system scripting. Masters Pythonic code patterns and the vast Python ecosystem.

**Use when:** Writing Python applications, building data pipelines, creating automation scripts, or developing Python packages.

### [**rails-expert**](rails-expert.md) - Rails 8.1 rapid development expert

Ruby on Rails specialist focusing on convention over configuration and rapid development. Masters Active Record, Hotwire, and Rails' comprehensive feature set.

**Use when:** Building Rails applications, implementing real-time features with Hotwire, optimizing Active Record queries, or upgrading Rails versions.

### [**react-specialist**](react-specialist.md) - React 18+ modern patterns expert

React ecosystem expert mastering hooks, concurrent features, and modern patterns. Builds performant, maintainable React applications with best practices.

**Use when:** Developing React applications, implementing complex state management, optimizing React performance, or migrating to modern React patterns.

### [**rust-engineer**](rust-engineer.md) - Systems programming expert

Rust language specialist focusing on memory safety, ownership patterns, and zero-cost abstractions. Builds reliable, efficient systems software.

**Use when:** Writing systems software in Rust, building performance-critical applications, implementing safe concurrent code, or developing WebAssembly modules.

### [**spring-boot-engineer**](spring-boot-engineer.md) - Spring Boot 3+ microservices expert

Spring ecosystem specialist building cloud-native Java applications. Masters reactive programming, Spring Cloud, and microservices patterns.

**Use when:** Creating Spring Boot microservices, implementing reactive applications, building cloud-native Java apps, or working with Spring Cloud.

### [**sql-pro**](sql-pro.md) - Database query expert

SQL language master optimizing complex queries across different database systems. Expert in query optimization, indexing strategies, and advanced SQL features.

**Use when:** Writing complex SQL queries, optimizing database performance, designing database schemas, or troubleshooting query performance.

### [**swift-expert**](swift-expert.md) - iOS and macOS specialist

Swift language expert for Apple platform development. Masters SwiftUI, UIKit, and Apple's frameworks. Builds native iOS, macOS, and cross-platform Apple applications.

**Use when:** Developing iOS/macOS applications, implementing SwiftUI interfaces, working with Apple frameworks, or optimizing Swift performance.

### [**typescript-pro**](typescript-pro.md) - TypeScript specialist

TypeScript expert ensuring type safety in JavaScript applications. Masters advanced type system features, generics, and TypeScript configuration for large-scale applications.

**Use when:** Adding TypeScript to projects, implementing complex type definitions, migrating JavaScript to TypeScript, or building type-safe applications.

### [**vue-expert**](vue-expert.md) - Vue 3 Composition API expert

Vue.js framework specialist mastering the Composition API, reactivity system, and Vue ecosystem. Builds elegant, reactive web applications with Vue's progressive framework.

**Use when:** Creating Vue applications, implementing Composition API patterns, working with Nuxt.js, or optimizing Vue performance.

### Language Specialists Quick Reference

| Language/Framework | Subagent                        | Best For                                       |
| ------------------ | ------------------------------- | ---------------------------------------------- |
| Angular            | **angular-architect**           | Enterprise web apps, complex SPAs              |
| C++                | **cpp-pro**                     | Systems programming, performance-critical code |
| C#/.NET            | **csharp-developer**            | Windows apps, enterprise software              |
| Django             | **django-developer**            | Python web apps, REST APIs                     |
| .NET Core          | **dotnet-core-expert**          | Cross-platform .NET, microservices             |
| .NET Framework     | **dotnet-framework-4.8-expert** | Legacy enterprise apps, Windows services       |
| Elixir             | **elixir-expert**               | Fault-tolerant systems, Phoenix/LiveView       |
| Flutter            | **flutter-expert**              | Cross-platform mobile apps                     |
| Go                 | **golang-pro**                  | Concurrent systems, microservices              |
| Java               | **java-architect**              | Enterprise applications                        |
| JavaScript         | **javascript-pro**              | Web development, Node.js                       |
| Kotlin             | **kotlin-specialist**           | Android apps, modern JVM                       |
| Laravel            | **laravel-specialist**          | PHP web applications                           |
| Next.js            | **nextjs-developer**            | Full-stack React apps                          |
| PHP                | **php-pro**                     | Web development, APIs                          |
| Python             | **python-pro**                  | General purpose, data science                  |
| Rails              | **rails-expert**                | Rapid web development                          |
| React              | **react-specialist**            | Modern web UIs                                 |
| Rust               | **rust-engineer**               | Systems software, WebAssembly                  |
| Spring Boot        | **spring-boot-engineer**        | Java microservices                             |
| SQL                | **sql-pro**                     | Database queries, optimization                 |
| Swift              | **swift-expert**                | iOS/macOS development                          |
| TypeScript         | **typescript-pro**              | Type-safe JavaScript                           |
| Vue                | **vue-expert**                  | Progressive web apps                           |

### Common Technology Stacks

**Modern Web Application:**

- **react-specialist** + **typescript-pro** + **nextjs-developer**
- **vue-expert** + **typescript-pro** + **laravel-specialist**
- **angular-architect** + **spring-boot-engineer**

**Mobile Development:**

- **flutter-expert** for cross-platform
- **swift-expert** for iOS native
- **kotlin-specialist** for Android native

**Enterprise Backend:**

- **java-architect** + **spring-boot-engineer**
- **csharp-developer** + **dotnet-core-expert**
- **python-pro** + **django-developer**

**Systems Programming:**

- **rust-engineer** for safety-critical systems
- **cpp-pro** for performance-critical applications
- **golang-pro** for concurrent systems

**Real-time & Distributed:**

- **elixir-expert** for fault-tolerant distributed systems
- **elixir-expert** + Phoenix LiveView for real-time web apps

## Infrastructure Subagents

Infrastructure subagents are your DevOps and cloud computing experts, specializing in building, deploying, and maintaining modern infrastructure. These specialists handle everything from CI/CD pipelines to cloud architecture, from container orchestration to database administration. They ensure your applications run reliably, scale efficiently, and deploy seamlessly across any environment.

Use these subagents when you need to:

- **Design cloud architectures** for scalability and reliability
- **Implement CI/CD pipelines** for automated deployments
- **Orchestrate containers** with Kubernetes and Docker
- **Manage infrastructure as code** with modern tools
- **Optimize database performance** and administration
- **Set up monitoring and observability** systems
- **Respond to incidents** and ensure high availability
- **Secure infrastructure** and implement best practices

### [**azure-infra-engineer**](azure-infra-engineer.md) - Azure cloud infrastructure and automation specialist

Expert in Azure resource design, virtual networking, identity integration, and infrastructure-as-code patterns via PowerShell, Bicep, and Az modules.

**Use when:** Designing Azure environments, deploying resources safely, integrating with M365, or creating automation scripts for Azure services and hybrid identity.

### [**cloud-architect**](cloud-architect.md) - AWS/GCP/Azure specialist

Multi-cloud expert designing scalable, cost-effective cloud solutions. Masters cloud-native architectures, serverless patterns, and cloud migration strategies. Ensures optimal resource utilization across major cloud providers.

**Use when:** Designing cloud architectures, migrating to cloud, optimizing cloud costs, implementing multi-cloud strategies, or choosing cloud services.

### [**database-administrator**](database-administrator.md) - Database management expert

Database specialist managing relational and NoSQL databases at scale. Expert in performance tuning, replication, backup strategies, and high availability. Ensures data integrity and optimal database performance.

**Use when:** Setting up databases, optimizing query performance, implementing backup strategies, designing database schemas, or troubleshooting database issues.

### [**deployment-engineer**](deployment-engineer.md) - Deployment automation specialist

Deployment expert automating application releases across environments. Masters blue-green deployments, canary releases, and rollback strategies. Ensures zero-downtime deployments with confidence.

**Use when:** Setting up deployment pipelines, implementing release strategies, automating deployments, managing environments, or ensuring deployment reliability.

### [**devops-engineer**](devops-engineer.md) - CI/CD and automation expert

DevOps practitioner bridging development and operations. Expert in CI/CD pipelines, automation tools, and DevOps culture. Accelerates delivery while maintaining stability and security.

**Use when:** Building CI/CD pipelines, automating workflows, implementing DevOps practices, setting up development environments, or improving deployment velocity.

### [**devops-incident-responder**](devops-incident-responder.md) - DevOps incident management

Incident response specialist for DevOps environments. Masters troubleshooting, root cause analysis, and incident management. Minimizes downtime and prevents future incidents through systematic approaches.

**Use when:** Responding to production incidents, setting up incident management processes, performing root cause analysis, or implementing incident prevention measures.

### [**incident-responder**](incident-responder.md) - System incident response expert

Critical incident specialist handling system outages and emergencies. Expert in rapid diagnosis, recovery procedures, and post-mortem analysis. Restores service quickly while learning from failures.

**Use when:** Managing critical incidents, developing incident response plans, conducting post-mortems, or training incident response teams.

### [**kubernetes-specialist**](kubernetes-specialist.md) - Container orchestration master

Kubernetes expert managing containerized applications at scale. Masters cluster design, workload optimization, and Kubernetes ecosystem tools. Ensures reliable container orchestration in production.

**Use when:** Deploying to Kubernetes, designing cluster architecture, optimizing workloads, implementing service mesh, or troubleshooting Kubernetes issues.

### [**network-engineer**](network-engineer.md) - Network infrastructure specialist

Network architecture expert designing secure, performant networks. Masters SDN, load balancing, and network security. Ensures reliable connectivity and optimal network performance.

**Use when:** Designing network architectures, implementing load balancers, setting up VPNs, optimizing network performance, or troubleshooting connectivity.

### [**platform-engineer**](platform-engineer.md) - Platform architecture expert

Platform specialist building internal developer platforms. Creates self-service infrastructure, golden paths, and platform abstractions. Empowers developers while maintaining governance.

**Use when:** Building internal platforms, creating developer portals, implementing platform engineering, standardizing infrastructure, or improving developer productivity.

### [**security-engineer**](security-engineer.md) - Infrastructure security specialist

Security expert protecting infrastructure and applications. Masters security hardening, compliance, and threat prevention. Implements defense-in-depth strategies across all layers.

**Use when:** Securing infrastructure, implementing security policies, achieving compliance, performing security audits, or responding to security incidents.

### [**sre-engineer**](sre-engineer.md) - Site reliability engineering expert

SRE practitioner ensuring system reliability through engineering. Masters SLIs/SLOs, error budgets, and chaos engineering. Balances feature velocity with system stability.

**Use when:** Implementing SRE practices, defining SLOs, setting up monitoring, performing chaos engineering, or improving system reliability.

### [**terraform-engineer**](terraform-engineer.md) - Infrastructure as Code expert

IaC specialist using Terraform for infrastructure automation. Masters module design, state management, and multi-environment deployments. Ensures infrastructure consistency and repeatability.

**Use when:** Writing Terraform code, designing IaC architecture, managing Terraform state, creating reusable modules, or automating infrastructure provisioning.

### [**terragrunt-expert**](terragrunt-expert.md) - Terragrunt orchestration and DRY IaC specialist

Senior Terragrunt expert orchestrating OpenTofu/Terraform infrastructure at scale. Masters stack architecture, unit composition, dependency management, and DRY configuration patterns. Ensures enterprise-grade infrastructure automation with focus on code reuse and maintainability.

**Use when:** Orchestrating Terraform modules with Terragrunt, implementing DRY configurations across environments, managing complex dependency graphs, designing multi-account/multi-region infrastructure, or migrating from monolithic Terraform to modular Terragrunt stacks.

### [**windows-infra-admin**](windows-infra-admin.md) - Windows infrastructure and Active Directory automation expert

Deep expertise in automating AD, DNS, DHCP, GPO, server configuration, and domain services using PowerShell. Focuses on safe change workflows, idempotent operations, and enterprise-grade operational patterns.

**Use when:** Managing domain infrastructure, modifying AD objects, updating DNS/DHCP records, automating GPO tasks, or performing server-level automation in enterprise environments.

### Infrastructure Quick Reference

| If you need to...                      | Use this subagent             |
| -------------------------------------- | ----------------------------- |
| Design cloud architecture              | **cloud-architect**           |
| Manage databases                       | **database-administrator**    |
| Automate deployments                   | **deployment-engineer**       |
| Build CI/CD pipelines                  | **devops-engineer**           |
| Handle DevOps incidents                | **devops-incident-responder** |
| Manage critical outages                | **incident-responder**        |
| Deploy with Kubernetes                 | **kubernetes-specialist**     |
| Design networks                        | **network-engineer**          |
| Build developer platforms              | **platform-engineer**         |
| Secure infrastructure                  | **security-engineer**         |
| Implement SRE practices                | **sre-engineer**              |
| Write infrastructure code              | **terraform-engineer**        |
| Orchestrate Terraform/OpenTofu modules | **terragrunt-expert**         |

### Common Infrastructure Patterns

**Cloud-Native Application:**

- **cloud-architect** for architecture design
- **kubernetes-specialist** for container orchestration
- **devops-engineer** for CI/CD pipeline
- **sre-engineer** for reliability

**Enterprise Infrastructure:**

- **terraform-engineer** for IaC
- **network-engineer** for networking
- **security-engineer** for security
- **database-administrator** for data layer

**Platform Engineering:**

- **platform-engineer** for platform design
- **deployment-engineer** for deployment automation
- **devops-engineer** for tooling
- **cloud-architect** for infrastructure

**IaC at Scale:**

- **terragrunt-expert** for orchestration and DRY configs
- **terraform-engineer** for module development
- **cloud-architect** for multi-cloud strategy
- **security-engineer** for compliance

**Incident Management:**

- **incident-responder** for critical incidents
- **devops-incident-responder** for DevOps issues
- **sre-engineer** for prevention
- **security-engineer** for security incidents

## Quality & Security Subagents

Quality & Security subagents are your guardians of code excellence and system protection. These specialists ensure your applications are robust, secure, performant, and accessible. From comprehensive testing strategies to security auditing, from performance optimization to compliance enforcement, they help you build software that meets the highest standards of quality and security.

Use these subagents when you need to:

- **Implement comprehensive testing** strategies and automation
- **Secure applications** against vulnerabilities and threats
- **Optimize performance** for speed and efficiency
- **Ensure accessibility** for all users
- **Review code quality** and enforce standards
- **Debug complex issues** systematically
- **Achieve compliance** with regulations
- **Test system resilience** through chaos engineering

### [**accessibility-tester**](accessibility-tester.md) - A11y compliance expert

Accessibility specialist ensuring applications work for everyone. Masters WCAG guidelines, screen reader compatibility, and inclusive design. Makes applications accessible without compromising functionality.

**Use when:** Implementing accessibility features, auditing for WCAG compliance, testing with assistive technologies, fixing accessibility issues, or designing inclusive interfaces.

### [**ad-security-reviewer**](ad-security-reviewer.md) - Active Directory security posture and attack surface analyst

Active Directory security specialist reviewing directory configuration, admin models, and trust boundaries. Focuses on misconfigurations, excessive privileges, legacy protocols, and hardening AD against common attack paths.

**Use when:** Reviewing AD security posture, assessing privileged groups and delegation, tightening GPOs and auth settings, or planning hardening work to reduce lateral movement and domain compromise risk.

### [**architect-reviewer**](architect-reviewer.md) - Architecture review specialist

Architecture expert evaluating system designs for scalability, maintainability, and best practices. Identifies architectural risks and suggests improvements. Ensures long-term system health.

**Use when:** Reviewing architecture designs, evaluating technical decisions, identifying architectural debt, planning refactoring, or validating system design.

### [**chaos-engineer**](chaos-engineer.md) - System resilience testing expert

Resilience specialist using chaos engineering to uncover weaknesses. Masters failure injection, game days, and chaos experiments. Builds confidence in system reliability through controlled chaos.

**Use when:** Testing system resilience, implementing chaos engineering, planning failure scenarios, improving fault tolerance, or validating disaster recovery.

### [**code-reviewer**](code-reviewer.md) - Code quality guardian

Code quality expert performing thorough code reviews. Masters best practices, design patterns, and code smells. Ensures code is clean, maintainable, and follows team standards.

**Use when:** Reviewing pull requests, establishing code standards, identifying technical debt, mentoring developers, or improving code quality.

### [**compliance-auditor**](compliance-auditor.md) - Regulatory compliance expert

Compliance specialist ensuring adherence to regulations and standards. Masters GDPR, HIPAA, SOC2, and industry-specific requirements. Navigates complex compliance landscapes with expertise.

**Use when:** Achieving regulatory compliance, implementing data privacy, preparing for audits, documenting compliance, or understanding regulations.

### [**debugger**](debugger.md) - Advanced debugging specialist

Debugging expert solving the most complex issues. Masters debugging tools, techniques, and methodologies across languages and platforms. Finds root causes where others give up.

**Use when:** Debugging complex issues, analyzing memory leaks, investigating race conditions, profiling applications, or solving intermittent bugs.

### [**error-detective**](error-detective.md) - Error analysis and resolution expert

Error investigation specialist tracking down elusive bugs. Expert in log analysis, error patterns, and systematic debugging. Turns cryptic errors into actionable solutions.

**Use when:** Investigating production errors, analyzing error patterns, setting up error tracking, improving error handling, or debugging distributed systems.

### [**penetration-tester**](penetration-tester.md) - Ethical hacking specialist

Security expert simulating attacks to find vulnerabilities. Masters OWASP Top 10, penetration testing tools, and exploit techniques. Thinks like an attacker to defend like a pro.

**Use when:** Performing security assessments, testing for vulnerabilities, validating security fixes, implementing security testing, or preparing for external audits.

### [**performance-engineer**](performance-engineer.md) - Performance optimization expert

Performance specialist making applications blazing fast. Masters profiling, optimization techniques, and performance testing. Eliminates bottlenecks and optimizes resource usage.

**Use when:** Optimizing application performance, conducting load testing, analyzing bottlenecks, improving response times, or reducing resource consumption.

### [**powershell-security-hardening**](powershell-security-hardening.md) - PowerShell-driven security baseline specialist

Security-focused PowerShell expert hardening Windows servers, workstations, and automation tooling. Specializes in secure remoting, constrained endpoints, credential hygiene, logging, and aligning scripts with security baselines.

**Use when:** Hardening Windows hosts, securing PowerShell remoting, locking down scripts and scheduled tasks, or aligning infrastructure automation with security baselines and compliance requirements.

### [**qa-expert**](qa-expert.md) - Test automation specialist

Quality assurance master designing comprehensive test strategies. Expert in test automation, frameworks, and methodologies. Ensures quality through systematic testing approaches.

**Use when:** Setting up test automation, designing test strategies, implementing CI/CD testing, improving test coverage, or establishing QA processes.

### [**security-auditor**](security-auditor.md) - Security vulnerability expert

Security specialist conducting thorough security audits. Masters vulnerability assessment, security best practices, and remediation strategies. Protects applications from evolving threats.

**Use when:** Auditing application security, implementing security best practices, fixing vulnerabilities, designing secure architectures, or training teams on security.

### [**test-automator**](test-automator.md) - Test automation framework expert

Automation specialist building robust test frameworks. Expert in various testing tools, patterns, and strategies. Creates maintainable, reliable automated test suites.

**Use when:** Building test frameworks, automating test cases, integrating tests with CI/CD, improving test reliability, or scaling test automation.

### Quality & Security Quick Reference

| If you need to...      | Use this subagent        |
| ---------------------- | ------------------------ |
| Make apps accessible   | **accessibility-tester** |
| Review architecture    | **architect-reviewer**   |
| Test system resilience | **chaos-engineer**       |
| Review code quality    | **code-reviewer**        |
| Achieve compliance     | **compliance-auditor**   |
| Debug complex issues   | **debugger**             |
| Investigate errors     | **error-detective**      |
| Test security          | **penetration-tester**   |
| Optimize performance   | **performance-engineer** |
| Automate testing       | **qa-expert**            |
| Audit security         | **security-auditor**     |
| Build test frameworks  | **test-automator**       |

### Common Quality Patterns

**Comprehensive Testing:**

- **qa-expert** for test strategy
- **test-automator** for automation framework
- **performance-engineer** for load testing
- **accessibility-tester** for a11y testing

**Security Assessment:**

- **security-auditor** for vulnerability assessment
- **penetration-tester** for penetration testing
- **compliance-auditor** for compliance check
- **code-reviewer** for secure coding

**Performance Optimization:**

- **performance-engineer** for profiling
- **debugger** for bottleneck analysis
- **error-detective** for issue investigation
- **chaos-engineer** for stress testing

**Code Quality:**

- **code-reviewer** for code review
- **architect-reviewer** for design review
- **qa-expert** for quality processes
- **test-automator** for test coverage

## Data & AI Subagents

Data & AI subagents are your specialists in the world of data engineering, machine learning, and artificial intelligence. These experts handle everything from building robust data pipelines to training sophisticated ML models, from optimizing databases to deploying AI systems at scale. They bridge the gap between raw data and intelligent applications, ensuring your data-driven solutions are efficient, scalable, and impactful.

Use these subagents when you need to:

- **Build data pipelines** for ETL/ELT workflows
- **Train machine learning models** for predictions and insights
- **Design AI systems** for production deployment
- **Optimize database performance** at scale
- **Implement NLP solutions** for text processing
- **Create computer vision** applications
- **Deploy ML models** with MLOps best practices
- **Analyze data** for business insights

### [**ai-engineer**](ai-engineer.md) - AI system design and deployment expert

AI systems specialist building production-ready artificial intelligence solutions. Masters model deployment, scaling, and integration. Bridges the gap between AI research and real-world applications.

**Use when:** Deploying AI models to production, designing AI system architectures, integrating AI into applications, scaling AI services, or implementing AI pipelines.

### [**data-analyst**](data-analyst.md) - Data insights and visualization specialist

Analytics expert transforming data into actionable insights. Masters statistical analysis, data visualization, and business intelligence tools. Tells compelling stories with data.

**Use when:** Analyzing business data, creating dashboards, performing statistical analysis, building reports, or discovering data insights.

### [**data-engineer**](data-engineer.md) - Data pipeline architect

Data infrastructure specialist building scalable data pipelines. Expert in ETL/ELT processes, data warehousing, and streaming architectures. Ensures data flows reliably from source to insight.

**Use when:** Building data pipelines, designing data architectures, implementing ETL processes, setting up data warehouses, or handling big data processing.

### [**data-scientist**](data-scientist.md) - Analytics and insights expert

Data science practitioner combining statistics, machine learning, and domain expertise. Masters predictive modeling, experimentation, and advanced analytics. Extracts value from complex datasets.

**Use when:** Building predictive models, conducting experiments, performing advanced analytics, developing ML algorithms, or solving complex data problems.

### [**database-optimizer**](database-optimizer.md) - Database performance specialist

Database performance expert ensuring queries run at lightning speed. Masters indexing strategies, query optimization, and database tuning. Makes databases perform at their peak.

**Use when:** Optimizing slow queries, designing efficient schemas, implementing indexing strategies, tuning database performance, or scaling databases.

### [**llm-architect**](llm-architect.md) - Large language model architect

LLM specialist designing and deploying large language model solutions. Expert in prompt engineering, fine-tuning, and LLM applications. Harnesses the power of modern language models.

**Use when:** Implementing LLM solutions, designing prompt strategies, fine-tuning models, building chatbots, or creating AI-powered applications.

### [**machine-learning-engineer**](machine-learning-engineer.md) - Machine learning systems expert

ML engineering specialist building end-to-end machine learning systems. Masters the entire ML lifecycle from data to deployment. Ensures models work reliably in production.

**Use when:** Building ML pipelines, implementing ML systems, deploying models, creating ML infrastructure, or productionizing ML solutions.

### [**ml-engineer**](ml-engineer.md) - Machine learning specialist

Machine learning expert developing and optimizing ML models. Proficient in various algorithms, frameworks, and techniques. Solves complex problems with machine learning.

**Use when:** Training ML models, selecting algorithms, optimizing model performance, implementing ML solutions, or experimenting with new techniques.

### [**mlops-engineer**](mlops-engineer.md) - MLOps and model deployment expert

MLOps specialist ensuring smooth ML model deployment and operations. Masters CI/CD for ML, model monitoring, and versioning. Brings DevOps practices to machine learning.

**Use when:** Setting up ML pipelines, implementing model monitoring, automating ML workflows, managing model versions, or establishing MLOps practices.

### [**nlp-engineer**](nlp-engineer.md) - Natural language processing expert

NLP specialist building systems that understand and generate human language. Expert in text processing, language models, and linguistic analysis. Makes machines understand text.

**Use when:** Building text processing systems, implementing chatbots, analyzing sentiment, extracting information from text, or developing language understanding features.

### [**postgres-pro**](postgres-pro.md) - PostgreSQL database expert

PostgreSQL specialist mastering advanced features and optimizations. Expert in complex queries, performance tuning, and PostgreSQL-specific capabilities. Unlocks PostgreSQL's full potential.

**Use when:** Working with PostgreSQL, optimizing Postgres queries, implementing advanced features, designing PostgreSQL schemas, or troubleshooting Postgres issues.

### [**prompt-engineer**](prompt-engineer.md) - Prompt optimization specialist

Prompt engineering expert crafting effective prompts for AI models. Masters prompt design, testing, and optimization. Maximizes AI model performance through strategic prompting.

**Use when:** Designing prompts for LLMs, optimizing AI responses, implementing prompt strategies, testing prompt effectiveness, or building prompt-based applications.

### Data & AI Quick Reference

| If you need to...     | Use this subagent             |
| --------------------- | ----------------------------- |
| Deploy AI systems     | **ai-engineer**               |
| Analyze business data | **data-analyst**              |
| Build data pipelines  | **data-engineer**             |
| Create ML models      | **data-scientist**            |
| Optimize databases    | **database-optimizer**        |
| Work with LLMs        | **llm-architect**             |
| Build ML systems      | **machine-learning-engineer** |
| Train ML models       | **ml-engineer**               |
| Deploy ML models      | **mlops-engineer**            |
| Process text data     | **nlp-engineer**              |
| Optimize PostgreSQL   | **postgres-pro**              |
| Design AI prompts     | **prompt-engineer**           |

### Common Data & AI Patterns

**End-to-End ML System:**

- **data-engineer** for data pipeline
- **data-scientist** for model development
- **ml-engineer** for model optimization
- **mlops-engineer** for deployment

**AI Application:**

- **llm-architect** for LLM integration
- **prompt-engineer** for prompt optimization
- **ai-engineer** for system design
- **nlp-engineer** for text processing

**Data Platform:**

- **data-engineer** for infrastructure
- **database-optimizer** for performance
- **postgres-pro** for PostgreSQL
- **data-analyst** for insights

**Production ML:**

- **machine-learning-engineer** for ML systems
- **mlops-engineer** for operations
- **ai-engineer** for deployment
- **data-engineer** for data flow

## Developer Experience Subagents

Developer Experience subagents are your productivity multipliers, focusing on making development faster, easier, and more enjoyable. These specialists handle everything from code refactoring to documentation, from build optimization to Git workflows. They remove friction from the development process, automate repetitive tasks, and help teams work more efficiently with better tools and practices.

Use these subagents when you need to:

- **Refactor legacy code** for better maintainability
- **Optimize build systems** for faster development
- **Create developer tools** and CLI applications
- **Write technical documentation** that developers love
- **Manage dependencies** and package updates
- **Streamline Git workflows** and branching strategies
- **Modernize codebases** with latest practices
- **Improve developer productivity** across teams

### [**build-engineer**](build-engineer.md) - Build system specialist

Build optimization expert making compilation and bundling lightning fast. Masters various build tools, optimization techniques, and caching strategies. Reduces build times from minutes to seconds.

**Use when:** Optimizing build times, configuring build tools, implementing build caching, setting up monorepo builds, or troubleshooting build issues.

### [**cli-developer**](cli-developer.md) - Command-line tools and automation specialist

Senior CLI engineer building intuitive, efficient command-line tools for both developers and operators. Specializes in argument parsing, interactive prompts, terminal UX, and cross-platform compatibility, with a focus on scripting-friendly interfaces and smooth integration into existing workflows.

**Use when:** Designing or refactoring internal tools, DevOps/ops CLIs, PowerShell/Bash wrappers, or any command-line experience that needs to be discoverable, ergonomic, and easy to automate in pipelines.

### [**dependency-manager**](dependency-manager.md) - Package and dependency specialist

Dependency expert managing complex package ecosystems. Masters version resolution, security updates, and dependency optimization. Keeps dependencies secure and up-to-date without breaking things.

**Use when:** Managing dependencies, resolving version conflicts, implementing security updates, optimizing package sizes, or setting up dependency automation.

### [**documentation-engineer**](documentation-engineer.md) - Technical documentation expert

Documentation specialist creating clear, comprehensive technical docs. Masters API documentation, tutorials, and developer guides. Makes complex systems understandable through great documentation.

**Use when:** Writing API documentation, creating developer guides, building documentation sites, improving existing docs, or setting up documentation workflows.

### [**dx-optimizer**](dx-optimizer.md) - Developer experience optimization specialist

DX expert identifying and eliminating developer friction. Analyzes workflows, tools, and processes to improve productivity. Makes development feel effortless and enjoyable.

**Use when:** Improving developer workflows, analyzing productivity bottlenecks, selecting developer tools, optimizing development environments, or measuring developer experience.

### [**git-workflow-manager**](git-workflow-manager.md) - Git workflow and branching expert

Git specialist designing efficient version control workflows. Masters branching strategies, merge conflict resolution, and Git automation. Ensures smooth collaboration through Git best practices.

**Use when:** Designing Git workflows, implementing branching strategies, resolving complex merges, automating Git processes, or training teams on Git.

### [**legacy-modernizer**](legacy-modernizer.md) - Legacy code modernization specialist

Modernization expert breathing new life into old codebases. Masters incremental refactoring, dependency updates, and architecture improvements. Transforms legacy code without breaking functionality.

**Use when:** Modernizing legacy applications, planning refactoring strategies, updating old frameworks, migrating to new technologies, or improving code maintainability.

### [**mcp-developer**](mcp-developer.md) - Model Context Protocol specialist

MCP expert building servers and clients that connect AI systems with external tools and data sources. Masters protocol specification, SDK implementation, and production-ready integrations. Creates seamless bridges between AI and external services.

**Use when:** Building MCP servers, creating AI tool integrations, implementing Model Context Protocol clients, connecting AI systems to external APIs, or developing AI-powered applications with external data sources.

### [**powershell-module-architect**](powershell-module-architect.md) - PowerShell modules and profile architecture expert

PowerShell architecture specialist who turns ad-hoc scripts into clean, reusable modules and fast-loading profiles. Focuses on clear public/private function boundaries, robust parameter design, DRY helper libraries, and cross-version compatibility between Windows PowerShell 5.1 and PowerShell 7+.

**Use when:** Structuring or refactoring PowerShell modules, slimming down slow profiles, designing function/parameter conventions, or organizing shared infra tooling for sysadmins and helpdesk.

### [**powershell-ui-architect**](powershell-ui-architect.md) - PowerShell GUIs and TUIs specialist

UI and UX architect for PowerShell-based tools, designing WinForms, WPF, Metro-style dashboards (MahApps.Metro/Elysium), and terminal UIs on top of automation modules. Focuses on layering clean interfaces over reusable PowerShell/.NET logic without sacrificing maintainability.

**Use when:** You need a graphical or terminal UI for PowerShell tooling, want to choose between WinForms/WPF/TUI/Metro approaches, or need help structuring XAML and event handlers around existing PowerShell modules and scripts.

### [**refactoring-specialist**](refactoring-specialist.md) - Code refactoring expert

Refactoring master improving code structure without changing behavior. Expert in design patterns, code smells, and safe refactoring techniques. Makes code cleaner and more maintainable.

**Use when:** Refactoring complex code, eliminating code smells, implementing design patterns, improving code structure, or preparing code for new features.

### [**slack-expert**](slack-expert.md) - Slack platform and @slack/bolt specialist

Elite Slack Platform Expert with deep expertise in @slack/bolt, Slack Web API, Events API, Block Kit UI, and OAuth flows. Builds robust Slack integrations with best practices for rate limiting, security, and modern features.

**Use when:** Building Slack bots, implementing slash commands, creating Block Kit interfaces, reviewing Slack code, setting up OAuth flows, or integrating with Slack's Events API.

### [**tooling-engineer**](tooling-engineer.md) - Developer tooling specialist

Tooling expert building and integrating developer tools. Masters IDE configurations, linters, formatters, and custom tooling. Creates development environments that boost productivity.

**Use when:** Setting up development tools, creating custom tooling, configuring IDEs, implementing code quality tools, or building developer platforms.

### Developer Experience Quick Reference

| If you need to...        | Use this subagent          |
| ------------------------ | -------------------------- |
| Speed up builds          | **build-engineer**         |
| Create CLI tools         | **cli-developer**          |
| Manage packages          | **dependency-manager**     |
| Write documentation      | **documentation-engineer** |
| Improve workflows        | **dx-optimizer**           |
| Design Git strategies    | **git-workflow-manager**   |
| Modernize legacy code    | **legacy-modernizer**      |
| Build MCP integrations   | **mcp-developer**          |
| Refactor code            | **refactoring-specialist** |
| Build Slack integrations | **slack-expert**           |
| Build dev tools          | **tooling-engineer**       |

### Common DX Patterns

**Legacy Modernization:**

- **legacy-modernizer** for strategy
- **refactoring-specialist** for code improvement
- **dependency-manager** for package updates
- **documentation-engineer** for new docs

**Developer Productivity:**

- **dx-optimizer** for workflow analysis
- **tooling-engineer** for tool setup
- **build-engineer** for build optimization
- **git-workflow-manager** for version control

**Tool Development:**

- **cli-developer** for command-line tools
- **tooling-engineer** for IDE integration
- **documentation-engineer** for tool docs
- **build-engineer** for tool packaging

**Code Quality:**

- **refactoring-specialist** for code structure
- **dependency-manager** for package health
- **git-workflow-manager** for code review
- **documentation-engineer** for standards

## Specialized Domains Subagents

Specialized Domains subagents are your experts in specific technology verticals and industries. These specialists bring deep knowledge of domain-specific challenges, regulations, and best practices. From blockchain and IoT to fintech and gaming, they understand the unique requirements and patterns of their specialized fields, helping you build applications that excel in these complex domains.

Use these subagents when you need to:

- **Build blockchain applications** and smart contracts
- **Develop IoT solutions** for connected devices
- **Create payment systems** with various providers
- **Build gaming applications** with real-time features
- **Implement fintech solutions** with compliance
- **Develop embedded systems** with hardware constraints
- **Create mobile applications** with native features
- **Design financial algorithms** for trading systems

### [**api-documenter**](api-documenter.md) - API documentation specialist

API documentation expert creating developer-friendly API docs. Masters OpenAPI/Swagger, interactive documentation, and API best practices. Makes APIs discoverable and easy to integrate.

**Use when:** Documenting REST APIs, creating API specifications, building developer portals, generating client SDKs, or improving API discoverability.

### [**blockchain-developer**](blockchain-developer.md) - Web3 and crypto specialist

Blockchain expert building decentralized applications and smart contracts. Masters Ethereum, Solidity, and Web3 technologies. Creates secure, efficient blockchain solutions.

**Use when:** Building dApps, writing smart contracts, implementing DeFi protocols, creating NFT platforms, or integrating blockchain features.

### [**embedded-systems**](embedded-systems.md) - Embedded and real-time systems expert

Embedded systems specialist working with constrained environments. Expert in microcontrollers, RTOS, and hardware interfaces. Builds efficient software for resource-limited devices.

**Use when:** Programming microcontrollers, developing firmware, implementing real-time systems, optimizing for memory/power, or interfacing with hardware.

### [**fintech-engineer**](fintech-engineer.md) - Financial technology specialist

Fintech expert building secure, compliant financial applications. Masters payment processing, regulatory requirements, and financial APIs. Navigates the complex world of financial technology.

**Use when:** Building payment systems, implementing banking features, ensuring financial compliance, integrating financial APIs, or developing trading platforms.

### [**game-developer**](game-developer.md) - Game development expert

Gaming specialist creating engaging interactive experiences. Expert in game engines, real-time networking, and performance optimization. Builds games that captivate players.

**Use when:** Developing games, implementing game mechanics, optimizing game performance, building multiplayer features, or creating game tools.

### [**iot-engineer**](iot-engineer.md) - IoT systems developer

IoT expert connecting physical devices to the cloud. Masters device protocols, edge computing, and IoT platforms. Creates scalable solutions for the Internet of Things.

**Use when:** Building IoT applications, implementing device communication, managing IoT fleets, processing sensor data, or designing IoT architectures.

### [**mobile-app-developer**](mobile-app-developer.md) - Mobile application specialist

Mobile expert creating native and cross-platform applications. Masters iOS/Android development, mobile UI/UX, and app store deployment. Builds apps users love on their devices.

**Use when:** Creating mobile apps, implementing native features, optimizing mobile performance, handling offline functionality, or deploying to app stores.

### [**payment-integration**](payment-integration.md) - Payment systems expert

Payment specialist integrating various payment providers and methods. Expert in PCI compliance, payment security, and transaction handling. Makes payments seamless and secure.

**Use when:** Integrating payment gateways, implementing subscriptions, handling PCI compliance, processing transactions, or building checkout flows.

### [**quant-analyst**](quant-analyst.md) - Quantitative analysis specialist

Quantitative expert developing financial algorithms and models. Masters statistical analysis, risk modeling, and algorithmic trading. Turns market data into profitable strategies.

**Use when:** Building trading algorithms, developing risk models, analyzing financial data, implementing quantitative strategies, or backtesting systems.

### [**risk-manager**](risk-manager.md) - Risk assessment and management expert

Risk management specialist identifying and mitigating various risks. Expert in risk modeling, compliance, and mitigation strategies. Protects systems and businesses from potential threats.

**Use when:** Assessing technical risks, implementing risk controls, building risk models, ensuring compliance, or developing risk management systems.

### [**seo-specialist**](seo-specialist.md) - Search engine optimization expert

SEO expert driving organic traffic through search optimization. Masters technical SEO, content strategy, and link building. Improves search rankings and visibility through data-driven strategies.

**Use when:** Optimizing for search engines, implementing structured data, improving site speed, building content strategies, or analyzing search performance.

### Specialized Domains Quick Reference

| Domain            | Use this subagent        | Best For                         |
| ----------------- | ------------------------ | -------------------------------- |
| API Documentation | **api-documenter**       | OpenAPI specs, developer portals |
| Blockchain/Web3   | **blockchain-developer** | Smart contracts, DeFi, NFTs      |
| Embedded/IoT      | **embedded-systems**     | Firmware, microcontrollers       |
| Financial Tech    | **fintech-engineer**     | Banking, payments, compliance    |
| Gaming            | **game-developer**       | Game engines, multiplayer        |
| IoT/Connected     | **iot-engineer**         | Device clouds, sensors           |
| Mobile Apps       | **mobile-app-developer** | iOS/Android apps                 |
| Payments          | **payment-integration**  | Payment gateways, PCI            |
| Quantitative      | **quant-analyst**        | Trading algorithms, risk         |
| Risk Management   | **risk-manager**         | Risk assessment, compliance      |
| SEO/Search        | **seo-specialist**       | Search optimization, rankings    |

### Common Domain Patterns

**Fintech Application:**

- **fintech-engineer** for compliance
- **payment-integration** for payments
- **risk-manager** for risk assessment
- **quant-analyst** for algorithms

**IoT Platform:**

- **iot-engineer** for architecture
- **embedded-systems** for devices
- **mobile-app-developer** for apps
- **api-documenter** for APIs

**Blockchain Project:**

- **blockchain-developer** for smart contracts
- **fintech-engineer** for financial features
- **risk-manager** for security
- **api-documenter** for integration

**Gaming Platform:**

- **game-developer** for game logic
- **mobile-app-developer** for mobile
- **payment-integration** for monetization
- **api-documenter** for game APIs

**E-commerce Platform:**

- **seo-specialist** for organic traffic
- **payment-integration** for checkout
- **mobile-app-developer** for mobile commerce
- **risk-manager** for fraud prevention

## Business & Product Subagents

Business & Product subagents bridge the gap between technology and business value. These specialists understand both technical implementation and business strategy, helping teams build products that users love and businesses thrive on. From product strategy to customer success, from business analysis to technical writing, they ensure technology serves real business needs and delivers measurable value.

Use these subagents when you need to:

- **Define product strategy** and roadmaps
- **Analyze business requirements** and translate to technical specs
- **Conduct user research** to validate ideas
- **Create content** that drives engagement
- **Manage customer relationships** and success
- **Ensure legal compliance** in technical decisions
- **Manage projects** effectively with Agile methods
- **Bridge technical and business** communication

### [**business-analyst**](business-analyst.md) - Requirements specialist

Business analysis expert translating business needs into technical requirements. Masters stakeholder communication, process analysis, and solution design. Ensures technology solves real business problems.

**Use when:** Gathering requirements, analyzing business processes, defining specifications, creating user stories, or bridging business-technical communication.

### [**content-marketer**](content-marketer.md) - Content marketing specialist

Content expert creating compelling technical and marketing content. Masters SEO, content strategy, and audience engagement. Drives growth through strategic content creation.

**Use when:** Creating blog posts, developing content strategy, writing marketing copy, optimizing for SEO, or building content calendars.

### [**customer-success-manager**](customer-success-manager.md) - Customer success expert

Customer success specialist ensuring users achieve their goals. Expert in onboarding, retention, and customer advocacy. Transforms users into champions through proactive support.

**Use when:** Designing onboarding flows, improving user retention, gathering customer feedback, building success metrics, or creating customer programs.

### [**legal-advisor**](legal-advisor.md) - Legal and compliance specialist

Legal expert navigating technology law and compliance. Masters privacy regulations, intellectual property, and contract negotiations. Protects businesses while enabling innovation.

**Use when:** Reviewing terms of service, ensuring data privacy compliance, understanding licensing, managing intellectual property, or assessing legal risks.

### [**product-manager**](product-manager.md) - Product strategy expert

Product visionary defining what to build and why. Expert in market analysis, user needs, and product strategy. Drives product success from conception to market leadership.

**Use when:** Defining product vision, prioritizing features, conducting market research, creating roadmaps, or making product decisions.

### [**project-manager**](project-manager.md) - Project management specialist

Project management expert ensuring successful delivery. Masters Agile methodologies, resource planning, and stakeholder management. Keeps projects on time, on budget, and on target.

**Use when:** Planning projects, managing timelines, coordinating teams, tracking progress, or implementing project methodologies.

### [**sales-engineer**](sales-engineer.md) - Technical sales expert

Sales engineering specialist bridging technical complexity and customer needs. Expert in demos, POCs, and technical objections. Helps customers understand and adopt technical solutions.

**Use when:** Creating technical demos, handling sales objections, designing POCs, supporting sales teams, or explaining technical value.

### [**scrum-master**](scrum-master.md) - Agile methodology expert

Agile facilitator ensuring teams work effectively. Masters Scrum framework, team dynamics, and continuous improvement. Removes impediments and fosters high-performing teams.

**Use when:** Implementing Scrum, facilitating ceremonies, improving team processes, removing blockers, or coaching agile practices.

### [**technical-writer**](technical-writer.md) - Technical documentation specialist

Documentation expert making complex technical concepts accessible. Masters various documentation types, tools, and user-focused writing. Creates documentation users actually read.

**Use when:** Writing user guides, creating API documentation, developing tutorials, improving documentation, or building knowledge bases.

### [**ux-researcher**](ux-researcher.md) - User research expert

User research specialist uncovering user needs and behaviors. Expert in research methodologies, usability testing, and insight synthesis. Ensures products are built on real user understanding.

**Use when:** Conducting user interviews, running usability tests, analyzing user behavior, creating personas, or validating product decisions.

### Business & Product Quick Reference

| If you need to...    | Use this subagent            |
| -------------------- | ---------------------------- |
| Define requirements  | **business-analyst**         |
| Create content       | **content-marketer**         |
| Retain customers     | **customer-success-manager** |
| Handle legal matters | **legal-advisor**            |
| Shape product vision | **product-manager**          |
| Manage projects      | **project-manager**          |
| Support sales        | **sales-engineer**           |
| Run Scrum teams      | **scrum-master**             |
| Write documentation  | **technical-writer**         |
| Research users       | **ux-researcher**            |

### Common Business Patterns

**Product Development:**

- **product-manager** for vision
- **ux-researcher** for user insights
- **business-analyst** for requirements
- **project-manager** for execution

**Go-to-Market:**

- **content-marketer** for content
- **sales-engineer** for demos
- **technical-writer** for docs
- **customer-success-manager** for retention

**Agile Teams:**

- **scrum-master** for process
- **product-manager** for priorities
- **business-analyst** for stories
- **project-manager** for tracking

**Customer Focus:**

- **ux-researcher** for understanding
- **customer-success-manager** for satisfaction
- **technical-writer** for self-service
- **sales-engineer** for adoption

## Meta & Orchestration Subagents

Meta & Orchestration subagents are your conductors and coordinators, managing complex multi-agent workflows and optimizing AI system performance. These specialists excel at the meta-level - orchestrating other agents, managing context, distributing tasks, and ensuring smooth collaboration between multiple AI systems. They turn chaos into symphony, making complex AI systems work harmoniously together.

Use these subagents when you need to:

- **Coordinate multiple agents** for complex tasks
- **Optimize context usage** across conversations
- **Distribute tasks** efficiently among specialists
- **Handle errors** gracefully in multi-agent systems
- **Synthesize knowledge** from various sources
- **Monitor performance** of AI workflows
- **Design complex workflows** with multiple steps
- **Scale AI operations** across teams

### [**agent-organizer**](agent-organizer.md) - Multi-agent coordinator

Orchestration expert managing complex multi-agent collaborations. Masters task decomposition, agent selection, and result synthesis. Turns complex problems into coordinated solutions.

**Use when:** Coordinating multiple agents, breaking down complex tasks, managing agent dependencies, synthesizing results, or designing agent workflows.

### [**context-manager**](context-manager.md) - Context optimization expert

Context specialist maximizing efficiency in AI conversations. Expert in context windows, information prioritization, and memory management. Ensures optimal use of limited context space.

**Use when:** Optimizing long conversations, managing context windows, prioritizing information, implementing memory systems, or handling context overflow.

### [**error-coordinator**](error-coordinator.md) - Error handling and recovery specialist

Error handling expert ensuring graceful failure recovery. Masters error patterns, fallback strategies, and system resilience. Keeps multi-agent systems running smoothly despite failures.

**Use when:** Implementing error handling, designing recovery strategies, managing cascading failures, monitoring system health, or building resilient workflows.

### [**it-ops-orchestrator**](it-ops-orchestrator.md) - IT operations meta-orchestrator for PowerShell/.NET ecosystems

Meta-orchestrator that routes ambiguous infrastructure and operations tasks to the right specialist agents, with a strong preference for PowerShell and .NET-based workflows. Understands the roles of Windows infra, Azure, M365, and PowerShell language experts, and coordinates them to deliver end-to-end solutions.

**Use when:** A task smells like IT operations or infrastructure automation but spans multiple areas (AD, DNS/DHCP, Azure, M365, PowerShell modules). This orchestrator chooses and coordinates the best subagents (e.g., windows-infra-admin, azure-infra-engineer, m365-admin, powershell-5.1-expert, powershell-7-expert, powershell-module-architect) with PowerShell as the default implementation language.

### [**knowledge-synthesizer**](knowledge-synthesizer.md) - Knowledge aggregation expert

Knowledge synthesis specialist combining information from multiple sources. Expert in information fusion, conflict resolution, and insight generation. Creates coherent knowledge from diverse inputs.

**Use when:** Combining multiple perspectives, resolving conflicting information, generating comprehensive reports, building knowledge bases, or synthesizing research.

### [**multi-agent-coordinator**](multi-agent-coordinator.md) - Advanced multi-agent orchestration

Advanced orchestration expert handling complex agent ecosystems. Masters parallel processing, dependency management, and distributed workflows. Scales AI operations to enterprise level.

**Use when:** Building large-scale agent systems, implementing parallel workflows, managing agent ecosystems, coordinating distributed tasks, or optimizing throughput.

### [**performance-monitor**](performance-monitor.md) - Agent performance optimization

Performance specialist monitoring and optimizing agent systems. Expert in metrics, bottleneck analysis, and optimization strategies. Ensures peak performance across all agents.

**Use when:** Monitoring agent performance, identifying bottlenecks, optimizing workflows, implementing metrics, or improving system efficiency.

### [**task-distributor**](task-distributor.md) - Task allocation specialist

Task distribution expert optimizing work allocation across agents. Masters load balancing, capability matching, and priority scheduling. Ensures efficient use of all available agents.

**Use when:** Distributing tasks among agents, implementing load balancing, optimizing task queues, managing priorities, or scheduling agent work.

### [**workflow-orchestrator**](workflow-orchestrator.md) - Complex workflow automation

Workflow specialist designing and executing sophisticated AI workflows. Expert in workflow patterns, state management, and process automation. Transforms complex processes into smooth operations.

**Use when:** Designing complex workflows, implementing process automation, managing workflow state, handling long-running processes, or building workflow engines.

### Meta & Orchestration Quick Reference

| If you need to...          | Use this subagent           |
| -------------------------- | --------------------------- |
| Coordinate multiple agents | **agent-organizer**         |
| Manage context efficiently | **context-manager**         |
| Handle system errors       | **error-coordinator**       |
| Combine knowledge sources  | **knowledge-synthesizer**   |
| Scale agent operations     | **multi-agent-coordinator** |
| Monitor performance        | **performance-monitor**     |
| Distribute tasks           | **task-distributor**        |
| Automate workflows         | **workflow-orchestrator**   |

### Common Orchestration Patterns

**Complex Problem Solving:**

- **agent-organizer** for task breakdown
- **task-distributor** for work allocation
- **knowledge-synthesizer** for result combination
- **error-coordinator** for failure handling

**Large-Scale Operations:**

- **multi-agent-coordinator** for ecosystem management
- **performance-monitor** for optimization
- **workflow-orchestrator** for process automation
- **context-manager** for efficiency

**Workflow Automation:**

- **workflow-orchestrator** for process design
- **task-distributor** for work distribution
- **error-coordinator** for resilience
- **performance-monitor** for optimization

**Knowledge Management:**

- **knowledge-synthesizer** for information fusion
- **context-manager** for memory optimization
- **agent-organizer** for research coordination
- **workflow-orchestrator** for knowledge workflows

## Research & Analysis Subagents

Research & Analysis subagents are your investigative powerhouses, specializing in finding, analyzing, and synthesizing information from diverse sources. These experts excel at deep research, competitive intelligence, market analysis, and trend identification. They transform raw information into actionable insights, helping you make informed decisions based on comprehensive analysis and data-driven research.

Use these subagents when you need to:

- **Conduct comprehensive research** on any topic
- **Find specific information** across multiple sources
- **Analyze market dynamics** and opportunities
- **Track competitive intelligence** systematically
- **Identify emerging trends** before others
- **Gather and analyze data** for insights
- **Synthesize complex information** into clear findings
- **Make data-driven decisions** with confidence

### [**research-analyst**](research-analyst.md) - Comprehensive research specialist

Research expert conducting thorough investigations across domains. Masters research methodologies, source validation, and insight synthesis. Delivers comprehensive research reports on any topic.

**Use when:** Conducting deep research, investigating complex topics, validating information, creating research reports, or synthesizing multiple sources.

### [**search-specialist**](search-specialist.md) - Advanced information retrieval expert

Search optimization expert finding needles in information haystacks. Masters advanced search techniques, query optimization, and source discovery. Locates hard-to-find information efficiently.

**Use when:** Finding specific information, optimizing search queries, discovering new sources, conducting systematic searches, or retrieving obscure data.

### [**trend-analyst**](trend-analyst.md) - Emerging trends and forecasting expert

Trend identification specialist spotting patterns before they become obvious. Expert in trend analysis, future forecasting, and weak signal detection. Helps organizations stay ahead of change.

**Use when:** Identifying emerging trends, forecasting future developments, analyzing pattern changes, monitoring industry evolution, or planning strategic responses.

### [**competitive-analyst**](competitive-analyst.md) - Competitive intelligence specialist

Competitive intelligence expert analyzing competitor strategies and market positioning. Masters competitive benchmarking, SWOT analysis, and strategic recommendations. Provides actionable competitive insights.

**Use when:** Analyzing competitors, benchmarking performance, identifying competitive advantages, monitoring competitor moves, or developing competitive strategies.

### [**market-researcher**](market-researcher.md) - Market analysis and consumer insights

Market analysis specialist understanding market dynamics and consumer behavior. Expert in market sizing, segmentation, and opportunity identification. Reveals market opportunities and risks.

**Use when:** Analyzing market opportunities, understanding consumer behavior, sizing markets, identifying segments, or evaluating market entry strategies.

### [**data-researcher**](data-researcher.md) - Data discovery and analysis expert

Data investigation specialist extracting insights from complex datasets. Masters data mining, statistical analysis, and pattern recognition. Transforms raw data into meaningful findings.

**Use when:** Analyzing datasets, discovering data patterns, performing statistical analysis, mining for insights, or investigating data anomalies.

### Research & Analysis Quick Reference

| If you need to...         | Use this subagent       |
| ------------------------- | ----------------------- |
| Deep topic research       | **research-analyst**    |
| Find specific information | **search-specialist**   |
| Identify future trends    | **trend-analyst**       |
| Analyze competitors       | **competitive-analyst** |
| Understand markets        | **market-researcher**   |
| Analyze data patterns     | **data-researcher**     |

### Common Research Patterns

**Market Intelligence:**

- **market-researcher** for market analysis
- **competitive-analyst** for competitor insights
- **trend-analyst** for future directions
- **data-researcher** for data validation

**Strategic Research:**

- **research-analyst** for comprehensive analysis
- **search-specialist** for information gathering
- **trend-analyst** for future planning
- **competitive-analyst** for positioning

**Data-Driven Insights:**

- **data-researcher** for data analysis
- **market-researcher** for market data
- **trend-analyst** for pattern identification
- **research-analyst** for synthesis

**Competitive Intelligence:**

- **competitive-analyst** for competitor analysis
- **market-researcher** for market context
- **search-specialist** for information discovery
- **trend-analyst** for industry evolution

---

## Getting Started

**Code Quality & DevOps:**

1. **Choose the right subagent** based on your current task
2. **Provide clear context** about your project and what you need
3. **Let the subagent run diagnostics** — most will automatically analyze your code
4. **Follow the prioritized feedback** — fix Critical issues first, then High, then Medium
5. **Iterate** — re-run the subagent after making changes to verify fixes

Each subagent comes with:

- Deep expertise in their specific domain
- Automated diagnostic commands and tool integrations
- Prioritized output (Critical → High → Medium → Low)
- Specific fix examples and code snippets
- Awareness of common anti-patterns and pitfalls

**Core Development:**

1. **Choose the right subagent** based on your specific needs
2. **Provide clear context** about your project requirements
3. **Specify your tech stack** preferences if any
4. **Describe your constraints** (performance, scalability, timeline)
5. **Let the subagent guide you** through best practices and implementation

Each subagent comes with:

- Deep expertise in their domain
- Knowledge of current best practices
- Ability to work with your existing codebase
- Focus on clean, maintainable code
- Understanding of production requirements

**Language Specialists:**

1. **Identify your technology stack** and choose the appropriate specialist
2. **Describe your project context** including existing code and constraints
3. **Specify your goals** (learning, optimization, implementation)
4. **Share relevant code** for context-aware assistance
5. **Follow the specialist's guidance** for best practices

**Infrastructure:**

1. **Assess your infrastructure needs** and current challenges
2. **Choose the appropriate specialist** based on your requirements
3. **Provide context** about your environment and constraints
4. **Share existing configurations** if applicable
5. **Follow the specialist's recommendations** for best practices

**Quality & Security:**

1. **Identify quality concerns** in your application
2. **Choose appropriate specialists** for your needs
3. **Provide application context** and existing issues
4. **Share relevant code and logs** for analysis
5. **Implement recommended improvements** systematically

**Data & AI:**

1. **Define your data/AI objectives** clearly
2. **Assess your data landscape** and requirements
3. **Choose appropriate specialists** for your needs
4. **Provide data context** and constraints
5. **Follow best practices** for implementation

**Developer Experience:**

1. **Identify pain points** in your development process
2. **Choose relevant specialists** for improvement
3. **Analyze current state** of tools and workflows
4. **Implement improvements** incrementally
5. **Measure impact** on developer productivity

**Specialized Domains:**

1. **Understand domain requirements** and constraints
2. **Choose appropriate specialists** for your domain
3. **Consider regulatory compliance** if applicable
4. **Plan for domain-specific challenges** early
5. **Leverage domain expertise** throughout development

**Business & Product:**

1. **Identify business objectives** clearly
2. **Choose specialists** that align with goals
3. **Provide business context** and constraints
4. **Foster collaboration** between specialists
5. **Measure business impact** continuously

**Meta & Orchestration:**

1. **Map your workflow** and identify complexity
2. **Choose orchestration strategy** based on needs
3. **Design agent interactions** and dependencies
4. **Implement monitoring** from the start
5. **Iterate and optimize** based on performance

**Research & Analysis:**

1. **Define research objectives** clearly
2. **Choose appropriate specialists** for your needs
3. **Provide context and constraints** for focused research
4. **Validate findings** through multiple sources
5. **Apply insights** to decision-making

---

## Best Practices

**Code Quality & DevOps:**

- **Review every change:** Run **code-reviewer** on all code modifications, no exceptions
- **Test first:** Use **tdd-guide** before writing implementation code
- **Security is not optional:** Run **security-reviewer** on anything touching user input, auth, or money
- **Minimal diffs for fixes:** Build resolvers make the smallest possible changes — don't refactor while fixing
- **Document as you go:** Use **doc-updater** after major features, not just before releases
- **Clean regularly:** Schedule **refactor-cleaner** sessions to prevent technical debt accumulation
- **Language-specific reviews:** Always use **go-reviewer** or **python-reviewer** in addition to the general reviewer

**Core Development:**

- **Start with architecture:** Use architects (API, GraphQL, Microservices) before implementation
- **Iterate frequently:** Work with subagents in short cycles for better results
- **Combine expertise:** Use multiple subagents for complex projects
- **Follow conventions:** Each subagent knows the best practices for their domain
- **Think production-ready:** All subagents consider scalability, security, and maintenance

**Language Specialists:**

- **Use language idioms:** Each specialist knows the idiomatic way to write code
- **Leverage ecosystem tools:** Specialists understand the full ecosystem
- **Follow framework conventions:** Each framework has its own best practices
- **Consider performance early:** Language-specific optimizations matter
- **Think about maintenance:** Write code that future developers will understand

**Infrastructure:**

- **Start with architecture:** Design before implementation
- **Automate everything:** Manual processes don't scale
- **Security first:** Build security into every layer
- **Monitor proactively:** Observability prevents incidents
- **Document thoroughly:** Future you will thank you
- **Test infrastructure:** Infrastructure code needs testing too
- **Plan for failure:** Design for resilience
- **Iterate continuously:** Infrastructure evolves with needs

**Quality & Security:**

- **Shift left:** Catch issues early in development
- **Automate repetitively:** Manual testing doesn't scale
- **Security throughout:** Security isn't an afterthought
- **Performance matters:** Users expect fast applications
- **Accessibility included:** Design for all users
- **Test continuously:** Quality is ongoing
- **Monitor production:** Learn from real usage
- **Document findings:** Share knowledge with the team

**Data & AI:**

- **Start with data quality:** Good models need good data
- **Iterate quickly:** ML is experimental by nature
- **Monitor everything:** Models drift, data changes
- **Version control:** Track data, code, and models
- **Document thoroughly:** ML systems are complex
- **Test rigorously:** Validate models before production
- **Scale gradually:** Start small, prove value
- **Stay ethical:** Consider AI's impact

**Developer Experience:**

- **Automate repetitive tasks:** Time saved compounds
- **Document everything:** Future developers will thank you
- **Incremental improvements:** Small changes add up
- **Measure impact:** Track productivity gains
- **Tool standardization:** Consistency reduces friction
- **Developer feedback:** Listen to your users
- **Continuous improvement:** DX is never "done"
- **Share knowledge:** Spread best practices

**Specialized Domains:**

- **Domain knowledge matters:** Understand the field deeply
- **Compliance is critical:** Many domains have regulations
- **Security first:** Specialized domains often handle sensitive data
- **Performance requirements:** Each domain has unique needs
- **User expectations:** Domain users have specific workflows
- **Industry standards:** Follow established patterns
- **Stay updated:** Specialized domains evolve rapidly
- **Test thoroughly:** Domain-specific edge cases matter

**Business & Product:**

- **User-centric approach:** Always consider the end user
- **Data-driven decisions:** Measure and validate
- **Clear communication:** Bridge technical and business
- **Iterative improvement:** Small steps, big impact
- **Stakeholder alignment:** Keep everyone informed
- **Documentation matters:** Knowledge should be accessible
- **Legal compliance:** Consider regulations early
- **Business value focus:** Technology serves business goals

**Meta & Orchestration:**

- **Start simple:** Build complexity incrementally
- **Monitor everything:** Visibility prevents issues
- **Handle failures gracefully:** Expect and plan for errors
- **Optimize context usage:** Context is precious
- **Document workflows:** Complex systems need clarity
- **Test at scale:** Small tests miss orchestration issues
- **Version workflows:** Track changes over time
- **Measure impact:** Quantify orchestration benefits

**Research & Analysis:**

- **Start with clear questions:** Focus drives better research
- **Use multiple sources:** Single sources can mislead
- **Validate information:** Trust but verify
- **Document methodology:** Research should be reproducible
- **Consider biases:** All sources have perspectives
- **Synthesize findings:** Raw data needs interpretation
- **Update regularly:** Research has expiration dates
- **Share insights:** Knowledge multiplies when shared
