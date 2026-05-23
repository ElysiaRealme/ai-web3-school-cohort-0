# Week 1 Notion Source Read Log

Date: 2026-05-23

Source:

- https://ethpanda.notion.site/Week-1-AI-Web3-354bbd63be878198afc4f155b5c3a69f

## Local Read Attempts

1. Direct HTTP to the `ethpanda.notion.site` URL loaded only a lightweight shell and was not enough for planning.
2. `www.notion.so` URL variants returned a larger page payload.
3. Notion page chunk APIs returned structured page data.
4. Playwright browser access succeeded:
   - Page URL: `https://ethpanda.notion.site/Week-1-AI-Web3-354bbd63be878198afc4f155b5c3a69f`
   - Page title: `Week 1｜共学营：AI 与 Web3 基础知识`
   - Extraction method: browser `document.body.innerText` after direct page load.

## Page Structure Extracted

The page is organized around Week 1 AI and Web3 foundations. The core learning goals are:

- Build shared language for LLM, prompt, workflow, agent, tool use, AI coding, wallet, signature, transaction, gas, smart contract, testnet, and block explorer.
- Complete one AI tool practice, one testnet or contract interaction, and one minimal AI x Web3 cross-over experiment.
- Develop safety awareness around permissions, human confirmation, logs, proof material, and failure recovery.

The suggested learning order is:

1. Diagnose whether the learner is stronger in AI, Web3, or neither.
2. Patch the weaker side first.
3. Complete one AI practice and one Web3 practice.
4. Connect AI output, human review, wallet confirmation, chain execution, and explorer verification into one workflow.
5. Package concept notes and process records as proof.

## Modules

### Module A: AI Basics

Coverage:

- LLM working model.
- Context window, system instructions, prompts, and tool calls.
- LLM API basics: model, messages, temperature, max tokens.
- Prompt vs workflow vs agent.
- AI coding tools and their limits.
- Verification risks: factual errors, fake or stale references, reasoning drift, over-execution, tool misuse.
- Agent components: state, memory, MCP, skills, tool calling, tracing, guardrails, handoff, recovery.

Practice:

- Build a personal learning agent.
- Create a GitHub repo as the learning workspace.
- Use an agent to generate an interactive learning artifact.

### Module B: Web3 Basics

Coverage:

- Account, address, wallet, private key, and seed phrase.
- Signature, approval, transaction, gas, L1/L2, testnet, block explorer, receipt.
- Smart contracts as public execution and state.
- Account abstraction, smart accounts, multisig, Safe, ERC-4337, OpenZeppelin.
- AI-native account safety boundaries: no private key or seed phrase access, limited permissions, session keys, and human confirmation.

Practice:

- Create a test wallet.
- Send a testnet transaction.
- Record transaction hash, status, gas, block height, and explorer link.
- Deploy or call a minimal smart contract.
- Compare EOA, smart account, and multisig.

### Module C: Minimal AI x Web3 Cross Experiment

Coverage:

- AI generates instructions or scripts.
- Human reviews the output.
- Wallet confirmation remains manual.
- Chain execution is verified through explorer records.

Practice:

- Explain a transaction or ABI with AI and manually validate the explanation.
- Draw the AI generation -> human review -> wallet confirmation -> chain execution -> explorer verification flow.
- Package proof and boundaries.

## Advanced / Optional Tracks

- Agent workflow and Ethereum-related skills.
- Web3 engineering and chain execution.
- AI adaptation, LoRA / PEFT, and controllability.
- Blockchain protocol basics: consensus, EVM, gas, execution layer.
- Minimal cross-over experiment upgrades with logs, failure points, rollback strategy, and human confirmation nodes.
- Industry observation and follow-list building for AI x Web3 / Ethereum / Crypto AI.

## Route Impact

This source supports the current 00X route in `tasks/week1-00x-learning-route.md`, especially:

- 005-008 for AI foundations and concept cards.
- 009-013 for Web3 foundations, contract practice, testnet proof, and account model comparison.
- 014-016 for AI x Web3 workflow, constrained assistant design, and interactive artifact.
- 017-020 for industry observation, proof pack, and public learning summary.
