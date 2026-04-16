# PACR App — Build Task Tracker

> **Legend:** ✅ Done &nbsp;|&nbsp; 🔄 In Progress &nbsp;|&nbsp; ⬜ Pending  
> Auto-updated as each task is completed.

---

## Phase 1 — Clarification & Planning ✅

- [x] Define backend → Firebase (Firestore + Auth + FCM)
- [x] Define authentication → Email + Password
- [x] Define map provider → Google Maps
- [x] Define design system (colors, DM Sans font, dark/light mode)
- [x] Define location logic (5 km default → auto-expand to 10 km)
- [x] Define session discovery window (7 days, single constant to change)
- [x] Define join logic (free = instant, paid = host approval)
- [x] Define user roles (customer by default, opt-in host in profile)
- [x] Define sports list (fixed list + Other with custom title)
- [x] Obtain Google Maps API key
- [x] Set up GitHub repository (reflexj/pacr-app)

---

## Phase 2 — Architecture Design ✅

- [x] Choose state management → Riverpod 2.x
- [x] Choose navigation → GoRouter
- [x] Design modular folder structure
- [x] Define data models (Session, User, JoinRequest, Message)
- [x] Design Firebase collections structure
- [x] Define color tokens (light + dark mode)
- [x] Define configurable app constants

---

## Phase 3 — UI/UX Wireframe Plan 🔄

- [x] Describe Login screen
- [x] Describe Register screen
- [x] Describe Feed screen + SessionCard
- [x] Describe Session Detail screen
- [x] Describe Create Session screen
- [x] Describe Chat screen
- [x] Describe Profile screen
- [ ] **User approves wireframe plan** ⬅ awaiting your confirmation

---

## Phase 4 — Project Setup ⬜

- [ ] Install Flutter (latest stable) + verify environment
- [ ] Create Flutter project (`pacr_app`)
- [ ] Add all dependencies to `pubspec.yaml`
- [ ] Configure Firebase for iOS (GoogleService-Info.plist)
- [ ] Configure Firebase for Android (google-services.json)
- [ ] Add Google Maps API key (iOS Info.plist + Android Manifest — NOT committed to git)
- [ ] Set up full folder structure
- [ ] Implement `AppColors` (light + dark tokens)
- [ ] Implement `AppTextStyles` (DM Sans scale)
- [ ] Implement `AppTheme` (ThemeData light + dark, system-aware)
- [ ] Implement `AppConstants` (radius, session window, chat lock duration)
- [ ] Configure GoRouter with auth-aware redirects
- [ ] Configure ProviderScope (Riverpod entry point)
- [ ] Verify app runs on iOS simulator

---

## Phase 5 — Authentication ⬜

- [ ] Build LoginScreen UI
- [ ] Build RegisterScreen UI
- [ ] Implement `AuthRepository` (Firebase Auth wrapper)
- [ ] Implement `authStateProvider` (stream of current user)
- [ ] Auth-aware routing (unauthenticated → `/login`)
- [ ] Create `users/{uid}` document in Firestore on register
- [ ] Test: register new account
- [ ] Test: login with existing account
- [ ] Test: logout
- [ ] Test: persist session on app relaunch

---

## Phase 6 — Session Feed ⬜

- [ ] Build `SessionCard` widget
- [ ] Build `FilterBar` widget (sport chips, time, level)
- [ ] Build `FeedScreen` with static dummy data
- [ ] Implement `SessionRepository` (Firestore CRUD + stream)
- [ ] Implement `feedProvider` (realtime Firestore stream)
- [ ] Connect feed to live Firebase data
- [ ] Implement location-based query (5 km → 10 km fallback)
- [ ] Implement sport filter
- [ ] Implement time filter
- [ ] Implement level filter
- [ ] Handle empty state: "No sessions nearby"
- [ ] Handle loading state
- [ ] Handle error state

---

## Phase 7 — Create Session ⬜

- [ ] Build `CreateSessionScreen` UI
- [ ] Sport picker (icon grid with fixed list + Other)
- [ ] Custom title input (shown when sport = Other or always)
- [ ] Date picker
- [ ] Time picker
- [ ] Duration picker
- [ ] Full-screen Google Maps location picker
- [ ] Meeting point description input
- [ ] Max participants stepper (1–50)
- [ ] Level selector (All / Beginner / Intermediate / Advanced)
- [ ] Free / Paid toggle (paid → price input appears)
- [ ] Optional description field
- [ ] Form validation (all required fields)
- [ ] Write session to Firestore
- [ ] Add session ID to host's `hostedSessionIds`
- [ ] Test: create a free session end-to-end
- [ ] Test: create a paid session end-to-end

---

## Phase 8 — Join Session ⬜

