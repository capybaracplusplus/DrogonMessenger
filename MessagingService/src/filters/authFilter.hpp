#pragma once

#include <drogon/HttpFilter.h>
#include <jwt-cpp/jwt.h>

class AuthFilter : public drogon::HttpFilter<AuthFilter> {
    std::string SECRET_KEY = "secret_key";
public:
    void doFilter(const drogon::HttpRequestPtr &req,
                  drogon::FilterCallback &&fcb,
                  drogon::FilterChainCallback &&fccb) override try {
        std::clog << "log AuthFilter" << std::endl;

        std::string access_token = req->getParameter("access_token");

        if (access_token.empty()) {
            throw std::runtime_error("access_token is empty");
        }

        auto decoded = jwt::decode(access_token);

        auto verifier = jwt::verify()
                .allow_algorithm(jwt::algorithm::hs256{SECRET_KEY})
                .with_issuer("Capy");
        verifier.verify(decoded);
        fccb();

    } catch (const std::exception &e) {
        auto res = drogon::HttpResponse::newHttpResponse();
        res->setStatusCode(drogon::k401Unauthorized);
        res->setBody(std::string("Invalid token: ") + e.what());
        fcb(res);
    }
};
