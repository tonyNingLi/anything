
package com.example.webserversendtodo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>notifyTodoGetContext complex type�� Java �ࡣ
 * 
 * <p>����ģʽƬ��ָ�������ڴ����е�Ԥ�����ݡ�
 * 
 * <pre>
 * &lt;complexType name="notifyTodoGetContext">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="otherCond" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="pageNo" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="rowSize" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="targets" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="type" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "notifyTodoGetContext", propOrder = {
    "otherCond",
    "pageNo",
    "rowSize",
    "targets",
    "type"
})
public class NotifyTodoGetContext {

    protected String otherCond;
    protected int pageNo;
    protected int rowSize;
    protected String targets;
    protected int type;

    /**
     * ��ȡotherCond���Ե�ֵ��
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOtherCond() {
        return otherCond;
    }

    /**
     * ����otherCond���Ե�ֵ��
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOtherCond(String value) {
        this.otherCond = value;
    }

    /**
     * ��ȡpageNo���Ե�ֵ��
     * 
     */
    public int getPageNo() {
        return pageNo;
    }

    /**
     * ����pageNo���Ե�ֵ��
     * 
     */
    public void setPageNo(int value) {
        this.pageNo = value;
    }

    /**
     * ��ȡrowSize���Ե�ֵ��
     * 
     */
    public int getRowSize() {
        return rowSize;
    }

    /**
     * ����rowSize���Ե�ֵ��
     * 
     */
    public void setRowSize(int value) {
        this.rowSize = value;
    }

    /**
     * ��ȡtargets���Ե�ֵ��
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTargets() {
        return targets;
    }

    /**
     * ����targets���Ե�ֵ��
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTargets(String value) {
        this.targets = value;
    }

    /**
     * ��ȡtype���Ե�ֵ��
     * 
     */
    public int getType() {
        return type;
    }

    /**
     * ����type���Ե�ֵ��
     * 
     */
    public void setType(int value) {
        this.type = value;
    }

}
