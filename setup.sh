#!/bin/bash

# Colors
GREEN='\033[1;32m'
RED='\033[1;31m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
purple='\033[1;35m'
blue='\033[1;34m'
NC='\033[0m'

  # Typewriter animation function
  type_text() {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
      echo -ne "${text:$i:1}"
      sleep 0.005
    done
    echo ""
  }

  echo -e "$CYAN"
  type_text "             ██╗  ██╗ ██████╗ ███████╗████████╗"
  type_text "             ██║  ██║██╔═══██╗██╔════╝╚══██╔══╝"
  type_text "             ███████║██║   ██║███████╗   ██║   "
  type_text "             ██╔══██║██║   ██║╚════██║   ██║   "
  echo -ne "             ██║  ██║╚██████╔╝███████║   ██║   "
  echo -e "${YELLOW}v:1.0${NC}$CYAN"
  type_text "             ╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   "

  echo -e "$blue<=======================================================>${NC}"
  echo -e "${GREEN}       WELCOME To Host => ${CYAN}Create by Mahadeb R..das${NC}"
  echo -e "${GREEN}<=======================================================>${NC}"
  echo -e "${RED}   YouTube Bangla => ${YELLOW}https://youtube.com/@zerodarknexus${NC}"
  echo -e "${GREEN}<=======================================================>${NC}"
  echo -e "${purple}       Subscribe my YouTube Channel ZeroDark Nexus${NC}"
  echo -e "${blue}<=======================================================>${NC}"
echo -e "${CYAN}Checking and installing required packages...${NC}"

# Required packages
packages=("nodejs" "npm" "wget" "php" "openssh" "curl" "cloudflared")

# Install packages if not installed
for pkg in "${packages[@]}"; do
  if command -v $pkg >/dev/null 2>&1; then
    echo -e "${GREEN}[✔] $pkg already installed.${NC}"
  else
    echo -e "${YELLOW}[i] Installing $pkg...${NC}"
    pkg install -y $pkg
  fi
done

# Install tunnelmole via npm
if command -v tunnelmole >/dev/null 2>&1; then
  echo -e "${GREEN}[✔] Server already installed.${NC}"
else
  echo -e "${YELLOW}[i] Installing server via npm...${NC}"
  npm install -g tunnelmole
  echo -e "${GREEN}[✔] Server installed.${NC}"
fi

# Move host.sh to PREFIX/bin for global use
if [[ -f host ]]; then
  chmod +x host
  mv host $PREFIX/bin
else
  echo -e "${RED}[✘] host.sh not found in current directory.${NC}"
fi

cd
rm -rf Hosting
# YouTube Channel Subscribe Prompt
echo -e "${YELLOW}[!] Subscribe my YouTube Channel:{NC}"
echo -e "${CYAN}Opening channel in ZeroDark Nexus..${NC}"
termux-open-url "https://youtube.com/@zerodarknexus"

echo -e "${GREEN}[✔] Setup complete!${NC}"
echo -e "${YELLOW}Now type: ${CYAN}host${NC} ${YELLOW}to start the server menu.${NC}"
