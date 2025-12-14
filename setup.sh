#!/bin/bash

# Medical Apps Monorepo Setup Script
# This script installs dependencies for all Flutter projects in this monorepo

echo "🏥 Medical Apps Monorepo Setup"
echo "=============================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if Flutter is installed
if ! command -v flutter &> /dev/null
then
    echo -e "${RED}❌ Flutter is not installed. Please install Flutter first.${NC}"
    echo "Visit: https://docs.flutter.dev/get-started/install"
    exit 1
fi

echo -e "${GREEN}✓ Flutter is installed${NC}"
echo ""

# Setup google_map_clone
echo -e "${BLUE}📦 Setting up google_map_clone...${NC}"
cd google_map_clone
if flutter pub get; then
    echo -e "${GREEN}✓ google_map_clone dependencies installed${NC}"
else
    echo -e "${RED}❌ Failed to install google_map_clone dependencies${NC}"
    exit 1
fi
cd ..
echo ""

# Setup medinavi-mac
echo -e "${BLUE}📦 Setting up medinavi-mac...${NC}"
cd medinavi-mac
if flutter pub get; then
    echo -e "${GREEN}✓ medinavi-mac dependencies installed${NC}"
else
    echo -e "${RED}❌ Failed to install medinavi-mac dependencies${NC}"
    exit 1
fi
cd ..
echo ""

echo -e "${GREEN}✅ All projects are ready!${NC}"
echo ""
echo "To run a project:"
echo "  cd google_map_clone && flutter run"
echo "  cd medinavi-mac && flutter run"
