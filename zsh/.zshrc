# A colorful, icon-aware replacement for `ls`.
if command -v eza >/dev/null 2>&1; then
  # Gruvbox-style colors for folders, documents, archives, media, and code.
  export EZA_COLORS="di=1;38;5;109:ex=1;38;5;142:ln=38;5;108:*.md=1;38;5;175:*.txt=38;5;246:*.pdf=1;38;5;167:*.doc=1;38;5;109:*.docx=1;38;5;109:*.pages=1;38;5;109:*.xls=1;38;5;142:*.xlsx=1;38;5;142:*.csv=38;5;142:*.ppt=1;38;5;208:*.pptx=1;38;5;208:*.key=1;38;5;208:*.zip=1;38;5;214:*.tar=1;38;5;214:*.gz=1;38;5;214:*.7z=1;38;5;214:*.jpg=1;38;5;175:*.jpeg=1;38;5;175:*.png=1;38;5;175:*.gif=1;38;5;175:*.svg=1;38;5;175:*.mp3=38;5;108:*.mp4=38;5;108:*.mov=38;5;108:*.js=38;5;214:*.ts=38;5;109:*.py=38;5;142:*.rs=38;5;208:*.go=38;5;108"

  alias ls='eza --icons=auto --group-directories-first'
  alias ll='eza --long --all --header --git --icons=auto --group-directories-first'
  alias la='eza --all --icons=auto --group-directories-first'
  alias lt='eza --tree --level=2 --icons=auto --group-directories-first'
fi

# Show a system summary when an interactive shell starts.
if [[ -o interactive ]] && command -v fastfetch >/dev/null 2>&1; then
  fastfetch
fi
