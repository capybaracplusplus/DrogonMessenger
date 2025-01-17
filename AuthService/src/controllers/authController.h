#pragma once

#include <drogon/HttpController.h>

class authController : public drogon::HttpController<authController> {
public:

    METHOD_LIST_BEGIN
        ADD_METHOD_TO(authController::signUp, "/sign-up", drogon::Post, "ValidateRequestBodyMiddleware",
                      "ValidateEmailAndUsernameMiddleware", "ValidatePasswordMiddleware");
        ADD_METHOD_TO(authController::signIn, "/sign-in", drogon::Post, "ValidateRequestBodyMiddleware",
                      "ValidateEmailAndUsernameMiddleware", "ValidatePasswordMiddleware");
        ADD_METHOD_TO(authController::logout, "/logout", drogon::Post, "TokenExtractionMiddleware");
        ADD_METHOD_TO(authController::getNewAccessToken, "/getNewAccessToken",
                      drogon::Post, "TokenExtractionMiddleware", "ValidateTokensMiddleware");
        ADD_METHOD_TO(authController::changePassword, "/changePassword", drogon::Post, "ValidateRequestBodyMiddleware",
                      "ValidatePasswordMiddleware", "TokenExtractionMiddleware", "ValidateTokensMiddleware");
    METHOD_LIST_END

    void signUp(const drogon::HttpRequestPtr &req,
                std::function<void(const drogon::HttpResponsePtr &)> &&callback);

    void signIn(const drogon::HttpRequestPtr &req,
                std::function<void(const drogon::HttpResponsePtr &)> &&callback);

    void logout(const drogon::HttpRequestPtr &req,
                std::function<void(const drogon::HttpResponsePtr &)> &&callback);

    void getNewAccessToken(const drogon::HttpRequestPtr &req,
                           std::function<void(const drogon::HttpResponsePtr &)> &&callback);

    void changePassword(const drogon::HttpRequestPtr &req,
                        std::function<void(const drogon::HttpResponsePtr &)> &&callback);
};