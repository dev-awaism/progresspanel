# ProgressPanel

A personal task and issue management application built with Python and Tkinter. Organize your projects with boards, cards, and custom tags in a clean, modern interface.

## Features

### What's Working

- ✅ Create and manage multiple projects
- ✅ Add boards to organize your work
- ✅ Create task cards with descriptions
- ✅ Custom tag system for categorization
- ✅ Modern Sun Valley UI theme
- ✅ Local SQLite storage (one database per project)
- ✅ Tree-view navigation

### Coming Soon

- [ ] Drag and drop cards between columns
- [ ] Background images for boards/cards
- [ ] Task priorities and due dates
- [ ] Comments and attachments
- [ ] Calendar view
- [ ] Git integration

## Quick Start

### Requirements

- Python 3.8+
- `send2trash` package

### Installation

```bash
# Clone the repo
git clone https://github.com/yourusername/ProgressPanel.git
cd ProgressPanel

# Install dependencies
pip install send2trash

# Run the app
python main.py
```

### First Steps

1. Launch the app - you'll see a blank home screen
2. Click "New Project" to create your first project
3. Select the project in the tree view
4. Click "New Board" to add a board
5. Select a board and click "New Card" to add tasks

## How It Works

### Project Structure

```
ProgressPanel/
├── main.py              # Main application
├── db_manager.py        # Database operations
├── consts.py           # Configuration
├── User_Projects/      # Project databases
└── Sun-Valley-ttk-theme-svg/  # UI theme
```

### Database

Each project gets its own SQLite database stored in `User_Projects/`. The app automatically creates:

- `Cards` table for tasks
- `Boards` table for boards
- `Relations` table for tags and card-board relationships
- `Info` table for project metadata

### Key Components

**DBManager** - Handles all database operations:

```python
# Create a project
manager.add_project("My Project", "Description")

# Add a board
manager.add_board(board_uid, "Board Name", "Description")

# Add a card
manager.add_card(card_uid, "Task Name", "Description", "color")
```

**UI Forms** - Dynamic forms for data entry:

- `AddProjectForm` - Create new projects
- `AddBoardForm` - Add boards to projects
- `AddCardForm` - Create task cards
- `EditCardForm` - Modify existing cards

## Usage Examples

### Creating a Project

1. Click "New Project" button
2. Enter project name and description
3. Click "Confirm" to create

### Adding Tags to Cards

1. Select a board
2. Create a card
3. In the edit form, add custom tags like:
   - Priority: High/Medium/Low
   - Status: Todo/In Progress/Done
   - Type: Bug/Feature/Enhancement

### Filtering by Tags

Use the tag dropdown in the top toolbar to filter cards by their tags.

## Development

### Running Tests

```bash
# Test database operations
python db_manager.py
```

### Debug Mode

Set `DBG = 0` in `consts.py` to disable debug output.

### Code Style

- Follow PEP 8
- Use meaningful variable names
- Add docstrings for functions

## Known Issues

- The app currently uses a placeholder connection prompt (can be bypassed)
- Some planned features are not yet implemented
- Database files are stored locally in `User_Projects/`

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Credits

- UI theme: [Sun Valley ttk theme](https://github.com/rdbende/Sun-Valley-ttk-theme-svg) by rdbende
- Built with Python and Tkinter

---

**ProgressPanel** - Simple project management for developers.
# 0fed4f9a
# 6d833ced
# 1faf9ff8
# a367207b
# e92149ad
# 850970a4
# 16833ef4
# 58471e18
