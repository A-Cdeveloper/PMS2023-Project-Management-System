# PMS2023 - Project Management System

A full-stack project management system built with React frontend and Node.js backend, featuring client management, project tracking, task management, and offer generation capabilities.

## 🚀 Features

- **User Management**: Authentication and user role management
- **Client Management**: Store and manage client information
- **Project Management**: Create and track projects
- **Task Management**: Organize and monitor project tasks
- **Service Management**: Manage services offered
- **Offer Generation**: Create and manage client offers
- **PDF Generation**: Generate PDF documents for offers and tasks
- **File Upload**: Handle file uploads with size limits
- **Database Management**: Backup and restore functionality

## 🛠️ Tech Stack

### Frontend

- **React 18** - UI library
- **Vite** - Build tool and development server
- **React Router DOM** - Client-side routing
- **React Query (TanStack Query)** - Data fetching and caching
- **Styled Components** - CSS-in-JS styling
- **React Hook Form** - Form handling
- **React PDF Renderer** - PDF generation
- **Recharts** - Data visualization
- **React Icons** - Icon library
- **React Hot Toast** - Notifications

### Backend

- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **MySQL2** - Database driver
- **JWT** - Authentication
- **Bcrypt** - Password hashing
- **Nodemailer** - Email functionality
- **Express FileUpload** - File upload handling
- **CORS** - Cross-origin resource sharing

## 📁 Project Structure

```
PMS2023/
├── frontend/                 # React frontend application
│   ├── src/
│   │   ├── features/        # Feature-based components
│   │   ├── pages/           # Page components
│   │   ├── ui/              # Reusable UI components
│   │   ├── services/        # API services
│   │   ├── hooks/           # Custom React hooks
│   │   ├── context/         # React context providers
│   │   └── styles/          # Global styles
│   ├── public/              # Static assets
│   └── package.json
├── backend/                  # Node.js backend application
│   ├── routes/              # API route handlers
│   ├── utils/               # Utility functions
│   ├── public/              # Static files
│   └── package.json
└── README.md
```

## 🚀 Getting Started

### Prerequisites

- Node.js (v16 or higher)
- MySQL database
- Git

### Installation

**Clone the repository**

**Install Frontend Dependencies**

**Install Backend Dependencies**

**Environment Setup**

Create `.env` file in the backend directory:

**Database Setup**

- Create a MySQL database
- Import the database schema (check `backend/` for SQL files)

### Running the Application

**Start Backend Server**

The backend will run on `http://localhost:8080`

**Start Frontend Development Server**

The frontend will run on `http://localhost:5173`

**Build for Production**

## 📚 API Endpoints

The backend provides the following API routes:

- `/users` - User management
- `/clients` - Client management
- `/projects` - Project management
- `/tasks` - Task management
- `/services` - Service management
- `/offers` - Offer management
- `/settings` - Application settings
- `/upload` - File upload handling
- `/managedb` - Database management

## 🔧 Development Scripts

### Frontend

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint

### Backend

- `npm run dev` - Start development server with nodemon
- `npm start` - Start production server
- `npm run format:check` - Check code formatting
- `npm run format:write` - Format code

## 📝 License

This project is licensed under the ISC License.

## 🤝 Contributing

1.  Fork the repository
2.  Create a feature branch
3.  Commit your changes
4.  Push to the branch
5.  Create a Pull Request

## 📞 Support

For support and questions, please open an issue in the repository.

```
# Frontend
cd frontend
npm run build

# Backend
cd backend
npm start
```

```
cd frontend
npm run dev
```

```
cd backend
npm run dev
```

```
PORT=8080
DB_HOST=localhost
DB_USER=your_username
DB_PASSWORD=your_password
DB_NAME=your_database_name
JWT_SECRET=your_jwt_secret
```

```
cd ../backend
npm install
```

```
cd frontend
npm install
```

```
git clone <repository-url>
cd PMS2023
```
