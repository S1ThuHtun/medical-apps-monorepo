#!/bin/bash

# Script to generate PDF from DOCUMENTATION.md using macOS tools
# This script uses textutil (built-in on macOS) to convert markdown to PDF

echo "🔄 Generating PDF from DOCUMENTATION.md..."

# Check if DOCUMENTATION.md exists
if [ ! -f "DOCUMENTATION.md" ]; then
    echo "❌ Error: DOCUMENTATION.md not found!"
    exit 1
fi

# Method 1: Try using textutil (macOS built-in)
echo "📝 Attempting conversion with textutil..."
textutil -convert html DOCUMENTATION.md -output DOCUMENTATION.html 2>/dev/null

if [ -f "DOCUMENTATION.html" ]; then
    echo "✅ HTML created successfully"

    # Try to convert HTML to PDF using cupsfilter or wkhtmltopdf
    if command -v wkhtmltopdf &> /dev/null; then
        echo "📄 Converting HTML to PDF with wkhtmltopdf..."
        wkhtmltopdf DOCUMENTATION.html DOCUMENTATION.pdf
        echo "✅ PDF generated: DOCUMENTATION.pdf"
    else
        echo "ℹ️  HTML file created: DOCUMENTATION.html"
        echo "💡 To convert to PDF:"
        echo "   Option 1: Open DOCUMENTATION.html in browser and use Print to PDF"
        echo "   Option 2: Install wkhtmltopdf: brew install wkhtmltopdf"
        echo "   Option 3: Install Python packages: pip3 install markdown weasyprint"
        echo "            Then run: python3 generate_pdf.py"
    fi
else
    echo "❌ Failed to create HTML file"
    echo "💡 Alternative: Open DOCUMENTATION.md in any markdown viewer and export to PDF"
fi
