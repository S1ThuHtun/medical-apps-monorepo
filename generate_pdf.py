#!/usr/bin/env python3
"""
Script to generate PDF from DOCUMENTATION.md

Requirements:
    pip install markdown weasyprint

Usage:
    python3 generate_pdf.py
"""

try:
    import markdown
    from weasyprint import HTML, CSS
    from weasyprint.text.fonts import FontConfiguration
except ImportError:
    print("Required packages not installed.")
    print("Please install them with:")
    print("  pip3 install markdown weasyprint")
    exit(1)

# Read markdown file
with open('DOCUMENTATION.md', 'r', encoding='utf-8') as f:
    md_content = f.read()

# CSS styling for PDF
css_style = CSS(string='''
    @page {
        size: A4;
        margin: 2cm;
    }
    body {
        font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Arial, sans-serif;
        line-height: 1.6;
        color: #333;
    }
    h1 {
        color: #2E7D32;
        border-bottom: 3px solid #4CAF50;
        padding-bottom: 10px;
        page-break-before: always;
    }
    h1:first-of-type {
        page-break-before: avoid;
    }
    h2 {
        color: #388E3C;
        border-bottom: 2px solid #81C784;
        padding-bottom: 8px;
        margin-top: 30px;
    }
    h3 {
        color: #43A047;
        margin-top: 20px;
    }
    code {
        background: #f4f4f4;
        padding: 2px 6px;
        border-radius: 3px;
        font-family: 'Courier New', monospace;
        font-size: 0.9em;
    }
    pre {
        background: #f4f4f4;
        padding: 15px;
        border-radius: 5px;
        overflow-x: auto;
        page-break-inside: avoid;
    }
    pre code {
        background: none;
        padding: 0;
    }
    blockquote {
        border-left: 4px solid #4CAF50;
        padding-left: 20px;
        color: #666;
        font-style: italic;
    }
    table {
        border-collapse: collapse;
        width: 100%;
        margin: 20px 0;
        page-break-inside: avoid;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
        font-size: 0.9em;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    a {
        color: #2E7D32;
        text-decoration: none;
    }
    img {
        max-width: 100%;
        page-break-inside: avoid;
    }
''')

# HTML template
html_template = '''
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MediNavi - Documentation</title>
</head>
<body>
{}
</body>
</html>
'''

# Convert markdown to HTML
html_content = markdown.markdown(
    md_content,
    extensions=[
        'markdown.extensions.extra',
        'markdown.extensions.codehilite',
        'markdown.extensions.toc',
        'markdown.extensions.tables',
        'markdown.extensions.fenced_code'
    ]
)

full_html = html_template.format(html_content)

# Generate PDF
font_config = FontConfiguration()
HTML(string=full_html).write_pdf(
    'DOCUMENTATION.pdf',
    stylesheets=[css_style],
    font_config=font_config
)

print('✅ PDF documentation generated successfully!')
print('📄 File: DOCUMENTATION.pdf')
