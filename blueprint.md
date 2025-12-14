# Project Blueprint

## Overview

This project is a Flutter application for a blood donation service. The main screen serves as a login/registration page where users can sign up as either a "Donor" or a "Recipient/Hospital". After logging in, users are taken to a dashboard where they can manage their availability, view their donation history, and see recent activity. The app includes a bottom navigation bar for easy access to different sections.

## Style, Design, and Features

### Version 1.3 (New Pages)

*   **Emergency Request Page**: A new screen for creating and submitting emergency blood requests.
*   **Find Donors Page**: A new screen for finding and requesting blood from nearby donors.
*   **Updated History & Profile Pages**: The placeholder pages for History and Profile have been updated with more complete UIs.

### Version 1.2 (Bottom Navigation)

*   **Bottom Navigation Bar**: Added a bottom navigation bar to the dashboard for easy switching between different app sections (Home, History, Requests, Profile).
*   **State Management**: Converted the `HomePage` to a `StatefulWidget` to manage the selected tab index.
*   **Dummy Pages**: Created placeholder pages for the other navigation tabs.

### Version 1.1 (Dashboard & Navigation)

*   **Dummy Login**: A placeholder login flow that navigates to the dashboard upon tapping the "Get OTP" button.
*   **Routing**: Implemented using the `go_router` package for declarative navigation.
*   **Dashboard UI**: A new screen that displays:
    *   User's name and blood group.
    *   Availability toggle.
    *   Action cards for "Donation History", "Requests Nearby", and "Health Check".
    *   A list of recent activities.

### Version 1.0 (Initial Implementation)

*   **UI Design**: A clean, modern interface based on the provided screenshot.
*   **Color Palette**:
    *   Primary Color (for buttons and icons): Red
    *   Background: Off-white/Light Gray
    *   Text: Black and Gray
*   **Typography**:
    *   Utilizes the `google_fonts` package for custom typography.
    *   **Headings**: Bold, large font size.
    *   **Body Text**: Regular font size and weight.
*   **Components**:
    *   **App Logo**: A blood drop icon.
    *   **User Type Toggle**: A toggle button to select between "Donor" and "Recipient/Hospital".
    *   **Phone Number Input**: A text field for users to enter their phone number.
    *   **"Get OTP" Button**: A primary action button.
    *   **Social Logins**: Buttons for "Continue with Google" and "Continue with Apple".
    *   **Terms & Privacy**: A text block with links to the Terms of Service and Privacy Policy.

## Current Plan

*   **Task**: Implement the "Emergency Request" and "Find Donors" pages, and update the existing placeholder pages.
*   **Steps**:
    1.  Update the `blueprint.md` file.
    2.  Create `lib/emergency_request_page.dart` and `lib/find_donors_page.dart`.
    3.  Update the placeholder pages in `lib/pages.dart`.
    4.  Modify `lib/home_page.dart` and `lib/main.dart` to integrate the new pages and navigation.
