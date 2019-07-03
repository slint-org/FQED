package org.fqed.controller;


public class Routes {

    /*************** Http Pages ***************/
    public class Public {

        /*************** Public Facing Page ***************/
        public final static String HomePage = "/";
        public final static String Membership = "/membership";
        public final static String Partners = "/partners";
        public final static String PartnersRequest = "/submitPartnerRequest";
        public final static String About = "/about";
        public final static String Apply = "/apply";
        public final static String PartnerConfirmation = "public/partnerConfirmation";
        public final static String ContactUs = "/contactUs";
        public final static String Leadership = "/leadership";

    }
    public class Error {
        public final static String PageNotFound 					= "public/error/404";
        public final static String ServiceUnavailable				= "public/error/503";
        public final static String DeniedAccess 					= "public/error/403";
        public final static String Error 							= "/error";
        public final static String Construction 					= "public/error/construction";
        public final static String Maintenance 						= "public/error/maintenance";
    }
}

