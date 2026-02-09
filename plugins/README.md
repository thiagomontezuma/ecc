# Plugins and Marketplaces

Plugins extend Claude Code with new tools and capabilities. This guide covers installation only - see the [full article](https://x.com/affaanmustafa/status/2012378465664745795) for when and why to use them.

---

## Marketplaces

Marketplaces are repositories of installable plugins.

### Adding a Marketplace

```bash
# Add official Anthropic marketplace
claude plugin marketplace add https://github.com/anthropics/claude-plugins-official

# Add community marketplaces
claude plugin marketplace add https://github.com/mixedbread-ai/mgrep
```

### Recommended Marketplaces

| Marketplace             | Source                               |
| ----------------------- | ------------------------------------ |
| claude-plugins-official | `anthropics/claude-plugins-official` |
| claude-code-plugins     | `anthropics/claude-code`             |
| Mixedbread-Grep         | `mixedbread-ai/mgrep`                |
| `supabase/agent-skills` |                                      |
| `wshobson/agents`       |                                      |

---

## Installing Plugins

```bash
# Open plugins browser
/plugins

# Or install directly
claude plugin install typescript-lsp@claude-plugins-official
```

### Recommended Plugins

**Development:**

- `typescript-lsp` - TypeScript intelligence
- `pyright-lsp` - Python type checking
- `hookify` - Create hooks conversationally
- `code-simplifier` - Refactor code

**Code Quality:**

- `code-review` - Code review
- `pr-review-toolkit` - PR automation
- `security-guidance` - Security checks

**Search:**

- `mgrep` - Enhanced search (better than ripgrep)
- `context7` - Live documentation lookup

**Workflow:**

- `commit-commands` - Git workflow
- `frontend-design` - UI patterns
- `feature-dev` - Feature development

<<<<<<< HEAD
**Supabase**

- `postgres-best-practices@supabase-agent-skills`

**General**

- `accessibility-compliance`
- `agent-orchestration`
- `api-scaffolding`
- `api-testing-observability`
- `application-performance`
- `arm-cortex-microcontrollers/agents`
- `backend-api-security/agents`
- `backend-development`
- `blockchain-web3`
- `business-analytics`
- `c4-architecture`
- `cicd-automation`
- `cloud-infrastructure`
- `code-documentation`
- `code-refactoring`
- `code-review-ai`
- `codebase-cleanup`
- `comprehensive-review`
- `conductor`
- `content-marketing/agents`
- `context-management`
- `customer-sales-automation/agents`
- `data-engineering`
- `data-validation-suite/agents`
- `database-cloud-optimization`
- `database-design`
- `database-migrations`
- `debugging-toolkit`
- `dependency-management`
- `deployment-strategies/agents`
- `deployment-validation`
- `developer-essentials`
- `distributed-debugging`
- `documentation-generation`
- `dotnet-contribution`
- `error-debugging`
- `error-diagnostics`
- `framework-migration`
- `frontend-mobile-development`
- `frontend-mobile-security`
- `full-stack-orchestration`
- `functional-programming/agents`
- `game-development`
- `git-pr-workflows`
- `hr-legal-compliance`
- `incident-response`
- `javascript-typescript`
- `julia-development/agents`
- `jvm-languages/agents`
- `kubernetes-operations`
- `llm-application-dev`
- `machine-learning-ops`
- `multi-platform-apps`
- `observability-monitoring`
- `payment-processing`
- `performance-testing-review`
- `python-development`
- `quantitative-trading`
- `reverse-engineering`
- `security-compliance`
- `security-scanning`
- `seo-analysis-monitoring/agents`
- `seo-content-creation/agents`
- `seo-technical-optimization/agents`
- `shell-scripting`
- `startup-business-analyst`
- `systems-programming`
- `tdd-workflows`
- `team-collaboration`
- `ui-design`
- `unit-testing`
- `web-scripting/agents`

=======

> > > > > > > upstream/main

---

## Quick Setup

```bash
# Add marketplaces
claude plugin marketplace add https://github.com/anthropics/claude-plugins-official
claude plugin marketplace add https://github.com/mixedbread-ai/mgrep

# Open /plugins and install what you need
```

---

## Plugin Files Location

```
~/.claude/plugins/
|-- cache/                    # Downloaded plugins
|-- installed_plugins.json    # Installed list
|-- known_marketplaces.json   # Added marketplaces
|-- marketplaces/             # Marketplace data
```
