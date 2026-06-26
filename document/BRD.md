BUSINESS REQUIREMENTS DOCUMENT
(BRD)
Karamchaari Application
Phase 1 – Static Corporate Application Development  
Version: 1.0  
Document Type: Business Requirements Document (BRD)  
Project: Karmachari Application  
Platform: Flutter Web, Mobile, Tablet and Larger Screens  
Prepared For: Karamchaari
Development Standard: Clean Architecture + BLoC + SOLID Principles + Design Patterns
1. Executive Summary  
   Karamchari Application is designed to help employees manage daily attendance and submit daily
   work updates to HR efficiently.
   Phase 1 focuses on developing a completely static mobile application without any backend,
   database, API integration, authentication, or administration panel.
   All application data shall be stored locally using device storage. The application will allow
   employees to record attendance information, maintain project-related work updates, and send
   daily reports through Gmail with prefilled email content.
   The objective is to provide a simple, user-friendly, and scalable employee reporting solution that
   can be enhanced with backend capabilities in future phases.
2. Business Objectives  
   Primary Objectives  
   ● Manage Employee attendance records.  
   ● Capture daily work updates.  
   ● Simplify reporting process.
   ● Improve communication between employees and HR.  
   ● Reduce manual email drafting efforts.
   ● Maintain project-wise work records.  
   Secondary Objectives  
   ● Create a centralized format.  
   ● Improve reporting consistency.  
   ● Prepare foundation for future backend integration.  
   ● Enhance employee productivity.
3. Project Scope  
   Included in Phase 1  
   Static Mobile Application
   ● Mobile  UI Responsive Design  
   ● Android Responsive Design  
   ● Desktop Responsive Design  
   ● iOS Application
   Settings Module
   • Save HR Email IDs
   • Save Reporting Manager Names
   • Save Reporting HR Names
   • Save Project Names
   • Save Employee Mobile Number
   Attendance Module
   • Date Selection
   • Entry Time Selection
   • Exit Time Selection
   Daily Work Update Module
   • Project Selection
   • Work Description Entry
   • Manager Selection
   • HR Selection
   Email Module
   • Gmail Integration
   • Auto-filled Subject
   • Auto-filled Email Body
   Local Storage
   • Shared Preferences
   • Local Device Storage
4. Out of Scope  
   The following functionalities are explicitly excluded from Phase 1:  
   Backend  
   ● Database Integration  
   ● Firebase  
   ● Firestore  
   ● Supabase  
   ● APIs  
   Administration  
   ● Admin Panel  
   ● CMS  
   ● Content Management  
   User Management  
   ● Login  
   ● Registration  
   ● Authentication  
   ● Authorization  
   Reporting  
   ● Analytics Dashboard
   ● Attendance Reports
   ● Employee Tracking
   These features may be included in future phases.
5. Target Users  
   Internal Users  
   Employees
   ● Daily Attendance Entry
   ● Daily Work Reporting
   HR Team
   ● Receive Daily Work updates
   Reporting Managers  
   • Monitor Employee Work Updates
6. Application Structure  
   Core Pages
1. Home Screen
2. Splash Screen
3. Settings Screen
4. Attendance Screen
5. Daily Work Update Screen
7. Setting Screen
   Fields
   • HR Email IDs
   • Reporting Manager Name
   • Reporting HR Name
   • Project Names
   • Employee Mobile Number
   Functionality
   • Add Records
   • Update Records
   • Delete Records
   • Save Records Locally
8. Attendance & Daily Update Screen
   Fields
   • Date
   • Entry Time
   • Exit Time
   • Project Name
   • Today’s Work Details
   • HR Email
   • Reporting Manager
   • Reporting HR
9. Email Submission Flow
   When the user clicks Submit:
   • Gmail Application Opens Automatically
   • Subject is Auto-filled
   • Email Body is Auto-filled
   • User Reviews Details
   • User Sends Email
10. Home Page Structure  
    Sections  
    Welcome Messages
    Attendance Entry Button
    Daily Update Button
    Settings Button
    Recent Updates Summary
11. Technical Architecture  
    Frontend Framework  
    Flutter Web  
    Architecture Pattern  
    Clean Architecture  
    State Management  
    BLoC  
    Design Principles  
    SOLID Principles  
    Local Storage
    Shared Preferences
12. Design Patterns  
    The following design patterns shall be adopted:  
    Repository Pattern (Future Ready)  
    Factory Pattern  
    Singleton Pattern  
    Builder Pattern  
    Strategy Pattern (Future Ready)  
    Dependency Injection Pattern
13. Project Structure  
    lib/  
    ├── config/  
    │  
    ├── core/  
    │  
    ├── shared/  
    │  
    ├── features/  
    │ ├── setting/  
    │ ├── attendance/  
    │ ├── daily_update/
    │ ├── email/  
    │  
    │  
    │  
    ├── app.dart  
    │  
    └── main.dart
14. Routing Structure  
    /
    /splash
    /home
    /settings
    /attendance
    /daily-update
    /email-preview
    /send-report
15. Responsive Design Requirements  
    Mobile  
    320px – 480px  
    Tablet  
    768px – 1024px  
    Laptop  
    1280px+  
    Desktop  
    1440px+
16. Non-Functional Requirements  
    Performance  
    ● Fast page loading  
    ● Optimized local storage  
    Scalability  
    ● Future backend integration ready  
    Maintainability  
    ● Modular architecture  
    Accessibility  
    ● Simple User Interface
    ● Easy Navigation
17. Deliverables  
    • Flutter Mobile Application
    • Settings Module
    • Attendance Module
    • Daily Update Module
    • Gmail Integration
    • Local Storage Setup
    • Architecture Setup
18. Estimated Scope Summary  
    Core Pages  
    5
    Settings Module
    1
    Attendance Module
    1
    Daily Update Module
    1
    Total Estimated Pages  
    8 Pages  
    Architecture  
    Clean Architecture + BLoC + SOLID + Design Patterns + GoRouter  
    Development Phase  
    Phase 1 (Static Website)  
    Future Readiness  
    Prepared for Backend Integration, Employee Management, Attendance Reports, Analytics
    Dashboard, and Cloud Storage in future phases.  