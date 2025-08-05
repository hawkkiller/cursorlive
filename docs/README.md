# cursorlivedemo

Walkthrough for Cursor AI. This doc is a notes for speaker that presents Cursor features.
Here I want to share how I use Cursor as a developer.

## Problem(s)

Our profession is highly connected to exploring new concepts, learning new technologies, finding answers to questions, and finding solutions to problems or workarounds.
Additionally, most of the problems we are working with are unique, or have unique/specific solutions.
At the same time, we work with a lot of repetitive and routine tasks.
For example, implementing boilerplate code, writing tests, etc.

There are two main problems:

- Context Switching between IDE and AI, Browser, other tools.
- Repetitive Tasks

## Tab Completion

Cursor offers smart tab completion, multi-line and multi-file suggestions.
This is extremely helpful for completing repetitive, routine tasks.
For example, implementing copyWith, equality or algorithms.

## Inline Edit

Cursor makes it easier to apply changes or ask details about specific parts of code.
Because it is inline, you don't need to open a new Tab or go to Browser.
Inline edit also works in a terminal :0

## Agent

Another great instrument is Cursor Agent that completes tasks end-to-end.
It automatically finds helpful context, runs commands (including terminal) and loops on errors.

Context and prompt matter a lot
Whenever you are working on a problem, try to provide useful and direct context/prompt that shapes how the agent behave.

Before using Agent, try to decouple the task into smaller ones.
Instead of asking "Create a todo app that will make me a billionare", you could
start with a more specific task:

- "Design a todo repository interface"
- "Create a todo repository implementation that uses SQLite"
- "Write tests for the todo repository"

I would not recommend combining multiple tasks into one (e.g., create a repository and write tests for it)

## Cursor Rules

Usually, we have some common knowledge/best practices/conventions that we follow.
In order to make Cursor understand and follow them, you can use Cursor Rules.

Best practices:

- make them direct and specific
- make them concise

Good cases for rules:

- rules for tests
- team code conventions (e.g., naming conventions, file structure, stack preferences)
- rules for architecture

## MCP Servers

