param(
    [string]$src,
    [string]$dst
)

aws s3 cp $src $dst # --exclude "*" --include "*.txt"