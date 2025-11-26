/*
  # Initialize Supabase Auth Setup

  Configures Supabase built-in authentication for the admin panel.

  Architecture:
  - Uses Supabase's native auth.users table for secure credential storage
  - Passwords are hashed using bcrypt (handled automatically by Supabase)
  - Session management is handled by Supabase Auth SDK
  - Email confirmation is enabled for security

  Default Admin User:
  - Email: admin@example.com
  - Password: assdsa@@#!!ewe23
  - Status: Email confirmed and ready for login

  Authentication Flow:
  1. Admin enters credentials in login form (AdminPanel.tsx)
  2. authService.signInAdmin() calls supabase.auth.signInWithPassword()
  3. Supabase validates credentials against auth.users table
  4. On success, session is created and stored by Supabase SDK
  5. Session persists across page refreshes via localStorage
  6. User gains access to document management features

  Environment Variables Required:
  - VITE_SUPABASE_URL: Supabase project URL
  - VITE_SUPABASE_ANON_KEY: Anonymous API key for client-side auth

  Security Notes:
  - RLS policies should be enabled on sensitive tables
  - Sessions expire automatically based on Supabase settings
  - Password reset functionality can be added if needed
  - Additional users can be created through the Supabase dashboard
*/

-- Placeholder migration for documentation
-- The auth.users table is managed automatically by Supabase
SELECT 1;