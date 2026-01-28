# Roadmap

Feature ideas and planned improvements for the Naver Blog SEO package.

## New Skills

### `/naver-keyword` (High Priority)
Keyword research skill - the foundation of SEO.
- Find low-competition longtail keywords
- Analyze search volume and competition
- Suggest related keywords and topics

### `/naver-title`
Generate multiple title variations for A/B testing.
- 5-10 title options per keyword
- Different styles (질문형, 숫자형, 리스트형)
- Click-through rate optimization

### `/naver-outline`
Generate content outline before full writing.
- Structure and section planning
- Key points per section
- Estimated word count per section

### `/naver-refresh`
Update old posts for freshness (critical for SEO).
- Identify outdated information
- Suggest updates and additions
- Preserve existing SEO value

## Enhancements to Existing Skills

### `/naver-blog`
- [ ] Category-specific templates (맛집, 여행, 뷰티, IT, etc.)
- [ ] More tone options (친근한, 유머러스, 감성적)
- [ ] Competitor analysis before writing (analyze top 3 posts)
- [ ] Auto-generate image alt text suggestions

### `/naver-audit`
- [ ] Compare against top-ranking competitor posts
- [ ] Suggest specific rewrites (not just "fix this")
- [ ] Generate improved version automatically

## Python Package Improvements

- [ ] Async support for async frameworks
- [ ] Custom skill loading (user-defined skills)
- [ ] Prompt template customization

## Infrastructure

- [x] Skill sync script
- [x] CI workflow
- [x] CHANGELOG.md
- [ ] Pre-commit hooks (ruff/black)
- [ ] Expanded test coverage
