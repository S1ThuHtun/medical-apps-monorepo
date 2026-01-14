#!/usr/bin/env python3
"""
Simple PDF generator for DOCUMENTATION.md
Uses reportlab which is easier to install
"""

import sys

try:
    from reportlab.lib.pagesizes import A4
    from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
    from reportlab.lib.units import inch
    from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, PageBreak, Preformatted
    from reportlab.lib.enums import TA_LEFT, TA_CENTER, TA_JUSTIFY
    from reportlab.lib.colors import HexColor
except ImportError:
    print("Installing reportlab...")
    import subprocess
    subprocess.check_call([sys.executable, "-m", "pip", "install", "--user", "--quiet", "reportlab"])
    from reportlab.lib.pagesizes import A4
    from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
    from reportlab.lib.units import inch
    from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, PageBreak, Preformatted
    from reportlab.lib.enums import TA_LEFT, TA_CENTER, TA_JUSTIFY
    from reportlab.lib.colors import HexColor

import re

print("📄 Generating PDF from DOCUMENTATION.md...")

# Read markdown file
with open('DOCUMENTATION.md', 'r', encoding='utf-8') as f:
    content = f.read()

# Create PDF
pdf_file = 'DOCUMENTATION.pdf'
doc = SimpleDocTemplate(
    pdf_file,
    pagesize=A4,
    rightMargin=72,
    leftMargin=72,
    topMargin=72,
    bottomMargin=18,
)

# Styles
styles = getSampleStyleSheet()

# Custom styles with green theme
title_style = ParagraphStyle(
    'CustomTitle',
    parent=styles['Heading1'],
    fontSize=24,
    textColor=HexColor('#1B5E20'),
    spaceAfter=30,
    alignment=TA_CENTER,
    fontName='Helvetica-Bold'
)

h1_style = ParagraphStyle(
    'CustomH1',
    parent=styles['Heading1'],
    fontSize=18,
    textColor=HexColor('#2E7D32'),
    spaceAfter=12,
    spaceBefore=20,
    fontName='Helvetica-Bold'
)

h2_style = ParagraphStyle(
    'CustomH2',
    parent=styles['Heading2'],
    fontSize=14,
    textColor=HexColor('#388E3C'),
    spaceAfter=10,
    spaceBefore=15,
    fontName='Helvetica-Bold'
)

h3_style = ParagraphStyle(
    'CustomH3',
    parent=styles['Heading3'],
    fontSize=12,
    textColor=HexColor('#43A047'),
    spaceAfter=8,
    spaceBefore=10,
    fontName='Helvetica-Bold'
)

body_style = ParagraphStyle(
    'CustomBody',
    parent=styles['BodyText'],
    fontSize=10,
    alignment=TA_JUSTIFY,
    spaceAfter=6,
    leading=14
)

code_style = ParagraphStyle(
    'Code',
    parent=styles['Code'],
    fontSize=8,
    fontName='Courier',
    leftIndent=20,
    textColor=HexColor('#333333'),
    backColor=HexColor('#f4f4f4')
)

# Build story
story = []
lines = content.split('\n')
is_first_h1 = True
in_code_block = False
code_block = []

for line in lines:
    line = line.rstrip()

    # Handle code blocks
    if line.startswith('```'):
        if in_code_block:
            # End code block
            code_text = '\n'.join(code_block)
            story.append(Preformatted(code_text, code_style))
            story.append(Spacer(1, 0.2*inch))
            code_block = []
            in_code_block = False
        else:
            # Start code block
            in_code_block = True
        continue

    if in_code_block:
        code_block.append(line)
        continue

    # Skip empty lines in story building (we add spacers manually)
    if not line.strip():
        continue

    # Headers
    if line.startswith('# '):
        text = line[2:]
        if is_first_h1:
            story.append(Paragraph(text, title_style))
            is_first_h1 = False
        else:
            story.append(PageBreak())
            story.append(Paragraph(text, h1_style))
        story.append(Spacer(1, 0.2*inch))
    elif line.startswith('## '):
        text = line[3:]
        story.append(Paragraph(text, h2_style))
        story.append(Spacer(1, 0.1*inch))
    elif line.startswith('### '):
        text = line[4:]
        story.append(Paragraph(text, h3_style))
        story.append(Spacer(1, 0.1*inch))
    elif line.startswith('---'):
        story.append(Spacer(1, 0.3*inch))
    elif line.strip().startswith('- ') or line.strip().startswith('* '):
        # List item
        text = line.strip()[2:]
        text = f"• {text}"
        story.append(Paragraph(text, body_style))
    elif re.match(r'^\d+\.', line.strip()):
        # Numbered list
        story.append(Paragraph(line.strip(), body_style))
    else:
        # Regular paragraph
        if line.strip():
            # Escape special characters for reportlab
            line = line.replace('&', '&amp;')
            line = line.replace('<', '&lt;')
            line = line.replace('>', '&gt;')
            # Convert markdown bold to HTML
            line = re.sub(r'\*\*(.*?)\*\*', r'<b>\1</b>', line)
            # Convert markdown italic to HTML
            line = re.sub(r'\*(.*?)\*', r'<i>\1</i>', line)
            # Convert inline code
            line = re.sub(r'`([^`]+)`', r'<font name="Courier" color="#c7254e">\1</font>', line)

            story.append(Paragraph(line, body_style))

# Build PDF
print("⏳ Building PDF document...")
doc.build(story)

print(f"✅ PDF generated successfully!")
print(f"📄 File: {pdf_file}")
print(f"📏 Size: {round(len(open(pdf_file, 'rb').read()) / 1024, 2)} KB")
