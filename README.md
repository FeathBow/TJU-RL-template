<div align="center">

# Tianjin University Recommendation Letter Template

<p>
  <a href="LICENSE"><img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-blue.svg"></a>
  <a href="https://www.latex-project.org/"><img alt="LaTeX" src="https://img.shields.io/badge/LaTeX-XeLaTeX-green.svg"></a>
  <img alt="Platform" src="https://img.shields.io/badge/Platform-macOS%20%7C%20Linux%20%7C%20Windows-lightgrey">
  <a href="https://www.overleaf.com"><img alt="Overleaf" src="https://img.shields.io/badge/Overleaf-Ready-47a141"></a>
  <img alt="Maintenance" src="https://img.shields.io/badge/Maintained-Yes-brightgreen">
</p>

<p>
  <a href="https://github.com/FeathBow/TJU-RL-template/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/FeathBow/TJU-RL-template?style=social"></a>
  <a href="https://github.com/FeathBow/TJU-RL-template/network/members"><img alt="GitHub forks" src="https://img.shields.io/github/forks/FeathBow/TJU-RL-template?style=social"></a>
  <a href="https://github.com/FeathBow/TJU-RL-template/actions"><img alt="CI Status" src="https://github.com/FeathBow/TJU-RL-template/actions/workflows/latex-ci.yml/badge.svg"></a>
</p>

**English** | [简体中文](README.zh-CN.md)

Professional LaTeX template for academic recommendation letters from Tianjin University

</div>

> [!IMPORTANT]
> This is **NOT** an official template from Tianjin University.
> This is a community-maintained project for faculty and students.

---

## Table of Contents

- [About](#about)
- [Preview](#preview)
- [Quick Start](#quick-start)
- [Campus Addresses](#campus-addresses)
- [Customization](#customization)
- [Development](#development)
- [Project Structure](#project-structure)
- [Acknowledgments](#acknowledgments)
- [Contributing](#contributing)
- [License](#license)

---

## About

A LaTeX template for academic recommendation letters from Tianjin University. This template provides TJU-specific letterhead elements (official logo, brand colors, campus addresses) and follows international academic formatting standards (APA/AMA).

Tianjin University, founded in 1895 as Peiyang University, is the first modern university in China.

---

## Preview

![Template Preview](assets/preview.png)

*[📄 Download PDF Example](main.pdf)*

---

## Quick Start

### Option 1: Local Compilation

**Requirements:**
- **TeX Live** 2020+ (XeLaTeX compiler)

**Font Information:**
- Uses **Computer Modern** (Latin Modern) by default - the standard font for STEM disciplines
- To switch to Times New Roman, uncomment font settings in `TJUletter.cls`

**Steps:**

1. **Clone the repository**
   ```bash
   git clone https://github.com/FeathBow/TJU-RL-template.git
   cd TJU-RL-template
   ```

2. **Add assets** (in `assets/` folder)
   - `logo.pdf` - TJU official logo
   - `signature.png` - Digital signature (optional)
   - `building.png` - Background watermark (optional)

3. **Edit `main.tex`** to customize sender information

4. **Compile**
   ```bash
   xelatex main.tex
   # or
   latexmk
   ```

### Option 2: Use on Overleaf

**Method 1: Upload ZIP** (Recommended)
1. Download [ZIP file](https://github.com/FeathBow/TJU-RL-template/archive/refs/heads/main.zip)
2. Go to [Overleaf](https://www.overleaf.com) → **New Project** → **Upload Project**
3. Upload the ZIP file and start editing

**Method 2: Import from GitHub**
1. Fork this repository to your GitHub account
2. In Overleaf: **New Project** → **Import from GitHub**
3. Select your forked repository

---

## Campus Addresses

<div align="center">

| Campus | Address |
|:------:|:-------:|
| **Peiyangyuan Campus**<br>(New Campus) | No. 135 Yaguan Road, Haihe Education Park<br>Tianjin 300350, China |
| **Weijin Road Campus**<br>(Old Campus) | No. 92 Weijin Road, Nankai District<br>Tianjin 300072, China |

</div>

---

## Customization

| Feature | Configuration | Location |
|---------|--------------|----------|
| **Font** | Default: Computer Modern<br>Switch to Times New Roman: Uncomment font settings | `TJUletter.cls` |
| **Background Image** | Default: Enabled (`building.png`)<br>Disable: Comment out `\makeWatermark` | `main.tex` |
| **Digital Signature** | Optional: Add `signature.png` to assets folder<br>Specify with `\signaturefile{assets/signature.png}` | `main.tex` |
| **Paper Size** | Default: A4<br>Switch to US Letter: Change to `letterpaper` in document class | `TJUletter.cls` |
| **Margins** | Top: 3.175cm, Bottom/Left/Right: 2.54cm (APA/AMA standard) | `TJUletter.cls` |
| **Campus Address** | Dual campus footer (Weijin Road + Peiyangyuan) | `TJUletter.cls` |

---

## Development

<details>
<summary><b>Local Git Hooks (Optional)</b></summary>

Install pre-commit hooks to automatically lint LaTeX files before committing:

```bash
# Install pre-commit framework
pip install pre-commit

# Install hooks
pre-commit install

# Run manually on all files
pre-commit run --all-files
```

</details>

---

## Project Structure

```
TJU-RL-template/
├── .github/
│   ├── CONTRIBUTING.md           # Contribution guidelines
│   └── workflows/
│       └── latex-ci.yml          # GitHub Actions CI/CD
├── assets/
│   ├── logo.pdf                  # TJU official logo
│   ├── signature.png             # Digital signature (optional)
│   ├── building.png              # Background watermark
│   └── preview.png               # Template preview image
├── .chktexrc                     # chktex linter configuration
├── .gitattributes                # Git language detection
├── .gitignore                    # Git ignore rules
├── .latexindent.yaml             # LaTeX formatter configuration
├── .latexmkrc                    # latexmk build configuration
├── .pre-commit-config.yaml       # Pre-commit hooks configuration
├── LICENSE                       # MIT License
├── main.pdf                      # Compiled example PDF
├── main.tex                      # Main template file (edit this)
├── README.md                     # English documentation
├── README.zh-CN.md               # Chinese documentation
└── TJUletter.cls                 # LaTeX document class
```

---

## Acknowledgments

- **[TJU-VIS](https://github.com/tjuse/tju-vis)** - For providing corrected and standardized Tianjin University visual identity assets (logo, wordmark) based on the official VI manual.
- **[gitignore.io](https://github.com/toptal/gitignore)** - For providing professional .gitignore template generation service.
- LaTeX community

---

## Contributing

Contributions are welcome! Feel free to:
- Report bugs via [Issues](https://github.com/FeathBow/TJU-RL-template/issues)
- Submit improvements via Pull Requests
- Suggest features

See [CONTRIBUTING.md](.github/CONTRIBUTING.md) for details. No strict rules - keep it simple and helpful.

---

## Disclaimer

1. This template is for **legitimate academic use only** by TJU faculty and students.
2. Always **verify all information** before sending.

---

## License

[MIT License](LICENSE) - Free to use and modify.

---

**Made for TJU Faculty and Students**

*Tianjin University, founded in 1895 as Peiyang University, is the first modern university in China.*
