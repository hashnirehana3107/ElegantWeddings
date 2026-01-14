package Services;

import Model.Booking;
import Utils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BookingService {
    private final Connection con = DBConnect.getConnection();

    public boolean createBooking(Booking booking) {

        String sql = "INSERT INTO bookings (customerId, eventName, eventDetails, date, category, status) VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {

            pstmt.setInt(1, booking.getCustomerId());
            pstmt.setString(2, booking.getEventName());
            pstmt.setString(3, booking.getEventDetails());
            pstmt.setDate(4, booking.getDate());
            pstmt.setString(5, booking.getCategory());
            pstmt.setInt(6, booking.getStatus());

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public boolean updateBooking(Booking booking) {
        String sql = "UPDATE bookings SET eventName = ?, eventDetails = ?, date = ?, category = ?, status = ?  WHERE bookingId = ?";

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {

            pstmt.setString(1, booking.getEventName());
            pstmt.setString(2, booking.getEventDetails());
            pstmt.setDate(3, booking.getDate());
            pstmt.setString(4, booking.getCategory());
            pstmt.setInt(5, booking.getStatus());
            pstmt.setInt(6, booking.getBookingId());

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteBooking(int bookingId) {
        String sql = "DELETE FROM bookings WHERE bookingId = ?";

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {

            pstmt.setInt(1, bookingId);

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public ArrayList<Booking> getAllBookings() {
        ArrayList<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM bookings INNER JOIN users ON bookings.customerId = users.userId";

        try (PreparedStatement pstmt = con.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                Booking booking = new Booking();
                booking.setBookingId(rs.getInt("bookingId"));
                booking.setCustomerId(rs.getInt("customerId"));
                booking.setEventName(rs.getString("eventName"));
                booking.setEventDetails(rs.getString("eventDetails"));
                booking.setDate(rs.getDate("date"));
                booking.setCategory(rs.getString("category"));
                booking.setStatus(rs.getInt("status"));
                booking.setCustomerName(rs.getString("name"));
                booking.setCustomerEmail(rs.getString("email"));
                booking.setCustomerPhone(rs.getString("mobile"));

                bookings.add(booking);
            }

            return bookings;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;

    }

    public Booking getBooking(int bookingId) {
        String sql = "SELECT * FROM bookings INNER JOIN users ON bookings.customerId = users.userId WHERE bookingId = ?";
        Booking booking = new Booking();

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, bookingId);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {

                booking.setBookingId(rs.getInt("bookingId"));
                booking.setCustomerId(rs.getInt("customerId"));
                booking.setEventName(rs.getString("eventName"));
                booking.setEventDetails(rs.getString("eventDetails"));
                booking.setDate(rs.getDate("date"));
                booking.setCategory(rs.getString("category"));
                booking.setStatus(rs.getInt("status"));
                booking.setCustomerName(rs.getString("name"));
                booking.setCustomerEmail(rs.getString("email"));
                booking.setCustomerPhone(rs.getString("mobile"));

                return booking;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public ArrayList<Booking> getBookingsByCustomerId(int customerId) {
        ArrayList<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM bookings INNER JOIN users ON bookings.customerId = users.userId WHERE customerId = ?";

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, customerId);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Booking booking = new Booking();
                booking.setBookingId(rs.getInt("bookingId"));
                booking.setCustomerId(rs.getInt("customerId"));
                booking.setEventName(rs.getString("eventName"));
                booking.setEventDetails(rs.getString("eventDetails"));
                booking.setDate(rs.getDate("date"));
                booking.setCategory(rs.getString("category"));
                booking.setStatus(rs.getInt("status"));
                booking.setCustomerName(rs.getString("name"));
                booking.setCustomerEmail(rs.getString("email"));
                booking.setCustomerPhone(rs.getString("mobile"));

                bookings.add(booking);
            }

            return bookings;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public boolean updateStatus(int bookingId, int status) {
        String sql = "UPDATE bookings SET status = ? WHERE bookingId = ?";

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, status);
            pstmt.setInt(2, bookingId);

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
