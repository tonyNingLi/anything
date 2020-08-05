
package com.example.webserverinterfacenew;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebService(name = "IGetChartWebservice", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface IGetChartWebservice {


    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getSubInfo", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetSubInfo")
    @ResponseWrapper(localName = "getSubInfoResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetSubInfoResponse")
    public String getSubInfo(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPDSubInfo", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetPDSubInfo")
    @ResponseWrapper(localName = "getPDSubInfoResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetPDSubInfoResponse")
    public String getPDSubInfo(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getDubanInfo", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetDubanInfo")
    @ResponseWrapper(localName = "getDubanInfoResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetDubanInfoResponse")
    public String getDubanInfo(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getMeetingInfo", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetMeetingInfo")
    @ResponseWrapper(localName = "getMeetingInfoResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetMeetingInfoResponse")
    public String getMeetingInfo(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getMeetingRoomCountInfo", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetMeetingRoomCountInfo")
    @ResponseWrapper(localName = "getMeetingRoomCountInfoResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetMeetingRoomCountInfoResponse")
    public String getMeetingRoomCountInfo(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPartyInfo", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetPartyInfo")
    @ResponseWrapper(localName = "getPartyInfoResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetPartyInfoResponse")
    public String getPartyInfo(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPerSubInfo", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetPerSubInfo")
    @ResponseWrapper(localName = "getPerSubInfoResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetPerSubInfoResponse")
    public String getPerSubInfo(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getOnlineNum", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetOnlineNum")
    @ResponseWrapper(localName = "getOnlineNumResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetOnlineNumResponse")
    public String getOnlineNum(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getMeetingRoomPercentInfo", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetMeetingRoomPercentInfo")
    @ResponseWrapper(localName = "getMeetingRoomPercentInfoResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetMeetingRoomPercentInfoResponse")
    public String getMeetingRoomPercentInfo(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg1
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getOrSendFile", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetOrSendFile")
    @ResponseWrapper(localName = "getOrSendFileResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetOrSendFileResponse")
    public String getOrSendFile(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0,
        @WebParam(name = "arg1", targetNamespace = "")
        String arg1);

    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPerBJInfo", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetPerBJInfo")
    @ResponseWrapper(localName = "getPerBJInfoResponse", targetNamespace = "http://service.getChart.todoo.kmss.landray.com/", className = "com.example.webserverinterfacenew.GetPerBJInfoResponse")
    public String getPerBJInfo(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

}