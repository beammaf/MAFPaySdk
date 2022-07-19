function postResponse(status) {
    status.method = "CONNECT"
    if (status.bank && status.bank.bank_identifier) {
        status.bankId = status.bank.bank_identifier
        status.isSupported = status.bank.is_supported
    }
    if (status.status !== "ERROR" && status.status !== "CANCELLED") {
        window.webkit.messageHandlers.handleConnectSuccess.postMessage(status);
    } else {
        window.webkit.messageHandlers.handleConnectFailure.postMessage(status);
    }
}

try {
  Lean.connect({
      app_token: "${APP_TOKEN}",
      permissions: [${PERMISSIONS}],
      customer_id: "${CUSTOMER_ID}",
      ${PAYMENT_DESTINATION_ID}
      sandbox: "${SANDBOX}",
      ${BANK_IDENTIFIER}
      callback: postResponse
  })
} catch (e) {
    window.webkit.messageHandlers.handleConnectFailure.postMessage({status: "ERROR", message: "Lean not initialized"});
}
