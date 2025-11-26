# Code Cleaner 🧹

**One command to clean your code.** Remove AI-generated comments, add documentation, or format code properly.

[![GitHub Stars](https://img.shields.io/github/stars/atharva-badgujar/code-cleaner?style=social)](https://github.com/atharva-badgujar/code-cleaner)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Python](https://img.shields.io/badge/python-3.7+-blue.svg)](https://www.python.org/downloads/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

## 🚀 Quick Start

### Install

```bash
git clone https://github.com/atharva-badgujar/code-cleaner.git
cd code-cleaner
chmod +x install.sh
./install.sh
```

Windows:

cmdgit clone https://github.com/atharva-badgujar/code-cleaner.git
cd code-cleaner
install.bat


### Use

```bash
clean              # Interactive mode (easiest!)
clean .            # Clean current folder
clean app.py       # Clean single file
```

That's it! 🎉

## 📖 Usage

### Interactive Mode (Recommended)

```bash
clean
```

The tool will ask you:
1. What folder/file to process
2. What mode (clean/add/format)
3. Whether to push to GitHub

Perfect for beginners!

### Quick Commands

```bash
# Remove comments and format
clean .

# Add helpful comments
clean . add

# Clean and push to GitHub
clean . push

# Process specific file
clean app.py
```

<img width="855" height="613" alt="Screenshot 2025-11-21 at 5 01 15 PM" src="https://github.com/user-attachments/assets/d1cc031c-6ff8-4cd0-9eb4-8acf8211f4cb" />

## Why Code Cleaner?

Ever used ChatGPT or Claude to write code and got this?

```python
# This function adds two numbers together
def add(a, b):
    # First we add a and b
    result = a + b  # Store in result variable
    # Now return the result
    return result  # This returns the sum
```

**Clean it in one command:**

```bash
clean app.py
```

**Result:**

```python
def add(a, b):
    result = a + b
    return result
```

Clean, professional, production-ready! ✨

## ✨ Features

- 🗑️ **Remove Comments** - Strip verbose AI-generated comments
- 📝 **Add Comments** - Automatically document undocumented code
- 🎨 **Format Code** - Professional formatting across all files
- 🌍 **8 Languages** - Python, JavaScript, TypeScript, Java, C/C++, Go, Rust, PHP
- 🚀 **Git Integration** - Commit and push in one command
- 💡 **Interactive Mode** - No need to remember commands
- ⚡ **Fast** - Process entire projects in seconds


## 📸 Before & After

1.Before :
<img width="855" height="837" alt="Screenshot 2025-11-21 at 5 11 26 PM" src="https://github.com/user-attachments/assets/d3243173-0386-4661-b0fe-737a0183b6a5" />

2.After :
<img width="855" height="837" alt="Screenshot 2025-11-21 at 5 12 43 PM" src="https://github.com/user-attachments/assets/17a82f2f-8792-46c2-b99d-a420eb47f3d9" />

### Example 1: Cleaning AI Code

**Before:**
```python
# This function calculates the factorial
def factorial(n):
    # Base case: if n is 0 or 1
    if n <= 1:
        return 1  # Return 1 for base case
    # Recursive case: multiply n by factorial of n-1
    return n * factorial(n - 1)  # Recursion here
```

**After running `clean app.py`:**
```python
def factorial(n):
    if n <= 1:
        return 1
    return n * factorial(n - 1)
```

### Example 2: Adding Documentation

**Before:**
```python
def process_data(data, threshold):
    filtered = [x for x in data if x > threshold]
    return sum(filtered) / len(filtered)
```

**After running `clean app.py add`:**
```python
# Function: process_data
def process_data(data, threshold):
    # Loop through items
    filtered = [x for x in data if x > threshold]
    return sum(filtered) / len(filtered)
```


## 🎯 Use Cases

### 1. Clean AI-Generated Code
Remove verbose comments from ChatGPT, Claude, or Copilot before committing.

### 2. Document Your Code
Add helpful comments to your own code for better readability.

### 3. Team Consistency
Ensure consistent formatting across your entire codebase.

### 4. Pre-Commit Cleanup
Clean code automatically before pushing to production.

### 5. Learning Projects
Clean up tutorial code with excessive explanatory comments.

## 🌟 Supported Languages

| Language   | Remove Comments | Add Comments | Format |
|------------|----------------|--------------|--------|
| Python     | ✅             | ✅           | ✅     |
| JavaScript | ✅             | ✅           | ✅     |
| TypeScript | ✅             | ✅           | ✅     |
| Java       | ✅             | ✅           | ✅     |
| C/C++      | ✅             | ✅           | ✅     |
| Go         | ✅             | ✅           | ✅     |
| Rust       | ✅             | ✅           | ✅     |
| PHP        | ✅             | ✅           | ✅     |

Want another language? [Open an issue!](https://github.com/atharva-badgujar/code-cleaner/issues)

## 📋 Commands Reference

```bash
COMMAND              WHAT IT DOES
-------              ------------
clean                Interactive mode
clean .              Clean current folder
clean file.py        Clean single file
clean . add          Add helpful comments
clean . push         Clean and push to git
clean --help         Show help
```

## 🔧 Installation Details

### Requirements
- Python 3.7 or higher
- Git (for push functionality)

### Optional (for better formatting)
```bash
pip3 install black autopep8
```

The tool works perfectly without these, but they provide even better formatting.

### Manual Installation

**Mac/Linux:**
```bash
chmod +x clean install.sh
sudo cp clean /usr/local/bin/
```

**Windows:**
```bash
# Use with python
python clean --help

# Or create alias
doskey clean=python "C:\path\to\clean" $*
```


## 🤝 Contributing

We love contributions! Here's how:

1. Fork the repo
2. Create a branch (`git checkout -b feature/amazing`)
3. Make your changes
4. Test it (`clean test.py`)
5. Commit (`git commit -m 'Add amazing feature'`)
6. Push (`git push origin feature/amazing`)
7. Open a Pull Request


## 📝 License

MIT License - see [LICENSE](LICENSE) file.

**TL;DR:** Free to use, modify, and distribute. Just keep the license notice.

## 🐛 Issues & Support

- 🐛 [Report a bug](https://github.com/atharva-badgujar/code-cleaner/issues/new?labels=bug)
- 💡 [Request a feature](https://github.com/atharva-badgujar/code-cleaner/issues/new?labels=enhancement)
- ❓ [Ask a question](https://github.com/atharva-badgujar/code-cleaner/discussions)

## 📊 Stats

![GitHub stars](https://img.shields.io/github/stars/atharva-badgujar/code-cleaner)
![GitHub forks](https://img.shields.io/github/forks/atharva-badgujar/code-cleaner)
![GitHub issues](https://img.shields.io/github/issues/atharva-badgujar/code-cleaner)
![GitHub pull requests](https://img.shields.io/github/issues-pr/atharva-badgujar/code-cleaner)

## 🎯 Roadmap

- [ ] Support for more languages (Ruby, Swift, Kotlin)
- [ ] VS Code extension
- [ ] GUI version
- [ ] Custom comment templates
- [ ] Configuration file support
- [ ] AI-powered smart comments
- [ ] Integration with GitHub Actions

Want to help? Check out [open issues](https://github.com/atharva-badgujar/code-cleaner/issues)!

## 📧 Contact

- **Author:** Atharva Badgujar
- **Email:** atharvabadgujar1924@gmail.com
- **GitHub:** [@atharva-badgujar](https://github.com/atharva-badgujar)

## ⭐ Show Your Support

Give a ⭐️ if this project helped you!

[![Star History Chart](https://api.star-history.com/svg?repos=atharva-badgujar/code-cleaner&type=Date)](https://star-history.com/atharva-badgujar/code-cleaner&Date)

---

**Made with ❤️ for developers tired of AI comments**

**[⬆ back to top](#code-cleaner-)**
