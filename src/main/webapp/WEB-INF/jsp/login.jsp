<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/form" %>

<tf:form>
    <tf:text name="inputEmail3" label="Email" type="email"/>
    <tf:text name="inputPassword3" label="Password" type="password"/>
    <tf:radio label="Radios">
        <tf:radio-input label="Option one" name="gridRadios" value="option1" index="1"
                         checked="true"/>
        <tf:radio-input label="Option two" name="gridRadios" value="option3" index="2"/>
        <tf:radio-input label="Option three is disabled" name="gridRadios" value="option3" index="3"
                         disabled="true"/>
    </tf:radio>
    <tf:checkbox label="Checkbox" placeholder="Check me out"/>
    <tf:submit label="Sign in"/>
</tf:form>
