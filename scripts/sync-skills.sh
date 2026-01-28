#!/bin/bash
# Sync skills from skills/ (source of truth) to other locations
# Strips YAML frontmatter when copying

set -e

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

# Function to strip YAML frontmatter (content between --- markers at the start)
strip_frontmatter() {
    local input="$1"
    # Use awk to skip the frontmatter block and any blank line after it
    awk '
        BEGIN { in_frontmatter=0; found_end=0; skip_blank=0 }
        /^---$/ && NR==1 { in_frontmatter=1; next }
        /^---$/ && in_frontmatter && !found_end { found_end=1; skip_blank=1; next }
        skip_blank && /^$/ { skip_blank=0; next }
        skip_blank { skip_blank=0 }
        !in_frontmatter || found_end { print }
    ' "$input"
}

echo "Syncing skills from skills/ to other locations..."

# Sync naver-blog-seo
echo "  - naver-blog-seo"
strip_frontmatter "$REPO_ROOT/skills/naver-blog-seo/SKILL.md" > "$REPO_ROOT/.claude/skills/naver-blog-seo.md"
strip_frontmatter "$REPO_ROOT/skills/naver-blog-seo/SKILL.md" > "$REPO_ROOT/naver_blog_seo/skills/naver-blog-seo.md"

# Sync naver-blog-audit
echo "  - naver-blog-audit"
strip_frontmatter "$REPO_ROOT/skills/naver-blog-audit/SKILL.md" > "$REPO_ROOT/.claude/skills/naver-blog-audit.md"
strip_frontmatter "$REPO_ROOT/skills/naver-blog-audit/SKILL.md" > "$REPO_ROOT/naver_blog_seo/skills/naver-blog-audit.md"

echo "Done! Skills synced successfully."
