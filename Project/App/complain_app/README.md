# complain_app

Teacher-Student Complaint App
This is a Flutter-based Teacher-Student Complaint App designed to streamline the process of submitting and managing complaints within an educational institution. The app supports voice-to-text functionality for easier complaint submission and integrates with a web API for authentication and complaint tracking.

Features
Core Functionalities
Login Integration: Users can log in with web authentication, allowing both teachers and students to access the app securely.
Complaint Submission: Users can file complaints using text or voice-to-text input.
Voice-to-Text: The app supports speech-to-text functionality, enabling users to submit complaints by speaking, which is converted into text for easier accessibility.
Search & Filter Complaints: Users can search for specific complaints or filter by status or category.
Key Components
Screens:

Main Screen: Serves as the landing page where users can navigate to other sections, such as submitting complaints or viewing past complaints.
Complaint Submission (send_complain.dart): Allows users to create new complaints, with options for both text input and voice-to-text input.
Complaint List: Displays all submitted complaints in a list format, with options to search and highlight key terms.
Models:

User Model: Represents user information required for login and profile.
Complaint Model: Structures complaint data, including complaint details, status, and timestamps.
Data:

dummy_data.dart: Contains sample data for testing and demonstration purposes.
Utilities:

substring_highlighted.dart: Highlights matched search terms for easier complaint navigation.
utils.dart: General utility functions for operations across the app.
Backend Integration
The app uses a web API to handle login authentication and complaint data. This allows for seamless syncing of data and user verification, ensuring complaints are stored and tracked on a server.
