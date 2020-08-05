
package com.example.webserversetalarmtodo;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.example.webserversetalarmtodo package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetTodoOthers_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getTodoOthers");
    private final static QName _GetDoneSuperviseResponse_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getDoneSuperviseResponse");
    private final static QName _GetTodoImissive_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getTodoImissive");
    private final static QName _GetDoneOthersResponse_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getDoneOthersResponse");
    private final static QName _GetDoneImissive_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getDoneImissive");
    private final static QName _GetTodoSuperviseResponse_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getTodoSuperviseResponse");
    private final static QName _SetAlarmTodo_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "setAlarmTodo");
    private final static QName _GetDoneOthers_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getDoneOthers");
    private final static QName _GetTodoImissiveResponse_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getTodoImissiveResponse");
    private final static QName _GetDoneSupervise_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getDoneSupervise");
    private final static QName _GetTodoOthersResponse_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getTodoOthersResponse");
    private final static QName _SetAlarmTodoResponse_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "setAlarmTodoResponse");
    private final static QName _GetDoneImissiveResponse_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getDoneImissiveResponse");
    private final static QName _GetTodoSupervise_QNAME = new QName("http://service.getinfows.todoo.kmss.landray.com/", "getTodoSupervise");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.example.webserversetalarmtodo
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetTodoOthers }
     * 
     */
    public GetTodoOthers createGetTodoOthers() {
        return new GetTodoOthers();
    }

    /**
     * Create an instance of {@link GetTodoImissive }
     * 
     */
    public GetTodoImissive createGetTodoImissive() {
        return new GetTodoImissive();
    }

    /**
     * Create an instance of {@link GetDoneSuperviseResponse }
     * 
     */
    public GetDoneSuperviseResponse createGetDoneSuperviseResponse() {
        return new GetDoneSuperviseResponse();
    }

    /**
     * Create an instance of {@link GetDoneImissive }
     * 
     */
    public GetDoneImissive createGetDoneImissive() {
        return new GetDoneImissive();
    }

    /**
     * Create an instance of {@link GetDoneOthersResponse }
     * 
     */
    public GetDoneOthersResponse createGetDoneOthersResponse() {
        return new GetDoneOthersResponse();
    }

    /**
     * Create an instance of {@link GetDoneOthers }
     * 
     */
    public GetDoneOthers createGetDoneOthers() {
        return new GetDoneOthers();
    }

    /**
     * Create an instance of {@link GetTodoSuperviseResponse }
     * 
     */
    public GetTodoSuperviseResponse createGetTodoSuperviseResponse() {
        return new GetTodoSuperviseResponse();
    }

    /**
     * Create an instance of {@link SetAlarmTodo }
     * 
     */
    public SetAlarmTodo createSetAlarmTodo() {
        return new SetAlarmTodo();
    }

    /**
     * Create an instance of {@link GetTodoImissiveResponse }
     * 
     */
    public GetTodoImissiveResponse createGetTodoImissiveResponse() {
        return new GetTodoImissiveResponse();
    }

    /**
     * Create an instance of {@link GetTodoOthersResponse }
     * 
     */
    public GetTodoOthersResponse createGetTodoOthersResponse() {
        return new GetTodoOthersResponse();
    }

    /**
     * Create an instance of {@link SetAlarmTodoResponse }
     * 
     */
    public SetAlarmTodoResponse createSetAlarmTodoResponse() {
        return new SetAlarmTodoResponse();
    }

    /**
     * Create an instance of {@link GetDoneSupervise }
     * 
     */
    public GetDoneSupervise createGetDoneSupervise() {
        return new GetDoneSupervise();
    }

    /**
     * Create an instance of {@link GetDoneImissiveResponse }
     * 
     */
    public GetDoneImissiveResponse createGetDoneImissiveResponse() {
        return new GetDoneImissiveResponse();
    }

    /**
     * Create an instance of {@link GetTodoSupervise }
     * 
     */
    public GetTodoSupervise createGetTodoSupervise() {
        return new GetTodoSupervise();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetTodoOthers }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getTodoOthers")
    public JAXBElement<GetTodoOthers> createGetTodoOthers(GetTodoOthers value) {
        return new JAXBElement<GetTodoOthers>(_GetTodoOthers_QNAME, GetTodoOthers.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetDoneSuperviseResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getDoneSuperviseResponse")
    public JAXBElement<GetDoneSuperviseResponse> createGetDoneSuperviseResponse(GetDoneSuperviseResponse value) {
        return new JAXBElement<GetDoneSuperviseResponse>(_GetDoneSuperviseResponse_QNAME, GetDoneSuperviseResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetTodoImissive }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getTodoImissive")
    public JAXBElement<GetTodoImissive> createGetTodoImissive(GetTodoImissive value) {
        return new JAXBElement<GetTodoImissive>(_GetTodoImissive_QNAME, GetTodoImissive.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetDoneOthersResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getDoneOthersResponse")
    public JAXBElement<GetDoneOthersResponse> createGetDoneOthersResponse(GetDoneOthersResponse value) {
        return new JAXBElement<GetDoneOthersResponse>(_GetDoneOthersResponse_QNAME, GetDoneOthersResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetDoneImissive }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getDoneImissive")
    public JAXBElement<GetDoneImissive> createGetDoneImissive(GetDoneImissive value) {
        return new JAXBElement<GetDoneImissive>(_GetDoneImissive_QNAME, GetDoneImissive.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetTodoSuperviseResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getTodoSuperviseResponse")
    public JAXBElement<GetTodoSuperviseResponse> createGetTodoSuperviseResponse(GetTodoSuperviseResponse value) {
        return new JAXBElement<GetTodoSuperviseResponse>(_GetTodoSuperviseResponse_QNAME, GetTodoSuperviseResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SetAlarmTodo }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "setAlarmTodo")
    public JAXBElement<SetAlarmTodo> createSetAlarmTodo(SetAlarmTodo value) {
        return new JAXBElement<SetAlarmTodo>(_SetAlarmTodo_QNAME, SetAlarmTodo.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetDoneOthers }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getDoneOthers")
    public JAXBElement<GetDoneOthers> createGetDoneOthers(GetDoneOthers value) {
        return new JAXBElement<GetDoneOthers>(_GetDoneOthers_QNAME, GetDoneOthers.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetTodoImissiveResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getTodoImissiveResponse")
    public JAXBElement<GetTodoImissiveResponse> createGetTodoImissiveResponse(GetTodoImissiveResponse value) {
        return new JAXBElement<GetTodoImissiveResponse>(_GetTodoImissiveResponse_QNAME, GetTodoImissiveResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetDoneSupervise }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getDoneSupervise")
    public JAXBElement<GetDoneSupervise> createGetDoneSupervise(GetDoneSupervise value) {
        return new JAXBElement<GetDoneSupervise>(_GetDoneSupervise_QNAME, GetDoneSupervise.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetTodoOthersResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getTodoOthersResponse")
    public JAXBElement<GetTodoOthersResponse> createGetTodoOthersResponse(GetTodoOthersResponse value) {
        return new JAXBElement<GetTodoOthersResponse>(_GetTodoOthersResponse_QNAME, GetTodoOthersResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SetAlarmTodoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "setAlarmTodoResponse")
    public JAXBElement<SetAlarmTodoResponse> createSetAlarmTodoResponse(SetAlarmTodoResponse value) {
        return new JAXBElement<SetAlarmTodoResponse>(_SetAlarmTodoResponse_QNAME, SetAlarmTodoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetDoneImissiveResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getDoneImissiveResponse")
    public JAXBElement<GetDoneImissiveResponse> createGetDoneImissiveResponse(GetDoneImissiveResponse value) {
        return new JAXBElement<GetDoneImissiveResponse>(_GetDoneImissiveResponse_QNAME, GetDoneImissiveResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetTodoSupervise }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.getinfows.todoo.kmss.landray.com/", name = "getTodoSupervise")
    public JAXBElement<GetTodoSupervise> createGetTodoSupervise(GetTodoSupervise value) {
        return new JAXBElement<GetTodoSupervise>(_GetTodoSupervise_QNAME, GetTodoSupervise.class, null, value);
    }

}
