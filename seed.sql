-- Insert businesses
INSERT INTO businesses (name, address, city, state, postal_code, phone, email, website) VALUES
('Luxe Hair Salon', '123 Main Street', 'New York', 'NY', '10001', '(212) 555-1000', 'info@luxehairny.com', 'www.luxehairny.com'),
('Luxe Hair Salon', '456 Oak Avenue', 'Brooklyn', 'NY', '11215', '(718) 555-2000', 'brooklyn@luxehairny.com', 'www.luxehairny.com/brooklyn'),
('Downtown Barbers', '789 Pine Road', 'Chicago', 'IL', '60601', '(312) 555-3000', 'hello@downtownbarbers.com', 'www.downtownbarbers.com');

-- Insert business hours for each location (0=Sunday, 6=Saturday)
-- Luxe Hair Salon - NYC
INSERT INTO business_hours (business_id, day_of_week, open_time, close_time, is_closed) VALUES
(1, 0, '09:00', '17:00', false), -- Sunday
(1, 1, '08:00', '20:00', false), -- Monday
(1, 2, '08:00', '20:00', false), -- Tuesday
(1, 3, '08:00', '20:00', false), -- Wednesday
(1, 4, '08:00', '20:00', false), -- Thursday
(1, 5, '08:00', '20:00', false), -- Friday
(1, 6, '09:00', '18:00', false); -- Saturday

-- Luxe Hair Salon - Brooklyn
INSERT INTO business_hours (business_id, day_of_week, open_time, close_time, is_closed) VALUES
(2, 0, '10:00', '16:00', false),
(2, 1, '09:00', '19:00', false),
(2, 2, '09:00', '19:00', false),
(2, 3, '09:00', '19:00', false),
(2, 4, '09:00', '19:00', false),
(2, 5, '09:00', '19:00', false),
(2, 6, '09:00', '17:00', false);

-- Downtown Barbers
INSERT INTO business_hours (business_id, day_of_week, open_time, close_time, is_closed) VALUES
(3, 0, '00:00', '00:00', true), -- Closed Sunday
(3, 1, '08:00', '18:00', false),
(3, 2, '08:00', '18:00', false),
(3, 3, '08:00', '18:00', false),
(3, 4, '08:00', '18:00', false),
(3, 5, '08:00', '18:00', false),
(3, 6, '08:00', '16:00', false);

-- Insert staff
INSERT INTO staff (business_id, first_name, last_name, email, phone, is_active) VALUES
-- Luxe NYC staff
(1, 'Sarah', 'Johnson', 'sarah@luxehairny.com', '(212) 555-1001', true),
(1, 'Michael', 'Chen', 'michael@luxehairny.com', '(212) 555-1002', true),
(1, 'Jessica', 'Williams', 'jessica@luxehairny.com', '(212) 555-1003', true),
-- Luxe Brooklyn staff
(2, 'David', 'Martinez', 'david@luxehairny.com', '(718) 555-2001', true),
(2, 'Emily', 'Brown', 'emily@luxehairny.com', '(718) 555-2002', true),
-- Downtown Barbers staff
(3, 'Robert', 'Taylor', 'robert@downtownbarbers.com', '(312) 555-3001', true),
(3, 'Jennifer', 'Anderson', 'jennifer@downtownbarbers.com', '(312) 555-3002', true),
(3, 'Thomas', 'Wilson', 'thomas@downtownbarbers.com', '(312) 555-3003', false); -- Inactive staff

-- Insert services
INSERT INTO services (business_id, name, description, duration, price, is_active) VALUES
-- Luxe NYC services
(1, 'Women''s Haircut', 'Custom haircut with shampoo and blow dry', '1 hour', 85.00, true),
(1, 'Men''s Haircut', 'Precision haircut with shampoo and style', '45 minutes', 55.00, true),
(1, 'Color Service', 'Full color service with gloss treatment', '2 hours', 120.00, true),
(1, 'Balayage', 'Hand-painted highlighting technique', '3 hours', 200.00, true),
(1, 'Deep Conditioning', 'Intensive moisture treatment', '30 minutes', 40.00, true),
-- Luxe Brooklyn services
(2, 'Women''s Haircut', 'Custom haircut with shampoo and blow dry', '1 hour', 75.00, true),
(2, 'Men''s Haircut', 'Precision haircut with shampoo and style', '45 minutes', 50.00, true),
(2, 'Blowout', 'Professional blow dry and style', '45 minutes', 45.00, true),
-- Downtown Barbers services
(3, 'Classic Haircut', 'Traditional barber haircut', '30 minutes', 30.00, true),
(3, 'Beard Trim', 'Precision beard shaping', '20 minutes', 15.00, true),
(3, 'Hot Towel Shave', 'Traditional straight razor shave', '45 minutes', 40.00, true),
(3, 'Haircut & Shave', 'Combination service', '1 hour', 60.00, true);

-- Assign staff to services (staff_services)
INSERT INTO staff_services (staff_id, service_id) VALUES
-- Luxe NYC staff services
(1, 1), (1, 3), (1, 4), -- Sarah does women's cuts, color, balayage
(2, 2), (2, 1),        -- Michael does men's and women's cuts
(3, 1), (3, 3), (3, 5), -- Jessica does women's cuts, color, conditioning
-- Luxe Brooklyn staff services
(4, 6), (4, 8),        -- David does women's cuts and blowouts
(5, 6), (5, 7), (5, 8), -- Emily does women's and men's cuts and blowouts
-- Downtown Barbers staff services
(6, 9), (6, 10), (6, 11), (6, 12), -- Robert does all barber services
(7, 9), (7, 10),                    -- Jennifer does haircuts and beard trims
(8, 9), (8, 12);                    -- Thomas does haircuts and combo services

