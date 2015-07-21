<!DOCTYPE html>
<html>


<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>WelCome | tag your pictures</title>
<link rel="stylesheet" href="css/style_blue.css" type="text/css">
<link rel="stylesheet" href="css/feedback.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/profile.css" type="text/css"media="screen">
<script src="view/profile.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
function noteHide(){
	
	$('.container').hide();
	
}
$(document).ready(function() {

   /*  $('.container').hide(); */

    $('noteHide()').click(function() {

        $('.container').hide();

    });

   /*  $('#btn-game').click(function() {

        $('.container').hide();
       // $('#game_container').show();
    }); */
});
</script>

</head>
<body>
	<div id="header">
			<h1>
			<a href="allimages.spring?pageNo=1"><img src="images/logo.png" alt="pcc"></a>
		</h1>

			<!-- top nav end -->
			<ul id="topnav">
				<li><a href="logout.spring">Logout</a></li>
			</ul>
			<!-- topnav end -->


		</div>
		<!-- header end -->
		<div id="content">
			<div id="middle_section">
				<h3>My Dashboard</h3>
				<hr>
				
		   <div class="center">
		   <div class="btn-group" align="center" data-toggle="buttons-radio"><!-- onclick="uploadHide()" -->
 
  <button id="btn-game" class="btn btn btn-primary" type="button" >Upload</button>
