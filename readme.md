# Secure Notes Application

A full-stack secure notes application built with Spring Boot (backend) and React (frontend). This application provides users with a secure platform for storing and managing their personal notes with robust authentication, authorization, and security features.

## 🚀 Features

- **User Authentication & Authorization**: JWT-based authentication with role-based access control
- **OAuth2 Integration**: Login with GitHub and Google
- **Two-Factor Authentication (2FA)**: Enhanced security with TOTP
- **Secure Note Management**: Create, read, update, and delete notes with encryption
- **Admin Panel**: User management and audit logging
- **Password Reset**: Email-based password recovery
- **Audit Logging**: Track user activities and system events
- **Responsive UI**: Modern React interface with Tailwind CSS

## 🛠️ Technology Stack

### Backend
- **Java 21** with Spring Boot 3.5.0
- **Spring Security** for authentication and authorization
- **Spring Data JPA** for database operations
- **JWT** for token-based authentication
- **H2 Database** (development) / **MySQL** (production)
- **Maven** for dependency management

### Frontend
- **React 18** with modern hooks
- **Tailwind CSS** for styling
- **Material-UI** components
- **Axios** for API communication
- **React Router** for navigation
- **React Hook Form** for form handling

## File Structure

```
Secure Notes/
├── notes/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/
│   │   │   │   └── com/
│   │   │   │       └── secure/
│   │   │   │           └── notes/
│   │   │   │               ├── config/
│   │   │   │               │   └── OAuth2LoginSuccessHandler.java
│   │   │   │               ├── controllers/
│   │   │   │               │   ├── AdminController.java
│   │   │   │               │   ├── AuditLogController.java
│   │   │   │               │   ├── AuthController.java
│   │   │   │               │   ├── CsrfController.java
│   │   │   │               │   └── NoteController.java
│   │   │   │               ├── dtos/
│   │   │   │               │   └── UserDTO.java
│   │   │   │               ├── HelloController.java
│   │   │   │               ├── models/
│   │   │   │               │   ├── AppRole.java
│   │   │   │               │   ├── AuditLog.java
│   │   │   │               │   ├── Note.java
│   │   │   │               │   ├── PasswordResetToken.java
│   │   │   │               │   ├── Role.java
│   │   │   │               │   └── User.java
│   │   │   │               ├── NotesApplication.java
│   │   │   │               ├── repositories/
│   │   │   │               │   ├── AuditLogRepository.java
│   │   │   │               │   ├── NoteRepository.java
│   │   │   │               │   ├── PasswordResetTokenRepository.java
│   │   │   │               │   ├── RoleRepository.java
│   │   │   │               │   └── UserRepository.java
│   │   │   │               ├── security/
│   │   │   │               │   ├── jwt/
│   │   │   │               │   │   ├── AuthEntryPointJwt.java
│   │   │   │               │   │   ├── AuthTokenFilter.java
│   │   │   │               │   │   └── JwtUtils.java
│   │   │   │               │   ├── request/
│   │   │   │               │   │   ├── LoginRequest.java
│   │   │   │               │   │   └── SignupRequest.java
│   │   │   │               │   ├── response/
│   │   │   │               │   │   ├── LoginResponse.java
│   │   │   │               │   │   ├── MessageResponse.java
│   │   │   │               │   │   └── UserInfoResponse.java
│   │   │   │               │   ├── SecurityConfig.java
│   │   │   │               │   └── services/
│   │   │   │               │       ├── UserDetailsImpl.java
│   │   │   │               │       └── UserDetailsServiceImpl.java
│   │   │   │               │   └── WebConfig.java
│   │   │   │               ├── services/
│   │   │   │               │   ├── AuditLogService.java
│   │   │   │               │   ├── impl/
│   │   │   │               │   │   ├── AuditLogServiceImpl.java
│   │   │   │               │   │   ├── NoteServiceImpl.java
│   │   │   │               │   │   ├── TotpServiceImpl.java
│   │   │   │               │   │   └── UserServiceImpl.java
│   │   │   │               │   ├── NoteService.java
│   │   │   │               │   ├── TotpService.java
│   │   │   │               │   └── UserService.java
│   │   │   │               └── util/
│   │   │   │                   ├── AuthUtil.java
│   │   │   │                   └── EmailService.java
│   │   │   ├── resources/
│   │   │   │   ├── static/
│   │   │   │   └── templates/
│   │   ├── test/
│   │   │   └── java/
│   │   │       └── com/
│   │   │           └── secure/
│   │   │               └── notes/
│   │   │                   └── NotesApplicationTests.java
│   ├── pom.xml
│   └── mvnw mvnw.cmd
├── secure-notes-react/
│   ├── public/
│   │   ├── favicon.ico
│   │   ├── index.html
│   │   ├── logo192.png
│   │   ├── logo512.png
│   │   ├── manifest.json
│   │   └── robots.txt
│   ├── src/
│   │   ├── App.js
│   │   ├── App.test.js
│   │   ├── components/
│   │   │   ├── aboutPage/
│   │   │   │   └── AboutPage.js
│   │   │   ├── AuditLogs/
│   │   │   │   ├── Admin.js
│   │   │   │   ├── AdminAreaSidebar.js
│   │   │   │   ├── AdminAuditLogs.js
│   │   │   │   ├── AuditLogsDetails.js
│   │   │   │   ├── UserDetails.js
│   │   │   │   └── UserList.js
│   │   │   ├── Auth/
│   │   │   │   ├── AccessDenied.js
│   │   │   │   ├── ForgotPassword.js
│   │   │   │   ├── Login.js
│   │   │   │   ├── OAuth2RedirectHandler.js
│   │   │   │   ├── ResetPassword.js
│   │   │   │   ├── Signup.js
│   │   │   │   └── UserProfile.js
│   │   │   ├── contactPage/
│   │   │   │   └── ContactPage.js
│   │   │   ├── Errors.js
│   │   │   ├── Footer/
│   │   │   │   └── Footer.js
│   │   │   ├── InputField/
│   │   │   │   └── InputField.js
│   │   │   ├── LandingPage.js
│   │   │   ├── LandingPageCom/
│   │   │   │   ├── Brands/
│   │   │   │   │   ├── BrandItem.js
│   │   │   │   │   └── Brands.js
│   │   │   │   ├── CardSlider.js
│   │   │   │   ├── State.js
│   │   │   │   └── Testimonial/
│   │   │   │       ├── Testimonial.js
│   │   │   │       └── TestimonialItem.js
│   │   │   ├── Navbar.js
│   │   │   ├── Notes/
│   │   │   │   ├── AllNotes.js
│   │   │   │   ├── CreateNote.js
│   │   │   │   ├── NoteDetails.js
│   │   │   │   └── NoteItems.js
│   │   │   ├── NotFound.js
│   │   │   ├── PopModal.js
│   │   │   └── ProtectedRoute.js
│   │   ├── index.css
│   │   ├── index.js
│   │   ├── logo.svg
│   │   ├── reportWebVitals.js
│   │   ├── services/
│   │   │   └── api.js
│   │   ├── setupTests.js
│   │   ├── store/
│   │   │   └── ContextApi.js
│   │   └── utils/
│   │       ├── Buttons.js
│   │       ├── tableColumn.js
│   │       └── truncateText.js
│   ├── package.json
│   ├── package-lock.json
│   └── tailwind.config.js
└── readme.md
```

