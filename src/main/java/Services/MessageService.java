package Services;


import Model.Message;
import Utils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MessageService {

    private final Connection con = DBConnect.getConnection();

    public boolean addMessage(Message message) {
        String query = "INSERT INTO messages (customerId, name, email, mobile, message, date, status) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, message.getCustomerId());
            ps.setString(2, message.getName());
            ps.setString(3, message.getEmail());
            ps.setString(4, message.getMobile());
            ps.setString(5, message.getMessage());
            ps.setDate(6, new java.sql.Date(message.getDate().getTime()));
            ps.setInt(7, message.getStatus());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateMessage(Message message) {
        String query = "UPDATE messages SET reply = ?, status = ? WHERE messageId = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, message.getReply());
            ps.setInt(2, message.getStatus());
            ps.setInt(3, message.getMessageId());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteMessage(int messageId) {

        String query = "DELETE FROM messages WHERE messageId = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, messageId);

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }

    public Message getMessage(int messageId) {
        String query = "SELECT * FROM messages WHERE messageId = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, messageId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Message message = new Message();
                message.setMessageId(rs.getInt("messageId"));
                message.setCustomerId(rs.getInt("customerId"));
                message.setName(rs.getString("name"));
                message.setEmail(rs.getString("email"));
                message.setMobile(rs.getString("mobile"));
                message.setMessage(rs.getString("message"));
                message.setDate(rs.getDate("date"));
                message.setStatus(rs.getInt("status"));
                message.setReply(rs.getString("reply"));

                return message;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Message> getAllMessages() {
        ArrayList<Message> messages = new ArrayList<>();
        String query = "SELECT * FROM messages";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Message message = new Message();
                message.setMessageId(rs.getInt("messageId"));
                message.setCustomerId(rs.getInt("customerId"));
                message.setName(rs.getString("name"));
                message.setEmail(rs.getString("email"));
                message.setMobile(rs.getString("mobile"));
                message.setMessage(rs.getString("message"));
                message.setDate(rs.getDate("date"));
                message.setStatus(rs.getInt("status"));
                message.setReply(rs.getString("reply"));

                messages.add(message);
            }

            return messages;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Message> getMessagesByCustomerId(int customerId) {
        ArrayList<Message> messages = new ArrayList<>();
        String query = "SELECT * FROM messages WHERE customerId = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, customerId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Message message = new Message();
                message.setMessageId(rs.getInt("messageId"));
                message.setCustomerId(rs.getInt("customerId"));
                message.setName(rs.getString("name"));
                message.setEmail(rs.getString("email"));
                message.setMobile(rs.getString("mobile"));
                message.setMessage(rs.getString("message"));
                message.setDate(rs.getDate("date"));
                message.setStatus(rs.getInt("status"));
                message.setReply(rs.getString("reply"));

                messages.add(message);
            }

            return messages;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

}
