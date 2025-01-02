# SightDB

## Roadmap

### Basic Operations
- [x] Cluster/Node Operations
  - [x] `GET /` (Node Info)
- [ ] Database Operations
  - [x] `GET /_all_dbs` (List Databases)
  - [x] `PUT /:db_name` (Create Database)
  - [x] `DELETE /:db_name` (Delete Database)
  - [ ] `GET /:db_name` (Get Database Info)
- [x] Document Operations
  - [x] `GET /_all_docs` (List Documents)
  - [x] `PUT /:db_name/:doc_id` (Create/Update Document with ID)
  - [x] `POST /:db_name` (Create Document without ID)
  - [x] `DELETE /:db_name/:doc_id` (Delete Document)
  - [x] `GET /:db_name/:doc_id` (Get Document)
  - [x] `POST /:db_name/_bulk_docs` (Bulk Operations)
- [ ] Attachments Operations
  - [ ] `GET /:db_name/:doc_id/_attachments` (List all attachments for a document)
  - [x] `PUT /:db_name/:doc_id/:attachment_name` (Create/Update Attachment)
  - [ ] `DELETE /:db_name/:doc_id/:attachment_name` (Delete Attachment)
  - [ ] `GET /:db_name/:doc_id/:attachment_name` (Read Attachment)
- [ ] Revisions
  - [ ] `rev`

### Authentication
- [ ] Implement `_users` database for user management:
  - [ ] `POST /_users`: Create a new user.
  - [ ] `PUT /_users/:user_id`: Update an existing user.
  - [ ] `DELETE /_users/:user_id`: Delete a user.
  - [ ] `GET /_users/:user_id`: Retrieve information about a user.
- [x] Support `_session` endpoint for session management:
  - [x] `POST /_session`: Authenticate a user and create a session.
    - Accepts `name` and `password` as input.
    - Returns a cookie for session-based authentication.
  - [ ] `DELETE /_session`: Log out a user and destroy the session.
  - [ ] `GET /_session`: Retrieve information about the current session.
    - Returns authenticated user's name and roles if logged in.
- [ ] Support both basic authentication and cookie-based sessions.
- [ ] Enforce security:
  - [ ] Use secure cookies with `HttpOnly` and `Secure` flags where applicable.
  - [ ] Implement token expiration and renewal mechanisms.

### Authorization
- [ ] Implement CouchDB-style database-level security:
  - [ ] Define Admins and Members roles for each database:
    - **Admins**: Full control over the database (e.g., read, write, manage settings).
    - **Members**: Limited to read and write access within the database.
  - [ ] Enforce role-based permissions for database operations.
- [ ] Support `_security` endpoint:
  - [ ] `PUT /:db_name/_security`: Update security settings for a database.
  - [ ] `GET /:db_name/_security`: Retrieve current security settings.
- [ ] Enforce permissions for `_users` database:
  - [ ] Allow only admin users to manage users in the `_users` database.
- [ ] Integrate authentication with role enforcement.


### Replication
- [x] CouchDB is a master, SightDB needs to handle changes stream
- [ ] As CouchDB Cluster Node
- [ ] Read CouchDB `_changes` feed
  - [ ] Polling and continuous modes

### Views
- [ ] Map
  - [ ] Define Map logic storage
  - [ ] Query processing
- [ ] Reduce
  - [ ] Define Reduce logic storage
  - [ ] Aggregation optimizations

### CI/CD
- [x] Build Automation
  - [x] Dockerized builds
- [x] Basic Tests
  - [x] CRUD operations
  - [ ] Security validation (Authentication, Authorization)
- [ ] Integration tests
  - [ ] Replication tests (From CouchDB, Cluster Node, Changes Stream)
- [ ] Performance benchmarks
  - [ ] Latency
  - [ ] Throughput

## Future Features
- [ ] High Availability
  - [ ] Multi-node
    - [ ] Automatic failover
    - [ ] Horizontal scaling
  - [ ] Master-Master replication
    - [ ] Conflict resolution policies
    - [ ] Synchronous vs. asynchronous modes
  - [ ] Multi-zones
    - [ ] Data distribution across geographic zones
    - [ ] Zone-specific failover and recovery
