param(
    [string]$src,
    [string]$dst
)

aws s3 sync $src $dst #--exclude "*" --include "*.txt" --delete # Sync all local to s3 ex s3://s3ndit
