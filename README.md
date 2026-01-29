# ReUnion Tether - Relationship & Travel Butler

A Flutter + Serverpod application that helps users maintain meaningful connections with friends and family while simplifying travel planning when meeting them.

## Project Structure

```
reunion_tether/
├── reunion_tether_server/     # Serverpod backend
│   ├── lib/src/
│   │   ├── models/            # Database models (Contact, Trip, Interaction, etc.)
│   │   ├── endpoints/         # API endpoints
│   │   └── tasks/             # Scheduled tasks for reminders
├── reunion_tether_client/     # Generated client code
└── reunion_tether_flutter/     # Flutter frontend app
```

## Features Implemented

### Backend (Serverpod)

✅ **Database Models Created:**
- `Contact` - Stores relationship information (name, location, birthday, etc.)
- `Interaction` - Tracks communication history
- `Destination` - Cities/places user wants to visit
- `Trip` - Planned or completed trips
- `TripContact` - Links contacts to trips (many-to-many)
- `Itinerary` - Day-by-day activities for trips
- `Reminder` - Scheduled notifications
- `FlightPrice` - Manual price tracking

✅ **API Endpoints Created:**
- `ContactEndpoint` - CRUD for contacts, overdue contacts, upcoming birthdays
- `InteractionEndpoint` - Track and manage interactions
- `TripEndpoint` - Manage trips, link contacts, get suggestions
- `ItineraryEndpoint` - Manage trip itineraries
- `DestinationEndpoint` - Manage travel destinations
- `ReminderEndpoint` - Manage reminders
- `DashboardEndpoint` - Get dashboard insights

✅ **Scheduled Tasks:**
- `BirthdayReminderTask` - Daily check for upcoming birthdays
- `OverdueConnectionTask` - Weekly check for overdue connections

## Setup Instructions

### Prerequisites
- Dart SDK (3.8.0+)
- Flutter SDK (3.32.0+)
- Docker (for PostgreSQL database)
- Serverpod CLI (installed via `dart pub global activate serverpod_cli`)

### Backend Setup

1. Navigate to the server directory:
```bash
cd reunion_tether/reunion_tether_server
```

2. Start the database:
```bash
docker compose up --build --detach
```

3. Apply database migrations:
```bash
dart bin/main.dart --apply-migrations
```

4. Generate Serverpod code (if models/endpoints change):
```bash
export PATH="$PATH":"$HOME/.pub-cache/bin"
serverpod generate
```

5. Start the server:
```bash
dart bin/main.dart
```

### Frontend Setup

1. Navigate to the Flutter app:
```bash
cd reunion_tether/reunion_tether_flutter
```

2. Get dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Known Issues & TODO

### Authentication Fix Needed
The endpoints currently use `session.user!.id` which may not be the correct Serverpod API. You may need to:
- Use `session.authKeyManager.getUserId(session)` with proper imports
- Or use Serverpod's authentication extension methods
- Check Serverpod documentation for the correct authentication pattern

### Query Syntax
Some queries use `.and()` which may need to be changed to use `&` operator or a different method depending on Serverpod version.

### Flutter UI
The Flutter frontend needs to be built with:
- Dashboard screen showing insights
- Contact list and detail screens
- Trip planning screens
- Map view for locations
- Local notifications setup

## Next Steps

1. **Fix Authentication**: Update all endpoints to use the correct Serverpod auth API
2. **Fix Query Syntax**: Verify and update query syntax for Serverpod version
3. **Build Flutter UI**: Create the main screens and navigation
4. **Add Map Integration**: Integrate Google Maps or similar for location display
5. **Setup Notifications**: Configure local notifications for reminders
6. **Test Endpoints**: Test all API endpoints with proper authentication
7. **Register Scheduled Tasks**: Ensure scheduled tasks are registered in server.dart

## API Endpoints

Once the server is running, endpoints will be available at:
- `http://localhost:8080/` (API base URL)

Example endpoints:
- `GET /contact/getContacts` - Get all contacts
- `POST /contact/createContact` - Create a contact
- `GET /dashboard/getDashboardInsights` - Get dashboard data

## Database Schema

The database includes tables for:
- Contacts with relationship details and locations
- Interactions tracking communication history
- Trips with destinations and dates
- Itineraries for day-by-day planning
- Reminders for birthdays and connection nudges
- Destinations for travel wishlists

## License

This project is created for a hackathon/demo purpose.




