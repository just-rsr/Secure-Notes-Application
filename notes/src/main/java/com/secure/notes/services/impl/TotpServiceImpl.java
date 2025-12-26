package com.secure.notes.services.impl;

import org.springframework.stereotype.Service;

import com.secure.notes.services.TotpService;
import com.warrenstrange.googleauth.GoogleAuthenticator;
import com.warrenstrange.googleauth.GoogleAuthenticatorKey;
import com.warrenstrange.googleauth.GoogleAuthenticatorQRGenerator;

@Service
public class TotpServiceImpl implements TotpService{
    
    private final GoogleAuthenticator gAuth;
    public TotpServiceImpl() {
        this.gAuth = new GoogleAuthenticator();
    }
    public TotpServiceImpl(GoogleAuthenticator gAuth) {
        this.gAuth = gAuth;
    }
    @Override
    public GoogleAuthenticatorKey generateSecret(){
        return gAuth.createCredentials();
    }
    @Override
    public String getQrCodeUrl(GoogleAuthenticatorKey key,String username){
        return GoogleAuthenticatorQRGenerator.getOtpAuthURL("Secure Notes Application", username, key);
    }
    @Override
    public boolean verifyCode(String key, int code){
        return gAuth.authorize(key, code);
    }
}
