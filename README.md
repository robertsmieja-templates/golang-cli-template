# golang-cli-template
Golang CLI project template following best practices

## Technology Choices and Reasoning
- Cobra - Most popular CLI library, pairs well with Viper. Used in large open-source Golang projects (Terraform, Kubernetes, etc).
- `golangci-lint` - Most popular liniting tool, that combines several linters.
- Makefile - Currently the most popular type of build system for Golang projects in open-source
- PromptUI - CLI library to provide rich interactive prompts.
- Viper - Most popular configuration library, pairs well with Cobra. Used in large open-source Golang projects (Terraform, Kubernetes, etc).

# Potential Improvements
Some of these are due to Golang still being a relatively new language, and will onl

- Build system - There are several Golang-based build systems attempting to replace Makefiles. It's possible of them becomes the first-choice for building Golang projects instead of Makefiles.
- Debugging - There are plans to address as part of the language
- Dependency Management improvements
    - Separation of development dependencies vs production dependencies
    - Better way of installing development tools, like `golangci-lint`. The current way overwrites a locally installed version
- Git Hooks - Automatically run formatting + unit tests on commit, as they are fast in Golang
