# Easy Guide to Building Websites with Antigravity

---

## Part 1: One-Time Setup (Do This Once)

### Step 1: Download & Log In
- Download and install **Antigravity IDE**: [antigravity.google/product/antigravity-ide/](https://antigravity.google/product/antigravity-ide/)
- Download and install **Node.js**: [nodejs.org](https://nodejs.org/) (if not already installed)
- Open the **Antigravity IDE** application (desktop application, not a web browser or mobile app) and log in with your **Google Pro** account.

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
  git clone https://github.com/m-abdullah-awais/antigravity-nextjs-tools-site-template.git
  ```
- **Important:** If you cloned via Git, delete the `.git` folder inside the project directory so your new website project starts with a fresh Git history.

### Step 2: Open Project Folder in Antigravity
- Launch **Antigravity IDE**.
- Click **File -> Open Folder** and select your project folder.
- *(Note: Next.js and all required configuration files are already set up in this template, so no initial Next.js installation commands are needed!)*

### Step 3: Add Your Content & Research Data
- Place all your project materials into the **`resources/`** folder.
- Include your keyword research, Excel spreadsheets (`.xlsx`, `.csv`), documents (`.docx`, `.txt`), competitor notes, and branding/image assets.
- *(Optional)* Place any SEO audit reports into the **`temp/seo-reports/`** folder.

### Step 4: Generate Website Code & Fix SEO
1. Open the **Chat Panel** on the right side of Antigravity IDE.
2. Type one of these commands and press **Enter**:
   - **Single language site:** `/build-tools-site`
   - **Multi-language site:** `/build-tools-site --multilingual`
   - **Analyze & Fix SEO audit reports:** `/analyze-seo-reports`
3. The AI will analyze your `resources/` (and `temp/seo-reports/`) folder and automatically create a detailed plan file (`PLAN.md`).
4. **Review the Plan:** Open and review `PLAN.md` to confirm the proposed structure and features.
5. **Approve & Build:** Click the **Proceed** button or type `proceed` in the chat to approve.
6. The AI will now write all the code and build the complete application automatically!

### Step 5: Run & Preview Website
- Double-click the **`Run.bat`** file created in your project folder.
- *(Note: `Run.bat` automatically checks for required dependencies and installs `node_modules` if they are not already installed before launching the application.)*
- Click the web link (URL) shown in the terminal (`http://localhost:3050`) to view your live site!
