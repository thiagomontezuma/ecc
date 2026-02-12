# Global Claude Code Configuration

This is the global CLAUDE.md for all projects. It configures plugins, hooks, agents, skills, rules, and behavioral guidelines.

---

## Behavioral Guidelines

Behavioral guidelines to reduce common LLM coding mistakes. Merge with project-specific instructions as needed.

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

### 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

### 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

### 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

### 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:
```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

**These guidelines are working if:** fewer unnecessary changes in diffs, fewer rewrites due to overcomplication, and clarifying questions come before implementation rather than after mistakes.

---

## Critical Rules

### 1. Code Organization

- Many small files over few large files
- High cohesion, low coupling
- 200-400 lines typical, 800 max per file
- Organize by feature/domain, not by type

### 2. Code Style

- No emojis in code, comments, or documentation
- Immutability always - never mutate objects or arrays
- No console.log in production code
- Proper error handling with try/catch
- Input validation with Zod or similar

### 3. Testing

- TDD: Write tests first
- 80% minimum coverage
- Unit tests for utilities
- Integration tests for APIs
- E2E tests for critical flows

### 4. Security

- No hardcoded secrets
- Environment variables for sensitive data
- Validate all user inputs
- Parameterized queries only
- CSRF protection enabled

---

## Model & Settings

- **Default model**: opus
- **Platform**: macOS (Darwin)
- **Extended thinking**: Enabled by default (up to 31,999 tokens)
- **Toggle thinking**: Option+T (macOS)
- **Verbose thinking output**: Ctrl+O

---

## Installed Plugins (16 active)

All plugins are user-scoped and loaded from `~/.claude/plugins/cache/`.

| Plugin | Source | Purpose |
|--------|--------|---------|
| hookify | claude-plugins-official | User-configurable hooks from `.local.md` files |
| code-simplifier | claude-plugins-official | Simplify and refine code for clarity and maintainability |
| code-review | claude-plugins-official | Automated code review with specialized agents |
| pr-review-toolkit | claude-plugins-official | PR review agents (comments, tests, types, silent failures) |
| security-guidance | claude-plugins-official | Security reminder hook on Edit/Write operations |
| context7 | claude-plugins-official | MCP server for up-to-date library documentation (Upstash Context7) |
| commit-commands | claude-plugins-official | Git workflow: commit, push, PR creation, branch cleanup |
| frontend-design | claude-plugins-official | Distinctive, production-grade UI/UX implementation |
| feature-dev | claude-plugins-official | Guided feature development with architecture focus |
| ralph-loop | claude-plugins-official | Self-referential AI loops for persistent task completion |
| explanatory-output-style | claude-plugins-official | Educational insights on implementation choices |
| postgres-best-practices | supabase-agent-skills | Comprehensive Postgres performance optimization (31 rules) |
| ecc | ecc | Battle-tested agents, skills, hooks, commands, and rules (v1.4.1) |
| superpowers | claude-plugins-official | Core skills: TDD, debugging, collaboration, verification (v4.2.0) |
| claude-md-management | claude-plugins-official | CLAUDE.md auditing and improvement |
| claude-code-setup | claude-plugins-official | Codebase automation recommendations |

---

## MCP Servers

### Context7 (Library Documentation)
- **Purpose**: Fetch up-to-date documentation and code examples for any library
- **Usage**: Use `resolve-library-id` to find a library, then `query-docs` to get docs
- **When to use**: Before implementing with unfamiliar SDKs, frameworks, or APIs
- **Command**: `npx -y @upstash/context7-mcp`

---

## Active Hooks

Hooks fire automatically on specific events. These are contributed by the installed plugins.

### PreToolUse Hooks
| Hook | Trigger | Behavior |
|------|---------|----------|
| Block dev servers outside tmux | `npm/pnpm/yarn/bun run dev` | BLOCKS execution; requires tmux session |
| Tmux reminder | `npm/pnpm/yarn install/test`, `cargo build`, `make`, `docker`, `pytest`, `vitest`, `playwright` | Warning to use tmux for persistence |
| Git push review | `git push` | Reminder to review changes before pushing |
| Block unnecessary .md files | Write to `.md`/`.txt` (except README, CLAUDE, AGENTS, CONTRIBUTING) | BLOCKS creation of random doc files |
| Suggest manual compaction | Any Edit/Write | Suggests compaction at logical intervals |
| Security reminder | Edit/Write/MultiEdit | Warns about potential security issues in file edits |
| Hookify rules | All PreToolUse | Runs user-configured hookify rules from `.local.md` files |

### PostToolUse Hooks
| Hook | Trigger | Behavior |
|------|---------|----------|
| PR URL logger | Bash with `gh pr create` | Logs PR URL and provides review command |
| Prettier auto-format | Edit on `.ts`/`.tsx`/`.js`/`.jsx` files | Auto-formats with Prettier after edits |
| TypeScript checker | Edit on `.ts`/`.tsx` files | Runs `tsc --noEmit` and reports errors for the edited file |
| Console.log warning | Edit on `.ts`/`.tsx`/`.js`/`.jsx` files | Warns about `console.log` statements |
| Hookify rules | All PostToolUse | Runs user-configured hookify rules |

### Stop Hooks
| Hook | Trigger | Behavior |
|------|---------|----------|
| Console.log check | Every response end | Checks modified files for leftover `console.log` |
| Ralph loop | Every response end | Continues self-referential loop if active |
| Hookify rules | Every stop | Runs user-configured hookify rules |

### Session Lifecycle Hooks
| Hook | Event | Behavior |
|------|-------|----------|
| ECC session start | SessionStart | Loads previous context and detects package manager |
| Superpowers session start | SessionStart | Initializes superpowers skill system |
| Explanatory mode | SessionStart | Activates educational insights mode |
| ECC session end | SessionEnd | Persists session state |
| Pattern extraction | SessionEnd | Evaluates session for extractable patterns |
| Pre-compact save | PreCompact | Saves state before context compaction |

### Other Hooks
| Hook | Event | Behavior |
|------|-------|----------|
| Hookify prompt submit | UserPromptSubmit | Runs user-configured hookify rules on prompt submission |

---

## Registered Agents

These agents are available via the Task tool with their respective plugin prefixes.

### ECC Agents (via `ecc:` prefix)
| Agent | Purpose |
|-------|---------|
| architect | System design, boundaries, interfaces, architectural decisions |
| build-error-resolver | Build/TypeScript error resolution with minimal diffs |
| code-reviewer | Comprehensive code review (bugs, security, quality, conventions) |
| doc-updater | Documentation and codemap maintenance |
| e2e-runner | End-to-end testing with Playwright |
| planner | Implementation planning, risk assessment, step-by-step plans |
| refactor-cleaner | Dead code cleanup, consolidation, unused dependency removal |
| security-reviewer | Vulnerability detection, OWASP Top 10, authn/authz review |
| tdd-guide | Test-driven development enforcement (80%+ coverage) |

### Feature Dev Agents (via `feature-dev:` prefix)
| Agent | Purpose |
|-------|---------|
| code-reviewer | Bug, logic, security, and quality review with confidence filtering |
| code-explorer | Deep codebase analysis, execution path tracing, architecture mapping |
| code-architect | Feature architecture design with implementation blueprints |

### PR Review Toolkit Agents (via `pr-review-toolkit:` prefix)
| Agent | Purpose |
|-------|---------|
| code-reviewer | Adherence to guidelines and style guides |
| silent-failure-hunter | Identify silent failures and inadequate error handling |
| code-simplifier | Simplify code for clarity while preserving functionality |
| comment-analyzer | Verify comment accuracy and long-term maintainability |
| pr-test-analyzer | Test coverage quality and completeness |
| type-design-analyzer | Type design analysis for encapsulation and invariants |

### Superpowers Agents (via `superpowers:` prefix)
| Agent | Purpose |
|-------|---------|
| code-reviewer | Reviews against original plan and coding standards |

### Additional 130+ ECC Agent Definitions
The ECC plugin includes 130+ specialist agent definitions at `~/.claude/plugins/cache/ecc/ecc/1.4.1/agents/` covering:
- **Language experts**: typescript-pro, python-pro, golang-pro, rust-engineer, php-pro, java-architect, etc.
- **Domain specialists**: database-optimizer, devops-engineer, ml-engineer, security-auditor, etc.
- **Architecture roles**: cloud-architect, microservices-architect, graphql-architect, etc.
- **Business roles**: product-manager, business-analyst, project-manager, etc.

---

## Available Skills

Skills are invoked via `/plugin:skill-name` syntax or triggered automatically by the plugins.

### Superpowers Skills (`/superpowers:*`)
| Skill | Trigger Pattern | Purpose |
|-------|----------------|---------|
| brainstorming | Before creative/feature work | Explore intent, requirements, and design before implementation |
| test-driven-development | Before writing implementation code | TDD workflow enforcement |
| systematic-debugging | On bugs/test failures | Root-cause analysis before proposing fixes |
| writing-plans | When planning multi-step tasks | Structured implementation plans |
| executing-plans | When executing a written plan | Plan execution with review checkpoints |
| dispatching-parallel-agents | 2+ independent tasks | Parallel agent orchestration |
| using-git-worktrees | Feature isolation | Create isolated git worktrees |
| verification-before-completion | Before claiming completion | Evidence-based verification |
| requesting-code-review | After completing features | Validate work meets requirements |
| receiving-code-review | When receiving review feedback | Technical rigor in responding to reviews |
| finishing-a-development-branch | After implementation complete | Merge, PR, or cleanup guidance |
| subagent-driven-development | Executing plans with independent tasks | Multi-agent parallel implementation |
| writing-skills | Creating/editing skills | Skill authoring best practices |
| using-superpowers | Session start | How to find and use skills |

### ECC Skills (`/ecc:*`)
| Skill | Purpose |
|-------|---------|
| plan | Requirements assessment, risk analysis, step-by-step implementation plan |
| tdd | Test-driven development workflow with 80%+ coverage |
| e2e | Generate and run E2E tests with Playwright |
| security-review | Comprehensive security checklist and patterns |
| configure-ecc | Interactive installer for ECC components |
| instinct-status | Show learned instincts with confidence levels |
| instinct-export | Export instincts for sharing |
| instinct-import | Import instincts from other sources |
| evolve | Cluster instincts into skills/commands/agents |
| skill-create | Extract coding patterns from git history |
| continuous-learning | Extract reusable patterns from sessions |
| continuous-learning-v2 | Instinct-based learning with confidence scoring |
| strategic-compact | Suggests compaction at logical intervals |
| iterative-retrieval | Progressive context retrieval refinement |
| eval-harness | Evaluation framework for eval-driven development |
| go-build | Fix Go build errors and linter issues |
| go-review | Go code review for idiomatic patterns |
| go-test | TDD workflow for Go with table-driven tests |
| python-review | Python code review for PEP 8, type hints, security |
| django-security | Django security best practices |
| django-patterns | Django architecture, DRF, ORM best practices |
| django-tdd | Django testing with pytest-django |
| springboot-patterns | Spring Boot architecture patterns |
| springboot-security | Spring Security best practices |
| springboot-tdd | TDD for Spring Boot with JUnit 5 |
| golang-patterns | Idiomatic Go patterns and best practices |
| golang-testing | Go testing with TDD methodology |
| python-patterns | Pythonic idioms, PEP 8, type hints |
| python-testing | Python testing with pytest |
| frontend-patterns | React, Next.js, state management |
| backend-patterns | Node.js, Express, Next.js API routes |
| postgres-patterns | PostgreSQL optimization and schema design |
| clickhouse-io | ClickHouse analytics and data engineering |
| coding-standards | Universal TypeScript/JavaScript/React/Node.js standards |
| jpa-patterns | JPA/Hibernate patterns for Spring Boot |
| tdd-workflow | TDD enforcement with 80%+ coverage |
| nutrient-document-processing | Document processing via Nutrient DWS API |

### Other Plugin Skills
| Skill | Plugin | Purpose |
|-------|--------|---------|
| `/frontend-design:frontend-design` | frontend-design | Distinctive, production-grade frontend interfaces |
| `/feature-dev:feature-dev` | feature-dev | Guided feature development with codebase understanding |
| `/code-review:code-review` | code-review | Code review a pull request |
| `/pr-review-toolkit:review-pr` | pr-review-toolkit | Comprehensive PR review using specialized agents |
| `/commit-commands:commit` | commit-commands | Create a git commit |
| `/commit-commands:commit-push-pr` | commit-commands | Commit, push, and open a PR |
| `/commit-commands:clean_gone` | commit-commands | Clean up [gone] branches |
| `/ralph-loop:ralph-loop` | ralph-loop | Start persistent self-referential loop |
| `/ralph-loop:cancel-ralph` | ralph-loop | Cancel active Ralph Loop |
| `/hookify:hookify` | hookify | Create hooks from conversation analysis |
| `/hookify:list` | hookify | List configured hookify rules |
| `/hookify:configure` | hookify | Enable/disable hookify rules |
| `/hookify:writing-rules` | hookify | Guide on hookify rule syntax |
| `/claude-md-management:revise-claude-md` | claude-md-management | Update CLAUDE.md with session learnings |
| `/claude-md-management:claude-md-improver` | claude-md-management | Audit and improve CLAUDE.md files |
| `/claude-code-setup:claude-automation-recommender` | claude-code-setup | Analyze codebase and recommend automations |
| `/postgres-best-practices:postgres-best-practices` | postgres-best-practices | Postgres optimization best practices |
| `/supabase-postgres-best-practices` | supabase-agent-skills | Postgres optimization (skill directory) |
| `/keybindings-help` | built-in | Customize keyboard shortcuts |

---

## ECC Commands (Slash Commands)

Available via `/ecc:command-name`:

| Command | Purpose |
|---------|---------|
| build-fix | Fix build/toolchain/type failures |
| code-review | Review code for quality and standards |
| e2e | Generate and run end-to-end tests |
| eval | Evaluate code/session quality |
| evolve | Evolve instincts into skills/agents |
| go-build | Fix Go build errors |
| go-review | Go code review |
| go-test | Go TDD workflow |
| instinct-export | Export learned instincts |
| instinct-import | Import instincts |
| instinct-status | Show instinct confidence levels |
| learn | Extract patterns from current session |
| multi-backend | Multi-agent backend implementation |
| multi-execute | Multi-agent parallel execution |
| multi-frontend | Multi-agent frontend implementation |
| multi-plan | Multi-agent planning |
| multi-workflow | Multi-agent workflow orchestration |
| orchestrate | Agent orchestration |
| plan | Create implementation plan (WAIT for user CONFIRM) |
| python-review | Python code review |
| refactor-clean | Dead code cleanup and consolidation |
| sessions | Session management |
| setup-pm | Setup project management |
| skill-create | Extract patterns from git history into SKILL.md |
| tdd | Test-driven development workflow |
| test-coverage | Analyze test coverage |
| update-codemaps | Update documentation codemaps |
| update-docs | Update project documentation |
| verify | Verify completion with evidence |
| checkpoint | Create a checkpoint |
| autopush | Auto-push commits |
| pm2 | PM2 process management |

---

## Rules & Guidelines

### Coding Style (from ECC rules)
- **Immutability**: ALWAYS create new objects, NEVER mutate existing ones
- **File size**: 200-400 lines typical, 800 max; many small files > few large files
- **Functions**: Keep under 50 lines, focused on a single responsibility
- **Nesting**: Max 4 levels deep
- **Error handling**: Handle errors explicitly at every level; never silently swallow errors
- **Input validation**: Validate at system boundaries; never trust external data
- **Organization**: By feature/domain, not by type
- **No hardcoded values**: Use constants or config

### Security (from ECC rules)
Before ANY commit:
- No hardcoded secrets (API keys, passwords, tokens)
- All user inputs validated
- SQL injection prevention (parameterized queries)
- XSS prevention (sanitized HTML)
- CSRF protection enabled
- Authentication/authorization verified
- Rate limiting on endpoints
- Error messages don't leak sensitive data

If security issue found: STOP immediately, use security-reviewer agent, fix before continuing.

### Git Workflow (from ECC rules)
- **Commit format**: `<type>: <description>` (types: feat, fix, refactor, docs, test, chore, perf, ci)
- **PR workflow**: Analyze full commit history, use `git diff [base-branch]...HEAD`, include test plan
- **Feature workflow**: Plan first → TDD approach → Code review → Commit & Push

### Testing (from ECC rules)
- **Minimum coverage**: 80%
- **Required test types**: Unit, Integration, E2E
- **TDD workflow**: Write test (RED) → Run and fail → Implement (GREEN) → Run and pass → Refactor (IMPROVE) → Verify coverage

### Performance (from ECC rules)
- **Model routing**: Use haiku for lightweight tasks, sonnet for standard work, opus for deep analysis
- **Context window**: Avoid last 20% for large refactors and multi-file features
- **Build failures**: Use build-error-resolver agent, fix incrementally

### Patterns (from ECC rules)
- **Repository pattern**: Encapsulate data access behind consistent interfaces
- **API response format**: Consistent envelope with success indicator, data, error message, pagination metadata
- **Skeleton projects**: Search for battle-tested starter projects before building from scratch

---

## Postgres Best Practices (Supabase Skill)

Comprehensive optimization across 8 categories with 31 individual rules:

1. **Query Performance** (5 rules): Missing indexes, index types, composite indexes, covering indexes, partial indexes
2. **Connection Management** (4 rules): Idle timeouts, connection limits, pooling, prepared statements
3. **Security & RLS** (3 rules): Least privilege, RLS basics, RLS performance
4. **Schema Design** (5 rules): Data types, FK indexes, partitioning, primary keys, lowercase identifiers
5. **Concurrency & Locking** (4 rules): Short transactions, deadlock prevention, advisory locks, skip locked
6. **Data Access Patterns** (4 rules): Batch inserts, N+1 elimination, cursor pagination, upsert
7. **Monitoring & Diagnostics** (3 rules): pg_stat_statements, vacuum/analyze, explain analyze
8. **Advanced Features** (2 rules): JSONB indexing, full-text search

Detailed rules stored at `~/.claude/skills/supabase-postgres-best-practices/rules/`.

---

## Behavioral Guidelines

### Delegation Strategy
- **Delegate** multi-file implementations, refactors, debugging, reviews, and planning to specialized agents
- **Work directly** on small clarifications, quick status checks, simple single-file edits
- **Use Context7 MCP** before implementing with unfamiliar SDKs/frameworks/APIs
- **Parallelize** independent tasks that each take >30 seconds

### Verification
- Verify before claiming completion with evidence-based confidence
- For small changes (<5 files): lightweight verification
- For standard changes: run tests, check types
- For large/security changes: comprehensive agent-driven review

### Proactive Agent Usage
These agents/skills should be used proactively (without user asking):
- **code-reviewer**: After writing or modifying code
- **security-reviewer**: After code handling user input, auth, API endpoints, sensitive data
- **tdd-guide**: When writing new features or fixing bugs
- **build-error-resolver**: When build fails
- **silent-failure-hunter**: After code with error handling, catch blocks, fallback logic
- **verification-before-completion**: Before claiming work is done

### Ralph Loop
When active (triggered by `/ralph-loop:ralph-loop`), Claude continues working autonomously through a self-referential loop until all tasks are complete and verified. The stop hook keeps the loop going.

---

## Language-Specific Rules

The ECC plugin includes language-specific rules at `~/.claude/plugins/cache/ecc/ecc/1.4.1/rules/`:

- **Common**: coding-style, security, git-workflow, testing, performance, patterns, hooks, agents
- **TypeScript**: coding-style, security, testing, patterns, hooks
- **Python**: coding-style, security, testing, patterns, hooks
- **Go**: coding-style, security, testing, patterns, hooks

These rules are loaded contextually based on the project being worked on.

---

## File Paths Reference

| Path | Purpose |
|------|---------|
| `~/.claude/settings.json` | Main settings (model, enabled plugins) |
| `~/.claude/CLAUDE.md` | This file (global instructions) |
| `~/.claude/plugins/` | Plugin cache and marketplace configurations |
| `~/.claude/skills/` | Custom skill definitions |
| `~/.claude/plans/` | Session planning documents |
| `~/.claude/projects/` | Per-project session data and memory |
| `~/.claude/memory/` | Auto-memory directory (MEMORY.md persists across sessions) |