- [ ] Build `JoinButton` widget (idle / loading / joined states)
- [ ] Implement instant join for free sessions
- [ ] Update `session.participantIds` in Firestore on join
- [ ] Add session to user's `upcomingSessionIds` on join
- [ ] Implement join request flow for paid sessions
- [ ] Host notification on new join request (paid)
- [ ] Host approve / reject join request UI
- [ ] Update join request status in Firestore
- [ ] Notify user on request approval
- [ ] Handle full session (button disabled + "Session Full" label)
- [ ] Handle already-joined state (button shows "You're in")
- [ ] Test: free session join end-to-end
- [ ] Test: paid session request + approval end-to-end

---

## Phase 9 — Session Detail Screen ⬜

- [ ] Build `SessionDetailScreen` UI
- [ ] Display: sport, title, host name, time, duration
- [ ] Display: Google Maps mini-map with meeting point marker
- [ ] Display: level badge + spots remaining
- [ ] Display: participant count / avatar initials row
- [ ] Display: description (if provided)
- [ ] Integrate `JoinButton` (contextual: join / joined / full / pending)
- [ ] "Open Chat" button (visible only to confirmed participants)
- [ ] Host view: see join requests (paid sessions)

---

## Phase 10 — Chat System ⬜

- [ ] Build `ChatScreen` UI
- [ ] Build `MessageBubble` widget (own vs others)
- [ ] System message style ("Simon joined the session")
- [ ] Implement `ChatRepository` (Firestore subcollection stream)
- [ ] Implement `chatProvider` (realtime message stream)
- [ ] Send message functionality
- [ ] Auto-send system message on join
- [ ] Compute and store `chatLocksAt` (session end + 60 min)
- [ ] Enforce chat lock: input disabled + banner shown after lock
- [ ] Firestore security rule: only confirmed participants can read/write
- [ ] Test: send messages in real-time across two devices
- [ ] Test: chat locks correctly after session ends

---

## Phase 11 — Profile Screen ⬜

- [ ] Build `ProfileScreen` UI
- [ ] Display: avatar (initials, colored), display name, email
- [ ] "Upcoming Sessions" list (compact session cards)
- [ ] "Past Sessions" list
- [ ] "Become a Host" toggle (customer → host role)
- [ ] Host section: "My Sessions" (sessions user has created)
- [ ] Host section: manage join requests (pending paid requests)
- [ ] Edit display name
- [ ] Logout button
- [ ] Test: upcoming sessions update after joining

---

## Phase 12 — Location & Maps ⬜

- [ ] Implement `LocationService` (geolocator wrapper)
- [ ] Request location permission with explanation dialog
- [ ] Graceful fallback if permission denied (manual area input)
- [ ] 5 km query → auto-expand to 10 km if results < 1
- [ ] Distance label on `SessionCard` ("1.2 km away")
- [ ] Google Maps in `SessionDetailScreen` (meeting point pin)
- [ ] Google Maps in `CreateSessionScreen` (tap-to-select location)
- [ ] Reverse geocode selected location to human-readable name

---

## Phase 13 — Push Notifications ⬜

- [ ] Set up Firebase Cloud Messaging (FCM)
- [ ] iOS: request notification permission on first launch
- [ ] Store `fcmToken` in user's Firestore document
- [ ] Notify user: join confirmed (free instant join)
- [ ] Notify user: host approved request (paid join)
- [ ] Notify host: new join request received (paid session)
- [ ] Notify all participants: 30 min before session starts
- [ ] Test notifications on real device (iOS)

---

## Phase 14 — Edge Cases & Refinement ⬜

- [ ] Edge case: session becomes full mid-browse (realtime update)
- [ ] Edge case: no sessions within 10 km
- [ ] Edge case: session cancelled by host (notify participants)
- [ ] Edge case: user tries to join own hosted session (blocked)
- [ ] Edge case: session in the past still visible (filter out)
- [ ] Dark mode: full visual pass across all screens
- [ ] Light mode: full visual pass across all screens
- [ ] Performance: feed load time < 1.5s
- [ ] Accessibility: minimum tap target sizes (48×48px)

---

## Phase 15 — Deployment ⬜

### iOS (TestFlight)
- [ ] Apply for Apple Developer Account ($99/year) at developer.apple.com
- [ ] Configure app Bundle ID (`com.pacr.app`)
- [ ] Set up provisioning profiles and certificates
- [ ] Configure signing in Xcode
- [ ] Build iOS release archive
- [ ] Upload to App Store Connect
- [ ] Submit to TestFlight
- [ ] Invite beta testers

### Android
- [ ] Generate keystore for APK signing
- [ ] Configure `key.properties` (not committed to git)
- [ ] Build release AAB (`flutter build appbundle`)
- [ ] Create Google Play Developer account ($25 one-time)
- [ ] Upload to Play Store internal testing track

---

## Sports List Reference

```
Running · Cycling · Yoga · Football · Basketball · Tennis
Volleyball · Swimming · Hiking · Crossfit · Padel · Badminton
Rugby · Climbing · Rowing · Skateboarding · Other (custom title)
```

---

*This file is updated automatically as tasks are completed.*