</div>
		   
				
	
	
	<table cellpadding="0" cellspacing="0" border="1" class="form_table top-hr"
                                style="width: 790px !important;">
                                <tr>
                                                <td valign="top" style="vertical-align: top;">
                                                                
                                                                                <table class="regPngImageAreaLeft" cellspacing="10">
                                                                                                <tr>
                                                                                                <%-- // PERSONAL INFORMATION //--%>
                                                                                                                <td style="padding-bottom: 0px;">
                                                                                                                <h1 style="font-size: 21px !important; margin-top: 0px !important; margin-bottom: 4px !important;">Register Account</h1>
                                                                                                                <span class="smallText">We have made registering a new online account fast and easy.</span>
                                                                                                                </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                                <td style="padding-top: 0px;" class="required">
                                                                                                                <span class="asterik">*</span> Required <a
                                                                                                                                class="clueTip" href="${portalHome}/rxsol/chp/html/ps/CH/field.htm"
                                                                                                                                rel="${portalHome}/rxsol/chp/html/ps/CH/field.htm"> fields </a>
                                                                                                                </td>
                                                                                                </tr>
                                                                                                
                                                                                                <c:if test="${rxCtaForm.registrationType=='long'}">
                                                                                                                <tr>
                                                                                                                                <td><c:if test="${brand != 'proact'}">
                                                                                                                                                                <img class="id-card"
                                                                                                                                                                                src="${portalHome}/rxsol/chp/html/ps/img/${userClientName}/cta/id_card_optum.png" />
                                                                                                                                                </c:if></td>
                                
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                                <td><img class="id-card"
                                                                                                                                                src="${portalHome}/rxsol/chp/html/ps/img/${userClientName}/cta/id_card_abcd.png" />
                                                                                                                                </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td>Please note:
                                                                                                                        These cards are examples only, your insurance card may not look like the cards displayed.
                                                                                                                        Please use your OptumRx or medical insurance card to locate your member ID.
                                                                                                                      </td>
                                                                                                                </tr>
                                                                                                </c:if>
                                                                                                
                                                                                                <tr>
                                                                                                                <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>
                                                                                                                <div onclick="javascript: webtrends()">
                                                                                                                                <div id="clicktocalllink" style="padding-right: 5px !important;"><strong>Need
                                                                                                                                                Help? Talk to a Representative<span>&nbsp;&#187;</span></strong></div>
                                                                                                                                </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                                <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>                  
                                                                                                                                <div class="left1"><img style="width: 200px;"
                                                                                                                                                src="${portalHome}/rxsol/chp/html/ps/img/${userClientName}/cta/secure_info_lock.png" />
                                                                                                                                </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                                <td height="100%">
                                                                                                                </td>
                                                                                                </tr>
                                                                                </table>
                                                </td>
                                                <td valign="top" style="width: 420px; vertical-align: top;">
                                                                <table cellpadding="0" cellspacing="0" border="0" id="ctaFormTable">
                                                                                <tr>
                                                                                                <td colspan="2" class="header-cell form-hr">
                                                                                                                <span id="personal-info-header">Personal Information</span>
                                                                                                </td>
                                                                                                <td colspan="2" class="header-cell form-hr">
                                                                                                                <img id="optumid-logo-sm" alt="OPTUM ID" src="${portalHome}/rxsol/chp/html/ps/img/${userClientName}/cta/OptumId_logo_sm.png">
                                                                                                </td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th></th>
                                                                                                <td></td>
                                                                                </tr>
                                                                                <tr>                       
                                                                                <td  colspan="4">
                                                                                <p class="container" align="center" id="game_container" align="center" id="game_container" colspan="4">Note: Your benefits must be active
							with OptumRx in order to complete registration.</p>
							                                                      </td>
                                                                                </tr> 
                                                                                <%-- <c:if test="${rxCtaForm.registrationType=='long'}"> --%>
                                                                                                <!-- <tr>                               
                                                                                <td colspan="4">Note: Your benefits must be active with OptumRx in order to complete registration.
                                                                                </td>
                                                                                </tr> -->
                                                                                                <tr>
                                                                                                                <%-- <th scope="row"><span class="asterik">*</span> <a
                                                                                                                                class="clueTip"
                                                                                                                                href="${portalHome}/rxsol/chp/html/ps/CH/member_id.htm"
                                                                                                                                rel="${portalHome}/rxsol/chp/html/ps/CH/member_id.htm">Member
                                                                                                                ID</a></th> --%>
                                                                                                                <%-- <td colspan="3"><form:input path="memberId" id="memberId"
                                                                                                                                htmlEscape="true" cssClass="form-control" tabindex="1"
                                                                                                                                maxlength="18"
                                                                                                                                onclick="dcsMultiTrack('DCS.dcssip',siteWebTagUrl,'DCS.dcsuri','/Long registration/RegisterYourAccount/MemberIDclick.evt','WT.ti','EVENT: Register - MemberID','WT.cg_n','CONSUMER','WT.si_n','','WT.si_p','','WT.si_x','','WT.seg_1','','WT.vhseg_1','','WT.seg_2','','WT.vhseg_2','','WT.pn_sku','','WT.tx_u','','WT.tx_s','','DCSext.client','${userClientName}')" />
                                                                                                                </td>
                                                                                      --%>           </tr>
                                                                                                
                                                                                                <tr>
                                                                                                                <th></th>
                                                                                                                <td colspan="3"><div class="btn-group" align="center" data-toggle="buttons-radio">
                                                                                                                
                                                                                                                                                                                                                               
                                                                                                                                                                                                                               
                                                                                                                                                                              <a class="caregiver_a"
                                                                                                                                href="#"
                                                                                                                                tabindex="2"
                                                                                                                                onclick="noteHide()"
                                                                                                                                style="margin-left: 3px;"> Caregiver? Click here &#187;</a>

                                                                                                                </td>
                                                                                                </tr>
                                                                                                <%-- <tr class="memberId_warning" style="display: none !important;">
                                                                                                                <th></th>
                                                                                                                <td colspan="3"><span id="memberId_warning" style="color: red !important; "></span>
                                                                                                                </td>
                                                                                                </tr>
                                                                                                <tr class="memberId_swarning">
                                                                                                                <th></th>
                                                                                                                <td colspan="3">
                                                                                                                                <span id="memberId_swarning" style="color: red;">
                                                                                                                                                <spring:hasBindErrors name="rxCtaForm">
                                                                                                                                                <span class="error">
                                                                                                                                                                <form:errors path="memberId" htmlEscape="false" />
                                                                                                                                                </span>
                                                                                                                                                </spring:hasBindErrors>
                                                                                                                                </span>
                                                                                                                </td>
                                                                                                </tr>
                                                                                </c:if>
                                                                                
                                                                                
                                                                                <%-- First Name
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span><a
                                                                                                                                class="clueTip"
                                                                                                                                href="${portalHome}/rxsol/chp/html/ps/CH/cta_firstname.htm"
                                                                                                                                rel="${portalHome}/rxsol/chp/html/ps/CH/cta_firstname.htm">First Name
                                                                                                                </a></th>
                                                                                                <td><form:input path="firstName" id="firstName" size="25"
                                                                                                                onclick="javascript : generateWebTrendsForFirstName();"
                                                                                                                maxlength="15" htmlEscape="true" cssClass="form-control"
                                                                                                                tabindex="3" /></td>
                                                                                                                <th>Middle</th>
                                                                                                                <td><form:input path="middleInitial" id="middleInitial" size="1"
                                                                                                                maxlength="1" htmlEscape="true" cssClass="form-control mi" tabindex="4" />
                                                                                                                </td>
                                                                                </tr>
                                                
                                                                                <tr class="firstName_swarning">
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="firstName_swarning"
                                                                                                                style="color: red;"> <spring:hasBindErrors
                                                                                                                name="rxCtaForm">
                                                                                                                <span class="error"><form:errors path="firstName"
                                                                                                                                htmlEscape="false" /></span>
                                                                                                </spring:hasBindErrors> </span></td>
                                                                                </tr>
                                                
                                                                                <tr class="firstName_warning middleInitial_warning">
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="firstName_warning" style="color: red;"></span><span id="middleInitial_warning" style="color: red;"></span></td>
                                                                                </tr>
                                                                                Middle Initial
                                                
                                                                                Last Name
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span><a
                                                                                                                                class="clueTip"
                                                                                                                                href="${portalHome}/rxsol/chp/html/ps/CH/cta_lastname.htm"
                                                                                                                                rel="${portalHome}/rxsol/chp/html/ps/CH/cta_lastname.htm">Last Name
                                                                                                                </a></th>
                                                                                                <td><form:input path="lastName" id="lastName" size="25"
                                                                                                                maxlength="20" htmlEscape="true" cssClass="form-control"
                                                                                                                tabindex="5" /></td>
                                                                                </tr>
                                                                                <tr class="lastName_warning" style="display: none !important;">
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="lastName_warning" style="color: red;"></span>
                                                                                                </td>
                                                                                </tr>
                                                                                <tr class="lastName_swarning">
                                                                                                <th></th>
                                                                                                <td colspan="3">
                                                                                                                <span id="lastName_swarning" style="color: red;">
                                                                                                                                <spring:hasBindErrors name="rxCtaForm">
                                                                                                                                <span class="error">
                                                                                                                                                <form:errors path="lastName" htmlEscape="false" />
                                                                                                                                </span>
                                                                                                                                </spring:hasBindErrors>
                                                                                                                </span>
                                                                                                </td>
                                                                                </tr>
                                                                                
                                                                                Email
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span>Email</th>
                                                                                                <td colspan="3"><form:input path="emailAddress" id="emailAddress" maxlength="75" 
                                                                                                                htmlEscape="true" tabindex="6" cssClass="form-control" /></td>
                                                                                </tr>
                                                                                <tr class="emailAddress_warning"  style="display: none !important;">
                                                                                                <th></th>
                                                                                                <td colspan="3">
                                                                                                <span    id="emailAddress_warning" style="display:none;"></span>
                                                                                                </td>
                                                                                </tr>
                                                                                <tr><th></th>
                                                                                <td colspan="3">
                                                                                                                <spring:hasBindErrors
                                                                                                                                                                name="rxRegistrationForm">
                                                                                                                                                                <span class="error" id="emailAddress_swarning" style="color:#ff0000;">     <form:errors path="emailAddress" htmlEscape="false" /></span>
                                                                                                                                </spring:hasBindErrors>
                                                                                                                
                                                                                                </td>
                                                                                </tr>
                                                                                
                                                                                                
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span>Confirm Email</th>
                                                                                                <td colspan="3"><form:input path="confirmEmailAddress"
                                                                                                                id="confirmEmailAddress" maxlength="75" htmlEscape="true"
                                                                                                                tabindex="7" cssClass="form-control" />
                                                                                                </td>
                                                                                </tr>
                                                                                <tr class="confirmEmailAddress_warning"   style="display: none !important;">
                                                                                                <th></th>
                                                                                                <td colspan="3">
                                                                                                <span class="" id="confirmEmailAddress_warning"
                                                                                                                style="display:none;"></span>
                                                                                                                </td>
                                                                                </tr>
                                                                                
                                                                                <tr class="confirmEmailAddress_swarning">
                                                                                                <th></th>
                                                                                                <td colspan="3">
                                                                                                                <span
                                                                                                                id="confirmEmailAddress_swarning" style="color:red" class="error" >
                                                                                                                <spring:hasBindErrors
                                                                                                                                                                name="rxRegistrationForm">
                                                                                                                                                                                <form:errors path="confirmEmailAddress" htmlEscape="false" />
                                                                                                                                </spring:hasBindErrors>
                                                                                                                </span>
                                                                                                                </td>
                                                                                </tr>
                                                
                                                
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span>Date of Birth</th>
                                                                                                <td colspan="3" style="width: 618px !important;"><span
                                                                                                                class="error dateOfBirth" id="dateOfBirth" style="width: 260px !important;"> <form:select
                                                                                                                path="bodMonth" tabindex="8" cssStyle="width:90px;">
                                                                                                                <option value="-99">Month</option>
                                                                                                                <c:forEach items="${monthsList}" var="monthOption">
                                                                                                                                <form:option value="${monthOption}">${monthOption}</form:option>
                                                                                                                </c:forEach>
                                                                                                </form:select> <form:select path="bodDay" tabindex="9" cssStyle="width:61px;">
                                                                                                                <option value="-99">Day</option>
                                                                                                                <c:forEach items="${daysList}" var="dayOption">
                                                                                                                                <form:option value="${dayOption}">${dayOption}</form:option>
                                                                                                                </c:forEach>
                                                                                                </form:select> <form:select path="bodYear" tabindex="10" cssStyle="width:80px;">
                                                                                                                <option value="-99">Year</option>
                                                                                                                <c:forEach items="${yearsList}" var="yearOption">
                                                                                                                                <form:option value="${yearOption}">${yearOption}</form:option>
                                                                                                                </c:forEach>
                                                                                                </form:select> </span>
                                                
                                                                                                </td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th></th>
                                                                                                <td colspan="3">
                                                                                                                <spring:hasBindErrors
                                                                                                                                name="rxCtaForm">
                                                                                                                                                <span class="error" style="color:red;"><form:errors path="dateOfBirth" htmlEscape="false" /></span>
                                                                                                                </spring:hasBindErrors>
                                                                                                </td>
                                                                                </tr>
                                                
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span>Gender</th>
                                                                                                <td colspan="3"
                                                                                                                style="margin: 0px !important; height: auto !important; width: auto !important; height: 22px !important; width: 148px !important;_width: 148px !important;">
                                                                                                <span id="gender"  style="_width:180px;*width:183px;width:180px;"><form:radiobutton
                                                                                                                path="gender" id="male" value="M" tabindex="11"
                                                                                                                cssClass="radio_selects">
                                                                                                </form:radiobutton> <label for="male"><strong>&nbsp;Male</strong></label>&nbsp;&nbsp; <form:radiobutton
                                                                                                                path="gender" id="female" value="F" tabindex="12"
                                                                                                                cssClass="radio_selects">
                                                                                                </form:radiobutton> <label for="female"><strong>&nbsp;Female</strong></label></span></td><td style=""></td>
                                                                                </tr>
                                                
                                                                                <tr id="gender_swarning">
                                                                                                <th></th>
                                                                                                <td colspan="3" style="color: red;"><spring:hasBindErrors
                                                                                                                name="rxCtaForm">
                                                                                                                <span class="error"><form:errors path="gender"
                                                                                                                                htmlEscape="false" /></span>
                                                                                                </spring:hasBindErrors></td>
                                                                                </tr>
                                                
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span>Address Line 1</th>
                                                                                                <td colspan="3"><form:input path="addressLine1" id="addressLine1" size="25"
                                                                                                                maxlength="32" htmlEscape="true" cssClass="form-control"
                                                                                                                tabindex="13" /></td>
                                                                                </tr>
                                                                                <tr class="addressLine1_warning" style="display: none !important;padding-left:0px;">
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="addressLine1_warning"
                                                                                                                style="color: red;"></span></td>
                                                                                </tr>
                                                                                <tr class="addressLine1_swarning">
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="addressLine1_swarning"
                                                                                                                style="color: red;"> <spring:hasBindErrors
                                                                                                                name="rxCtaForm">
                                                                                                                <span class="error"><form:errors path="addressLine1"
                                                                                                                                htmlEscape="false" /></span>
                                                                                                </spring:hasBindErrors> </span></td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th scope="row">Address Line 2</th>
                                                                                                <td colspan="3"><form:input path="addressLine2" id="addressLine2" size="25"
                                                                                                                maxlength="32" htmlEscape="true" cssClass="form-control"
                                                                                                                tabindex="14" /></td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th></th>
                                                                                                <td colspan="3"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span>City</th>
                                                                                                <td colspan="3"><form:input path="city" id="city" size="25" maxlength="24"
                                                                                                                htmlEscape="true" cssClass="form-control" tabindex="15" /></td>
                                                                                </tr>
                                                                                <tr class="city_warning" style="display: none !important;">
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="city_warning" style="color: red;"></span>
                                                                                                </td>
                                                                                </tr>
                                                                                <tr class="city_swarning" >
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="city_swarning" style="color: red;padding-left:0px;">
                                                                                                <spring:hasBindErrors name="rxCtaForm">
                                                                                                                <span class="error"><form:errors path="city"
                                                                                                                                htmlEscape="false" /></span>
                                                                                                </spring:hasBindErrors> </span></td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span>State</th>
                                                                                                <td colspan="3"><span class="error state" id="state"> <form:select
                                                                                                                path="state" id="state" tabindex="16" items="${statesMap}" /> </span></td>
                                                                                </tr>
                                                                                <tr> --%>
                                                        <%--                                         <th></th>
                                                                                                <td colspan="3"> <span id="state_warning"
                                                                                                                style="color: red; display: none !important;"></span><span
                                                                                                                id="state_swarning"
                                                                                                                style="color: red;"> <spring:hasBindErrors
                                                                                                                name="rxCtaForm">
                                                                                                                <span class="error"><form:errors path="state"
                                                                                                                                htmlEscape="false" /></span>
                                                                                                </spring:hasBindErrors> </span></td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span>ZIP
                                                                                                Code</th>
                                                                                                <td colspan="3"><form:input path="zip" id="zip" size="25" maxlength="10"
                                                                                                                onblur="javascript:return validateRegistrationZip(document.getElementById('zip'));"
                                                                                                                cssClass="zip" tabindex="17" /> (example: 55555)</td>
                                                                                </tr>
                                                                                <tr class="zip_warning">
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="zip_warning"
                                                                                                                style="color: red; display: none;"></span></td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th scope="row"><span class="asterik">*</span>Phone</th>
                                                                                                <td colspan="3"><form:input path="phoneNumberSec1"
                                                                                                                id="phoneNumberSec1" size="3" maxlength="3" tabindex="18"
                                                                                                                cssClass="three_space"
                                                                                                                onkeyup="phoneAutoJumpOnKeyUp(this,this.value,'phoneNumberSec1','phoneNumberSec2',3,'Please enter a valid three digit Area Code.');"
                                                                                                                onblur="javascript:return validateRegistrationPhoneField(this.value,'phoneNumberSec1',3,'true');"
                                                                                                                cssStyle="width:40px; border:1px solid #000000;" /> <form:input
                                                                                                                path="phoneNumberSec2" id="phoneNumberSec2" size="3" maxlength="3"
                                                                                                                tabindex="19" cssClass="three_space"
                                                                                                                onkeyup="phoneAutoJumpOnKeyUp(this,this.value,'phoneNumberSec2','phoneNumberSec3',3,'Please enter a valid three digit Prefix.');"
                                                                                                                onblur="javascript:return validateRegistrationPhoneField(this.value,'phoneNumberSec2',3,'true');"
                                                                                                                cssStyle="width:40px; border:1px solid #000000;" /> <form:input
                                                                                                                path="phoneNumberSec3" id="phoneNumberSec3" size="4" maxlength="4"
                                                                                                                tabindex="20" cssClass="four_space"
                                                                                                                onkeyup="phoneAutoJumpOnKeyUp(this,this.value,'phoneNumberSec3','phoneNumberSec3',4,'Please enter a valid four digit Line Number.');"
                                                                                                                onblur="javascript:return validateRegistrationPhoneField(this.value,'phoneNumberSec3',4,'true');"
                                                                                                                cssStyle="width:50px; border:1px solid #000000;" /> </td>
                                                                                </tr>
                                                                                <tr class="phone_warning">
                                                                                                <th></th>
                                                                                                <td colspan="3"><span
                                                                                                                id="phone_warning" style="color: red; display: none;padding-left:0px;"></span></td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th><div style="position: relative; padding-bottom: 100%;"><span class="asterik">*</span>I agree 
                                                                                                                                <form:checkbox path="certified" id="certified" tabindex="21" cssStyle="position: relative; top: 3px;" />
                                                                                                                </div>
                                                                                                </th>
                                                                                                <td colspan="3">
                                                                                                                <p>By checking this box, I hereby certify that the above information
                                                                                                                                is true and correct and accurately reflects MY personal information and
                                                                                                                                not that of some other person. I also understand that information about
                                                                                                                                my prescriptions may be sent to the email address I provided.</p>
                                                                                                </td>
                                                                                </tr>
                                                                                <tr class="certified_warning" style="display: none !important;">
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="certified_warning" style="color: red;"></span>
                                                                                                </td>
                                                                                </tr>  --%>
                                                                                <%-- <tr class="certified_swarning" >
                                                                                                <th></th>
                                                                                                <td colspan="3"><span id="certified_swarning" style="color: red;padding-left:0px;">
                                                                                                <spring:hasBindErrors name="rxCtaForm">
                                                                                                                <span class="error"><form:errors path="certified"
                                                                                                                                htmlEscape="false" /></span>
                                                                                                </spring:hasBindErrors> </span></td>
                                                                                </tr>
                                                                                <tr>
                                                                                                <th scope="row">
                                                                                                </th>
                                                                                                <td colspan="3">
                                                                                                                                                <a onclick="window.location.href='${mainContentWebappContextUrl}/mvc/j_spring_security_logout'; return false;">
                                                                                                                                <input type="image" class="form-control-btn"
                                                                                                                                                src="${portalHome}/rxsol/chp/html/ps/img/${userClientName}/cta/Cancel_btn_ON.png"
                                                                                                                                                value="cancel" alt="Cancel" title="Cancel"
                                                                                                                                                id="cancel_button" /></a> 
                                                                                                                                <a class="lock" onclick="validateForm(document.getElementById('rxCtaForm'));return false;">
                                                                                                                                <input type="image" class="form-control-btn"
                                                                                                                                                src="${portalHome}/rxsol/chp/html/ps/img/${userClientName}/cta/Submit_btn_ON.png"
                                                                                                                                                value="submit" alt="Submit" title="Submit"
                                                                                                                                                id="submit_button" /> </a>
                                                                                                </td>
                                                                                </tr> --%>
                                                                </table>
                                                </td>
                                </tr>
                </table>

	
				
			
    <table  style="align:center;">
			<tr>
				<td>
				<tr><td>
				<c:forEach var="e" items="${imagePojoList1}"> <table border="1"><tr><td> ${e.getImg_Url()} <br> <img  style="align:center; width:500px; height:500px;" alt="name" src="${e.getImg_Url()}" /> 
				   </td></tr></table> <br> </td>
					</tr>
									
				</c:forEach>
				
	</table> 
	<div class="dataTables_info" id="example_info">
						Showing 1 to 5 of <b> ${param.pageNo} </b>entries
						<div style="position: absolute; top: left: 500px;">
							<h6>
								&nbsp;
								<%--For displaying Previous link except for the 1st page --%>
								<c:if test="${param.pageNo> 1}">

									<td><a href="userlist.spring?pageNo=${param.pageNo-1}">Previous
											&nbsp;</a></td>
								</c:if>

								<c:forEach begin="1" end="${i}" var="j">
									<c:choose>
										<c:when test="${param.pageNo eq j}">
											<td>${j}</td>
										</c:when>
										<c:otherwise>
											<a href="userlist.spring?pageNo=${j}">${j} </a>&nbsp; 
									</c:otherwise>
									</c:choose>
								</c:forEach>

								<%--For displaying Next link --%>

								<c:if test="${param.pageNo lt i}">
									<td><a href="userlist.spring?pageNo=${param.pageNo+1}">Next
											&nbsp; </a></td>
								</c:if>
	
	
</div>
</div>
</div>

</body>
</html>