function postResponse(status) {
    status.method = "LINK"
    if (status.bank && status.bank.bank_identifier) {
        status.bankId = status.bank.bank_identifier
        status.isSupported = status.bank.is_supported
    }
    
    if (status.status !== "ERROR" && status.status !== "CANCELLED") {
        window.webkit.messageHandlers.handleLinkSuccess.postMessage(status);
    } else {
        window.webkit.messageHandlers.handleLinkFailure.postMessage(status);
    }
}

try {
  Lean.link({
      app_token: "${APP_TOKEN}",
      permissions: [${PERMISSIONS}],
      customer_id: "${CUSTOMER_ID}",
      sandbox: "${SANDBOX}",
      ${BANK_IDENTIFIER}
      callback: postResponse
  })
} catch (e) {
    window.webkit.messageHandlers.handleLinkFailure.postMessage({status: "ERROR", message: "Lean not initialized"});
}
