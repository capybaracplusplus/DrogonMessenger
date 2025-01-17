#pragma once

#include <cstddef>
#include <string>
#include <optional>

class Message {
    using messageId = size_t;
    using userId = size_t;
    using chatId = size_t;
public:
    static Message create(
            std::optional<messageId> id,
            chatId chatId,
            userId fromUserId,
            std::optional<userId> toUserId,
            std::string body,
            time_t sentDate,
            bool isRead_
    ) {}

public:
    std::optional<messageId> getId() const;

    chatId getChatId() const;

    userId getSenderId() const;

    std::optional<userId> getRecipientId() const;

    const std::string &getContent() const;

    time_t getTimestamp() const;

    std::optional<time_t> getReceivedDate() const;

    bool isRead() const;

    void markAsReceived();

    void markAsRead();

    bool isPing() const;

private:
    std::optional<messageId> id_;
    chatId chatId_;
    userId fromUserId_;
    std::optional<userId> toUserId_;
    std::string body_;
    time_t sentDate_;
    std::optional<time_t> receivedDate_;
    bool isRead_;
    bool isPing_;
};