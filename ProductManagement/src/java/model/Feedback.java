package model;

import java.sql.Date;

/**
 *
 * @author AnhVo-PC
 */
public class Feedback {
    int feedbackID;
    String message;
    Date datetime;

    public Feedback() {
    }

    public Feedback(int feedbackID, String message, Date datetime) {
        this.feedbackID = feedbackID;
        this.message = message;
        this.datetime = datetime;
    }

    public int getFeedbackID() {
        return feedbackID;
    }

    public void setFeedbackID(int feedbackID) {
        this.feedbackID = feedbackID;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }
    
}
