-- 1. Create a test user
-- Note: This is a simplified insert for local testing. For production, use the Auth API.
INSERT INTO auth.users (id, email, encrypted_password, aud, role)
VALUES ('a1b2c3d4-e5f6-7890-1234-567890abcdef', 'test@example.com', crypt('password', gen_salt('bf')), 'authenticated', 'authenticated');

-- 2. Seed the todos table
INSERT INTO public.todos (title, content, footer, priority, due_date, task_img, status, user_id)
VALUES
('Finish report', 'Complete the Q2 financial report.', 'Due: Tomorrow', 'high', NOW(), 'report.png', 'pending', 'a1b2c3d4-e5f6-7890-1234-567890abcdef'),
('Design mockups', 'Create mockups for the new landing page.', 'In Progress', 'medium', NOW(), 'mockup.png', 'completed', 'a1b2c3d4-e5f6-7890-1234-567890abcdef'),
('Team meeting', 'Weekly sync-up with the development team.', '10:00 AM', 'low', NOW(), 'meeting.png', 'deleted', 'a1b2c3d4-e5f6-7890-1234-567890abcdef'),
('Fix login bug', 'Investigate and resolve the issue with user login.', 'High Priority', 'high', NOW(), 'bug.png', 'pending', 'a1b2c3d4-e5f6-7890-1234-567890abcdef'),
('Update website', 'Refresh the homepage with new content and images.', 'Due: Next Week', 'medium', NOW(), 'website.png', 'deleted', 'a1b2c3d4-e5f6-7890-1234-567890abcdef'),
('Client feedback', 'Review and respond to client feedback on the latest project.', 'Pending Review', 'low', NOW(), 'feedback.png', 'pending', 'a1b2c3d4-e5f6-7890-1234-567890abcdef'),
('Prepare presentation', 'Create slides for the upcoming client presentation.', 'Due: Friday', 'high', NOW(), 'presentation.png', 'pending', 'a1b2c3d4-e5f6-7890-1234-567890abcdef'),
('Code review', 'Review pull requests from the team.', 'In Progress', 'medium', NOW(), 'code_review.png', 'completed', 'a1b2c3d4-e5f6-7890-1234-567890abcdef');
