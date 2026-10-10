# Easy Guide to Building Websites with Antigravity

---

## Part 1: One-Time Setup (Do This Once)

### Step 1: Download & Log In
- Download and install **Antigravity IDE**: [antigravity.google/product/antigravity-ide/](https://antigravity.google/product/antigravity-ide/)
- Open the app and log in with your **Google Pro** account.

### Step 2: Configure Settings
- Click your **profile picture** (top right) -> open **Quick Settings**.
- Set **Auto Execution** -> **Always Proceed**.
- Set **Review Policy** -> **Always Proceed**.

---

## Part 2: Building Your Website (For Every Project)

### Step 1: Get the Template Code
- **Option A (Download ZIP):** Download the repository ZIP file and extract it to a folder on your computer.
- **Option B (Git Clone):** Clone this repository using Git:
  ```bash
  git clone <repository-url>
  ```
- **Important:** If you cloned via Git, delete the `.git` folder inside the project directory so your new website project starts with a fresh Git history.

### Step 2: Open Project Folder in Antigravity
- Launch **Antigravity IDE**.
- Click **File -> Open Folder** and select your project folder.
- *(Note: Next.js and all required configuration files are already set up in this template, so no initial Next.js installation commands are needed!)*

### Step 3: Add Your Content & Research Data
- Place all your project materials into the **`resources`** folder.
- Include your keyword research, Excel spreadsheets (`.xlsx`, `.csv`), documents (`.docx`, `.txt`), competitor notes, and branding/image assets.

### Step 4: Generate Website Code
1. Open the **Chat Panel** on the right side of Antigravity.
2. Type one of these commands and press **Enter**:
   - **Single language site:** `/build-tools-site`
   - **Multi-language site:** `/build-tools-site --multilingual`
3. The AI will analyze your `resources` folder and automatically create a detailed plan file (`PLAN.md`).
4. **Review the Plan:** Open and review `PLAN.md` to confirm the proposed structure and features.
5. **Approve & Build:** Click the **Proceed** button or type `proceed` in the chat to approve.
6. The AI will now write all the code and build the complete application automatically!

### Step 5: Run & Preview Website
- Double-click the **`Run.bat`** file created in your project folder.
- Click the web link (URL) shown in the terminal to view your live site!

