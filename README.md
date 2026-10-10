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

### Step 1: Open Project Folder
- Extract your project `.zip` file.
- In Antigravity, click **File -> Open Folder** and select the extracted folder.

### Step 2: Run Initial Setup
- Open the **Terminal** at the bottom of Antigravity.
- Paste this command and press **Enter**:
  ```bash
  npx -y create-next-app@latest ./
  ```

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
- Double-click the **`Run.bat`** file in your project folder.
- Click the web link (URL) shown in the terminal to view your live site!
