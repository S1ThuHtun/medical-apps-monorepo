# MediNavi Documentation

This directory contains comprehensive documentation for the MediNavi project.

## Documentation Files

1. **DOCUMENTATION.md** - Complete project documentation in Markdown format
2. **DOCUMENTATION.html** - HTML version with enhanced styling
3. **generate_pdf.py** - Python script for PDF generation
4. **generate_pdf.sh** - Shell script for PDF generation

## Viewing Documentation

### Option 1: View Markdown (Recommended for GitHub)
Open `DOCUMENTATION.md` in any markdown viewer or on GitHub.

### Option 2: View HTML
Open `DOCUMENTATION.html` in any web browser for a beautifully formatted view.

### Option 3: Generate PDF

#### Method 1: Browser Print (Easiest)
1. Open `DOCUMENTATION.html` in your web browser
2. Press `Cmd+P` (macOS) or `Ctrl+P` (Windows/Linux)
3. Select "Save as PDF" from the destination dropdown
4. Click "Save" and choose location

#### Method 2: Using Python Script
```bash
# Install required packages
pip3 install markdown weasyprint

# Run the script
python3 generate_pdf.py
```

#### Method 3: Using Shell Script
```bash
# Make executable
chmod +x generate_pdf.sh

# Run
./generate_pdf.sh
```

#### Method 4: Using wkhtmltopdf (macOS)
```bash
# Install wkhtmltopdf
brew install wkhtmltopdf

# Convert
wkhtmltopdf DOCUMENTATION.html DOCUMENTATION.pdf
```

## Documentation Contents

The documentation covers:

- ✅ **Project Overview** - Core features and purpose
- ✅ **Architecture** - System design and patterns
- ✅ **Project Structure** - File organization
- ✅ **Components** - Models, Services, Screens, Widgets
- ✅ **Notification System** - Complete alarm/reminder implementation
- ✅ **Localization** - Multi-language support
- ✅ **Dependencies** - All packages and versions
- ✅ **Setup & Installation** - Step-by-step guide
- ✅ **Configuration** - API keys and settings
- ✅ **Usage Guide** - For end users and developers
- ✅ **API Integration** - Google Maps, Gemini AI
- ✅ **Testing** - Manual and automated testing
- ✅ **Troubleshooting** - Common issues and solutions
- ✅ **Future Enhancements** - Planned features
- ✅ **Security & Privacy** - Data handling
- ✅ **Contributing** - Development guidelines
- ✅ **Appendices** - Reference materials

## Quick Stats

- **Total Pages**: ~60 pages (PDF)
- **Word Count**: ~12,000 words
- **Sections**: 15 major sections
- **Code Examples**: 50+ snippets
- **Diagrams**: 3 architecture diagrams

## Updates

To update the documentation:

1. Edit `DOCUMENTATION.md`
2. Regenerate HTML: Run the Python script in the shell command
3. Regenerate PDF: Use one of the methods above

## License

This documentation is part of the MediNavi project and follows the same license.

---

**Last Updated**: January 14, 2026
**Version**: 1.0