-- Insert clients
INSERT INTO clients (business_id, first_name, last_name, email, phone, address, notes) VALUES
-- Luxe NYC clients
(1, 'Elizabeth', 'Parker', 'elizabeth.parker@email.com', '(212) 555-4001', '123 Park Ave, New York, NY 10016', 'Prefers Sarah for color services'),
(1, 'James', 'Rodriguez', 'james.r@email.com', '(212) 555-4002', '456 Broadway, New York, NY 10013', 'Likes short, tapered cuts'),
(1, 'Olivia', 'Smith', 'olivia.smith@email.com', '(917) 555-4003', '789 5th Ave, New York, NY 10022', 'Regular balayage client'),
-- Luxe Brooklyn clients
(2, 'Daniel', 'Kim', 'daniel.kim@email.com', '(718) 555-5001', '321 Prospect Pl, Brooklyn, NY 11238', 'Prefers blowouts for special events'),
(2, 'Sophia', 'Garcia', 's.garcia@email.com', '(347) 555-5002', '654 Washington Ave, Brooklyn, NY 11205', 'New client - first appointment coming up'),
-- Downtown Barbers clients
(3, 'William', 'Johnson', 'will.johnson@email.com', '(312) 555-6001', '987 State St, Chicago, IL 60605', 'Monthly haircut and beard trim'),
(3, 'Emma', 'Davis', 'emma.d@email.com', '(773) 555-6002', '654 Michigan Ave, Chicago, IL 60611', 'Prefers Jennifer for haircuts'),
(3, 'Alexander', 'Lee', 'alex.lee@email.com', '(630) 555-6003', '321 Wacker Dr, Chicago, IL 60606', 'Classic haircut every 3 weeks');

-- Insert appointments (using realistic dates/times)
INSERT INTO appointments (business_id, client_id, service_id, start_time, end_time, status, notes) VALUES
-- Luxe NYC appointments
(1, 1, 3, '2023-06-15 10:00:00', '2023-06-15 12:00:00', 'completed', 'Root touch-up with gloss'),
(1, 2, 2, '2023-06-15 13:00:00', '2023-06-15 13:45:00', 'completed', 'Regular maintenance cut'),
(1, 3, 4, '2023-06-16 11:00:00', '2023-06-16 14:00:00', 'completed', 'Summer balayage refresh'),
(1, 1, 1, '2023-06-30 09:00:00', '2023-06-30 10:00:00', 'scheduled', 'Trim before vacation'),
-- Luxe Brooklyn appointments
(2, 4, 8, '2023-06-15 15:00:00', '2023-06-15 15:45:00', 'completed', 'Blowout for anniversary dinner'),
(2, 5, 6, '2023-06-17 10:00:00', '2023-06-17 11:00:00', 'confirmed', 'First haircut with us'),
-- Downtown Barbers appointments
(3, 6, 12, '2023-06-15 08:30:00', '2023-06-15 09:30:00', 'completed', 'Regular haircut and shave'),
(3, 7, 9, '2023-06-16 10:00:00', '2023-06-16 10:30:00', 'confirmed', 'Pixie cut maintenance'),
(3, 8, 9, '2023-06-16 11:00:00', '2023-06-16 11:30:00', 'cancelled', 'Client rescheduled'),
(3, 6, 10, '2023-06-29 14:00:00', '2023-06-29 14:20:00', 'scheduled', 'Beard trim between haircuts');

-- Assign staff to appointments (appointment_staff)
INSERT INTO appointment_staff (appointment_id, staff_id) VALUES
(1, 1),   -- Sarah did Elizabeth's color
(2, 2),   -- Michael did James' haircut
(3, 1),   -- Sarah did Olivia's balayage
(4, 1),   -- Sarah scheduled for Elizabeth's trim
(5, 4),   -- David did Daniel's blowout
(6, 5),   -- Emily scheduled for Sophia's first haircut
(7, 6),   -- Robert did William's haircut & shave
(8, 7),   -- Jennifer scheduled for Emma's haircut
(9, 7),   -- Jennifer was assigned to Alexander's cancelled appt
(10, 6);  -- Robert scheduled for William's beard trim

-- Insert client notes
INSERT INTO client_notes (client_id, author_id, note, created_at) VALUES
(1, 1, 'Client prefers cool-toned colors. Used 6N with violet booster last time.', '2023-05-10 14:30:00'),
(1, 3, 'Client mentioned slight scalp sensitivity last visit. Recommend patch test next color.', '2023-06-15 12:15:00'),
(2, 2, 'Client wants to try a slightly longer style next visit. Show him options.', '2023-06-15 13:50:00'),
(6, 6, 'Regular client - always tips 20%. Prefers hot towel after shave.', '2023-05-20 09:45:00'),
(7, 7, 'Client bringing photo references next visit for potential style change.', '2023-06-01 16:20:00'),
(5, 5, 'New client - consultation done. Wants shoulder-length layers with face-framing.', '2023-06-10 11:00:00');


This seed data includes:

Three businesses (two Luxe Hair Salon locations and one Downtown Barbers)

Business hours for each location (with Sunday closures for the barbershop)

Eight staff members across all locations (one marked as inactive)

Twelve different services with varying prices and durations

Staff-service assignments showing which staff can perform which services

Nine clients with realistic contact information

Ten appointments with various statuses (completed, confirmed, scheduled, cancelled)

Staff assignments for each appointment

Six client notes with useful information for future visits

The data represents a 2-week period of appointments with a mix of past and future dates. All data follows realistic patterns for a salon/barbershop business.