## Backend API Endpoints

### AuthController
*   **POST /api/auth/public/signin** - Authenticate user and return JWT token.
*   **POST /api/auth/public/signup** - Register a new user.
*   **GET /api/auth/user** - Get user details.
*   **GET /api/auth/username** - Get current authenticated username.
*   **POST /api/auth/public/forgot-password** - Send password reset email.
*   **POST /api/auth/public/reset-password** - Reset user password.
*   **POST /api/auth/enable-2fa** - Enable 2FA for the authenticated user.
*   **POST /api/auth/disable-2fa** - Disable 2FA for the authenticated user.
*   **POST /api/auth/verify-2fa** - Verify 2FA code for the authenticated user.
*   **GET /api/auth/user/2fa-status** - Get 2FA status for the authenticated user.
*   **POST /api/auth/public/verify-2fa-login** - Verify 2FA code during login.

### AdminController
*   **GET /api/admin/getusers** - Get all users.
*   **PUT /api/admin/update-role** - Update user role.
*   **GET /api/admin/user/{id}** - Get user by ID.
*   **PUT /api/admin/update-lock-status** - Update account lock status.
*   **GET /api/admin/roles** - Get all roles.
*   **PUT /api/admin/update-expiry-status** - Update account expiry status.
*   **PUT /api/admin/update-enabled-status** - Update account enabled status.
*   **PUT /api/admin/update-credentials-expiry-status** - Update credentials expiry status.
*   **PUT /api/admin/update-password** - Update user password.

### AuditLogController
*   **GET /api/audit** - Get all audit logs (Admin only).
*   **GET /api/audit/note/{id}** - Get audit logs for a specific note (Admin only).

### CsrfController
*   **GET /api/csrf-token** - Get CSRF token.

### NoteController
*   **POST /api/notes** - Create a new note for the authenticated user.
*   **GET /api/notes** - Get all notes for the authenticated user.
*   **PUT /api/notes/{noteId}** - Update a specific note for the authenticated user.
*   **DELETE /api/notes/{noteId}** - Delete a specific note for the authenticated user.

### HelloController
*   **GET /hello** - Returns "Hello".
*   **GET /contact** - Returns "Contact".
*   **GET /hi** - Returns "Hi".

## `application.properties` Structure

