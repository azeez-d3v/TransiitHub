# 🚀 TransitHub | Capstone Project

**TransitHub** is a sophisticated transportation management platform designed to streamline the coordination between Customers, Coordinators, Operators, and Drivers. The platform is divided into a web application for Customers and Coordinators and a mobile application dedicated to Operators and Drivers.

### Screen Captures
#### Driver Login
![Driver Login](/Android%20-%201080x2400/driver_login.png)  
*A secure login interface for drivers*

#### Driver Interface
![Driver UI](/Android%20-%201080x2400/driver_u_i2.png)  
*Main dashboard for drivers to monitor their activities*

#### Personnel Management
![Personnel](/Android%20-%201080x2400/personnel.png)  
*Team management and collaboration tools*

#### Account Creation
![Create Account](/Android%20-%201080x2400/create_account.png)  
*Step-by-step account creation process*

#### Profile View
![Profile](/Android%20-%201080x2400/profile.png)  
*A centralized view of user profile information*

#### Fleet Tracking
![Tracker](/Android%20-%201080x2400/tracker.png)  
*Real-time tracking and location monitoring*

#### Active Job Dashboard
![Active Jobs](/Android%20-%201080x2400/list_active_jobs.png)  
*Current jobs and their statuses*

#### Vehicle Management
![Vehicle List](/Android%20-%201080x2400/list_of_vehicles.png)  
*Comprehensive overview of fleet vehicles*

#### Driver Linkage
![Driver Link](/Android%20-%201080x2400/driver_link.png)  
*Connecting drivers with their vehicle assignments*

#### Login Default
![Login Default](/Android%20-%201080x2400/login_default.png)  
*Default login screen for user authentication*

#### Profile Editing
![Profile Edit](/Android%20-%201080x2400/profile_edit.png)  
*Customizable profile settings with instant updates*

#### Homepage Dashboard
![Homepage](/Android%20-%201080x2400/homepage.png)  
*Key features accessible at a glance*

---

## 🌟 Key Features

### 📝 Customer Job Input
- Customers can input job details via the web application, specifying call times, pickup and destination points, vehicle types, and the number of vehicles needed.
- These details are converted into booking requests for Coordinators to review and manage.

### 📋 Coordinator Management
- Coordinators oversee booking requests, selecting from the pool of job requests and matching them with available Operators.
- Coordinators can view Operators' schedules and vehicle availability on their mobile app.
- Assigning bookings to Operators triggers notifications, informing them of their new job assignments.
- Unassigned bookings within the specified availability window are automatically purged from the system.

### 🚚 Operator and Driver Workflow
- Operators receive job orders with barcodes in the job details.
- Drivers, operating in guest mode, can scan these barcodes to access job information.
- Operators who take on the Driver role can bypass barcode scanning and proceed directly to the job.
- Vehicle tracking updates are required at various stages: dispatch, arrival, loading, in transit, unloading, and delivery.
- Photographic evidence is captured at each stage for verification purposes.
- The mobile interface includes an incident report feature for Drivers to report issues during transit back to the Coordinator.


### 💬 Communication and Notifications
- An integrated chat system facilitates real-time communication among users, enhancing collaboration and support.
- Conversations are tracked, and messages are marked as read or unread to maintain an efficient flow of information.
- The notification system alerts users to job assignments, incident reports, and other critical updates, keeping all stakeholders promptly informed.

## 🛠 Technologies Used
- **Web Application:** Built using modern web technologies for Customers and Coordinators.
- **Mobile Application:** Developed using Flutter for cross-platform compatibility, dedicated to Operators and Drivers.
- **Database:** Firebase Firestore for real-time data synchronization.
- **Communication:** Integrated chat system for real-time messaging.
- **Notification System:** Alerts users to important updates and job assignments.

## 🎯 Project Goals
- Streamline the coordination process between Customers, Coordinators, Operators, and Drivers.
- Ensure real-time tracking and updates of vehicle statuses.
- Facilitate seamless communication and collaboration among all user roles.
- Provide Partners with a reliable interface to book and track shipments.
