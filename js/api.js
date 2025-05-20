    // frontend/js/api.js
    const API_BASE_URL = 'http://localhost:8000'; // Replace with your backend URL when deployed

    // Fetch businesses
    async function getBusinesses() {
      try {
        const response = await fetch(`${API_BASE_URL}/businesses`);
        if (!response.ok) throw new Error('Failed to fetch businesses');
        return await response.json();
      } catch (error) {
        console.error('Error fetching businesses:', error);
        throw error;
      }
    }

    // Fetch a specific business
    async function getBusiness(id) {
      try {
        const response = await fetch(`${API_BASE_URL}/businesses/${id}`);
        if (!response.ok) throw new Error('Failed to fetch business');
        return await response.json();
      } catch (error) {
        console.error(`Error fetching business ${id}:`, error);
        throw error;
      }
    }

    // Fetch services for a business
    async function getServices(businessId) {
      try {
        const response = await fetch(`${API_BASE_URL}/businesses/${businessId}/services`);
        if (!response.ok) throw new Error('Failed to fetch services');
        return await response.json();
      } catch (error) {
        console.error(`Error fetching services for business ${businessId}:`, error);
        throw error;
      }
    }

    // Fetch available slots for a service on a specific date
    async function getAvailableSlots(serviceId, date) {
      try {
        const response = await fetch(`${API_BASE_URL}/services/${serviceId}/slots?date=${date}`);
        if (!response.ok) throw new Error('Failed to fetch available slots');
        return await response.json();
      } catch (error) {
        console.error(`Error fetching slots for service ${serviceId}:`, error);
        throw error;
      }
    }

    // Create a new appointment
    async function createAppointment(appointmentData) {
      try {
        const response = await fetch(`${API_BASE_URL}/appointments`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify(appointmentData),
        });
        if (!response.ok) throw new Error('Failed to create appointment');
        return await response.json();
      } catch (error) {
        console.error('Error creating appointment:', error);
        throw error;
      }
    }