```properties
spring.application.name=notes
spring.security.user.name=admin
spring.security.user.password=<YOUR_ADMIN_PASSWORD>

spring.datasource.url=jdbc:mysql://localhost:3306/securenotes
spring.datasource.username=<YOUR_DB_USERNAME>
spring.datasource.password=<YOUR_DB_PASSWORD>

spring.jpa.hibernate.ddl-auto=update
# spring.sql.init.mode=always
# spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect

spring.app.jwtSecret=<YOUR_JWT_SECRET>
spring.app.jwtExpirationMs=86400000

logging.level.org.springframework.security=DEBUG

# email settings
spring.mail.host=smtp.gmail.com
spring.mail.port=587
spring.mail.username=<YOUR_EMAIL_USERNAME>
spring.mail.password=<YOUR_EMAIL_APP_PASSWORD>
spring.mail.properties.mail.smtp.auth=true
spring.mail.properties.mail.smtp.starttls.enable=true

# GitHub OAuth2 configuration
spring.security.oauth2.client.registration.github.client-id=<YOUR_GITHUB_CLIENT_ID>
spring.security.oauth2.client.registration.github.client-secret=<YOUR_GITHUB_CLIENT_SECRET>
spring.security.oauth2.client.registration.github.scope=read:user,user:email

# Google OAuth2 configuration
spring.security.oauth2.client.registration.google.client-id=<YOUR_GOOGLE_CLIENT_ID>
spring.security.oauth2.client.registration.google.client-secret=<YOUR_GOOGLE_CLIENT_SECRET>

frontend.url=http://localhost:3000
```

## 📋 Prerequisites

- **Java 21** or higher
- **Node.js 18+** and npm
- **Maven 3.6+**
- **MySQL** (for production) or use H2 (for development)

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/just-rsr/Secure-Notes-Application.git
cd Secure-Notes-Application
```

### 2. Backend Setup

1. Navigate to the backend directory:
   ```bash
   cd notes
   ```

2. Copy the configuration template:
   ```bash
   cp src/main/resources/application.properties.template src/main/resources/application.properties
   ```

3. Update `application.properties` with your configuration:
   - Database credentials (if using MySQL)
   - JWT secret key
   - Email settings for password reset
   - OAuth2 client credentials

4. Build and run the backend:
   ```bash
   ./mvnw clean install
   ./mvnw spring-boot:run
   ```

The backend will start on `http://localhost:8080`

### 3. Frontend Setup

1. Navigate to the frontend directory:
   ```bash
   cd secure-notes-react
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Start the development server:
   ```bash
   npm start
   ```

The frontend will start on `http://localhost:3000`

## 🔧 Configuration

### Database Configuration

#### Development (H2 - Default)
The application comes pre-configured with H2 in-memory database for development:
```properties
spring.datasource.url=jdbc:h2:mem:testdb
spring.h2.console.enabled=true
```
Access H2 console at: `http://localhost:8080/h2-console`

#### Production (MySQL)
For production, update `application.properties`:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/securenotes
spring.datasource.username=YOUR_DB_USERNAME
spring.datasource.password=YOUR_DB_PASSWORD
```

### OAuth2 Setup

#### GitHub OAuth2
1. Go to GitHub Settings > Developer settings > OAuth Apps
2. Create a new OAuth App with:
   - Homepage URL: `http://localhost:3000`
   - Authorization callback URL: `http://localhost:8080/login/oauth2/code/github`
3. Update `application.properties` with your client ID and secret

#### Google OAuth2
1. Go to Google Cloud Console > APIs & Services > Credentials
2. Create OAuth 2.0 Client ID with:
   - Authorized redirect URI: `http://localhost:8080/login/oauth2/code/google`
3. Update `application.properties` with your client ID and secret

## 📱 Usage

1. **Registration**: Create a new account or use OAuth2 login
2. **Authentication**: Login with email/password or OAuth2 providers
3. **2FA Setup**: Enable two-factor authentication for enhanced security
4. **Note Management**: Create, edit, and organize your secure notes
5. **Admin Features**: Manage users and view audit logs (admin role required)

## 🔒 Security Features

- **JWT Authentication**: Secure token-based authentication
- **Password Encryption**: BCrypt password hashing
- **CSRF Protection**: Cross-site request forgery protection
- **Input Validation**: Server-side validation for all inputs
- **SQL Injection Prevention**: JPA/Hibernate protection
- **XSS Protection**: Content sanitization
- **Audit Logging**: Track all user activities

## 🏗️ Project Structure

```
Secure-Notes-Application/
├── notes/                          # Spring Boot Backend
│   ├── src/main/java/com/secure/notes/
│   │   ├── config/                 # Configuration classes
│   │   ├── controllers/            # REST controllers
│   │   ├── models/                 # JPA entities
│   │   ├── repositories/           # Data repositories
│   │   ├── security/               # Security configuration
│   │   ├── services/               # Business logic
│   │   └── util/                   # Utility classes
│   ├── src/main/resources/
│   │   └── application.properties  # Configuration file
│   └── pom.xml                     # Maven dependencies
├── secure-notes-react/             # React Frontend
│   ├── src/
│   │   ├── components/             # React components
│   │   ├── services/               # API services
│   │   ├── store/                  # Context API
│   │   └── utils/                  # Utility functions
│   └── package.json                # NPM dependencies
└── README.md                       # Project documentation
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Milind Saini** - [GitHub Profile](https://github.com/MilindSaini)

## 🙏 Acknowledgments

- Spring Boot team for the excellent framework
- React team for the powerful frontend library
- All contributors who help improve this project

---

⭐ **Star this repository if you find it helpful!**


