package Services;

import Model.Event;
import Utils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EventsService {
    private final Connection con = DBConnect.getConnection();

    public boolean createEvent(Event event) {

        String sql = "INSERT INTO events (eventName, eventDetails, date, category) VALUES (?, ?, ?, ?)";

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, event.getEventName());
            pstmt.setString(2, event.getEventDetails());
            pstmt.setDate(3, event.getDate());
            pstmt.setString(4, event.getCategory());

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public boolean updateEvent(Event event) {
        String sql = "UPDATE events SET eventName = ?, eventDetails = ?, date = ?, category = ? WHERE eventId = ?";

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, event.getEventName());
            pstmt.setString(2, event.getEventDetails());
            pstmt.setDate(3, event.getDate());
            pstmt.setString(4, event.getCategory());
            pstmt.setInt(5, event.getEventId());

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteEvent(int eventId) {
        String sql = "DELETE FROM events WHERE eventId = ?";

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, eventId);

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Event getEvent(int eventId) {
        String sql = "SELECT * FROM events WHERE eventId = ?";
        Event event = null;

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, eventId);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                event = new Event();
                event.setEventId(rs.getInt("eventId"));
                event.setEventName(rs.getString("eventName"));
                event.setEventDetails(rs.getString("eventDetails"));
                event.setDate(rs.getDate("date"));
                event.setCategory(rs.getString("category"));
            }

            return event;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public ArrayList<Event> getAllEvents() {
        String sql = "SELECT * FROM events";
        ArrayList<Event> events = new ArrayList<>();

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Event event = new Event();
                event.setEventId(rs.getInt("eventId"));
                event.setEventName(rs.getString("eventName"));
                event.setEventDetails(rs.getString("eventDetails"));
                event.setDate(rs.getDate("date"));
                event.setCategory(rs.getString("category"));

                events.add(event);
            }

            return events;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
