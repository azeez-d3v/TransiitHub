# 🚀 TransitHub | Capstone Project

**TransitHub** is a sophisticated transportation management platform designed to streamline the coordination between Customers, Coordinators, Operators, and Drivers. The platform is divided into a web application for Customers and Coordinators and a mobile application dedicated to Operators and Drivers.

### Screen Captures
<div style="display: flex; flex-wrap: wrap; gap: 16px; justify-content: space-between;">
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/driver_login.png" alt="Driver Login" style="max-width: 100%; height: auto;" />
<p><em>A secure login interface for drivers</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/driver_u_i2.png" alt="Driver UI" style="max-width: 100%; height: auto;" />
<p><em>Main dashboard for drivers to monitor their activities</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/personnel.png" alt="Personnel" style="max-width: 100%; height: auto;" />
<p><em>Team management and collaboration tools</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/create_account.png" alt="Create Account" style="max-width: 100%; height: auto;" />
<p><em>Step-by-step account creation process</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/profile.png" alt="Profile" style="max-width: 100%; height: auto;" />
<p><em>A centralized view of user profile information</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/tracker.png" alt="Tracker" style="max-width: 100%; height: auto;" />
<p><em>Real-time tracking and location monitoring</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/list_active_jobs.png" alt="Active Jobs" style="max-width: 100%; height: auto;" />
<p><em>Current jobs and their statuses</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/list_of_vehicles.png" alt="Vehicle List" style="max-width: 100%; height: auto;" />
<p><em>Comprehensive overview of fleet vehicles</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/driver_link.png" alt="Driver Link" style="max-width: 100%; height: auto;" />
<p><em>Connecting drivers with their vehicle assignments</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/login_default.png" alt="Login Default" style="max-width: 100%; height: auto;" />
<p><em>Default login screen for user authentication</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/profile_edit.png" alt="Profile Edit" style="max-width: 100%; height: auto;" />
<p><em>Customizable profile settings with instant updates</em></p>
</div>
<div style="flex: 1 1 calc(33.333% - 16px); text-align: center;">
<img src="screenshots/homepage.png" alt="Homepage" style="max-width: 100%; height: auto;" />
<p><em>Key features accessible at a glance</em></p>
</div>
</div>

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
