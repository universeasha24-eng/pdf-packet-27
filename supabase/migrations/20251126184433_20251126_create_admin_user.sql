/*
  # Create Admin User in Supabase Auth

  Creates the initial admin user for the application.
  
  Email: admin@example.com
  Password: assdsa@@#!!ewe23 (hashed by Supabase Auth bcrypt)
  Email is confirmed to allow immediate login.
  
  This user will be used to access the admin panel.
*/

DO $$
BEGIN
  INSERT INTO auth.users (
    instance_id,
    id,
    aud,
    role,
    email,
    encrypted_password,
    email_confirmed_at,
    created_at,
    updated_at,
    raw_app_meta_data,
    raw_user_meta_data,
    is_super_admin
  )
  VALUES (
    '00000000-0000-0000-0000-000000000000',
    gen_random_uuid(),
    'authenticated',
    'authenticated',
    'admin@example.com',
    crypt('assdsa@@#!!ewe23', gen_salt('bf')),
    now(),
    now(),
    now(),
    '{"provider":"email","providers":["email"]}',
    '{}',
    false
  );
  
END $$;