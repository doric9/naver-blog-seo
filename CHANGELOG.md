# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Skill sync script (`scripts/sync-skills.sh`) for version control
- CI workflow for automated testing and skill sync validation

### Fixed
- Synced `__version__` with `pyproject.toml`
- Removed unused imports (`Path`, `Union`) from `core.py`

## [0.1.2] - 2026-01-26

### Added
- Skills directory structure for skills.sh compatibility
- Python package usage instructions in README

## [0.1.1] - 2026-01-26

### Added
- Python wrapper (`NaverSEO` class) for programmatic access
- Pydantic models (`SEOAnalysis`, `SEOAuditResult`) for structured output
- CLI entry point for skill verification
- Unit tests for skill loading and Pydantic parsing
- GitHub Actions workflow for automated PyPI publishing

### Fixed
- Removed tracked `__pycache__` files
- Updated `.gitignore` for Python projects

## [0.1.0] - 2026-01-26

### Added
- Initial release
- `/naver-blog` skill for SEO-optimized blog post generation
- `/naver-audit` skill for analyzing existing blog posts
- Claude Code skills configuration (`.claude/skills/`)
- MIT License
