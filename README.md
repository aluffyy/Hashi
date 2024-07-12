# Hashi: Building Bridges Between Connections

Hashi is a full-fledged social media app built with Flutter, designed to foster connections and create a vibrant online community. We're in active development, constantly striving to improve the user experience and warmly welcome contributions from talented developers!

## Features

### Current Functionality:
- **User Authentication**: Secure login and registration system.
- **Profiles**: Create a personalized profile with a captivating bio, photos, and essential details.
- **News Feed**: Keep up with the latest posts, updates, and photos from people you follow.
- **Post Creation**: Users can create, edit, and delete posts.
- **Comments & Likes**: Interactive posts with comments and likes.
- **Nearby Network**: Discover and connect with users near you, powered by the Flutter Maps package.
- **Messaging**: Send direct messages to your friends and chat privately.
- **Photo Sharing**: Capture and share life's moments with stunning photos.

### Coming Soon:
- **Push Notifications**: Stay informed with timely updates about your social circle.
- **Group Chats**: Foster larger social interactions with group messaging capabilities.
- **Real-time Notifications**: Stay updated with real-time notifications.
- **Explore More**: We're actively brainstorming exciting features based on user feedback!

## Technologies Used

### Frontend
- **Framework**: Flutter
- **State Management**: Provider
- **UI Design**: Custom Widgets, Material Design

### Backend
- **Framework**: Dart Frog
- **Database**: MySQL
- **ORM**: Prisma
- **Containerization**: Docker
- **APIs**: RESTful APIs for interaction between frontend and backend

## Getting Started

### Prerequisites
- Flutter SDK
- Dart SDK
- Docker
- MySQL

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/Hashi.git
   ```

2. **Backend Setup:**
   - Navigate to the backend directory:
     ```sh
     cd hashi_backend
     ```
   - Build and start Docker containers:
     ```sh
     docker-compose up --build
     ```
   - Run Prisma migrations:
     ```sh
     npx prisma migrate dev
     ```

3. **Frontend Setup:**
   - Navigate to the frontend directory:
     ```sh
     cd hashi_frontend
     ```
   - Get Flutter dependencies:
     ```sh
     flutter pub get
     ```
   - Run the app:
     ```sh
     flutter run
     ```

## Contributing to Hashi

We encourage you to participate in the evolution of Hashi! Here's how you can join the adventure:

1. **Forking the Repository:**
   - Visit the Hashi repository on GitHub and click the "Fork" button in the top-right corner.
   - Alternatively, use the git command:
     ```sh
     git clone --depth=1 https://github.com/aluffyy/Hashi.git
     ```

2. **Cloning Your Fork:**
   - Open your terminal or command prompt.
   - Navigate to your desired local directory and run:
     ```sh
     git clone https://github.com/<your-username>/Hashi.git
     ```

3. **Creating a Branch:**
   - Create a new branch from the `master` branch:
     ```sh
     git checkout -b <your_branch_name>
     ```

4. **Making Your Changes:**
   - Open your preferred code editor and navigate to the cloned Hashi project directory.
   - Implement your code changes and modifications.
   - Thoroughly test your changes to ensure they don't introduce any regressions.

5. **Committing Your Work:**
   - Stage your changes:
     ```sh
     git add <changed_files>
     ```
   - Commit with a clear message:
     ```sh
     git commit -m "<your_commit_message>"
     ```

6. **Pushing to Your Fork:**
   - Push your changes to your forked repository:
     ```sh
     git push origin <your_branch_name>
     ```

7. **Creating a Pull Request:**
   - Visit your forked repository on GitHub.
   - Click on "Pull requests" and then "New pull request."
   - Select your branch containing your changes.
   - Compare your branch with the upstream repository's `master` branch.
   - Provide a detailed pull request description explaining your modifications.
   - Submit your pull request for review.

## Collaboration and Communication

Feel free to reach out with any questions, suggestions, or feedback:
- Email: muustaakiimm@gmail.com
- Telegram: t.me/aluffyyy
- Project Issues: [GitHub Issues](https://github.com/aluffyy/Hashi/issues)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

```
