public with sharing class CTPersonController {
    public static String getToken(String mobileNo)
    {
        Blob value= Blob.valueOf(mobileNo);
        Blob hash = Crypto.generateDigest('MD5', value);
        
        // get the string value of hash bloob

        Blob v1 = hash;
        return EncodingUtil.base64Encode(v1);
    }
}
