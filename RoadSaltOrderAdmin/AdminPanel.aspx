<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="RoadSaltOrderAdmin.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salt Order Admin</title>
    <link runat="server" rel="shortcut icon" href="Images/faviconLogo.ico" type="image/x-icon" />
    <link runat="server" rel="icon" href="Images/faviconLogo.ico" type="image/ico" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />

    <%--<script src="Scripts/bootstrap.min.js"></script>--%>
    <script src="Scripts/angular.min.js"></script>
    <script src="Scripts/Script.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <%--<script src="Scripts/dirPagination.js"></script>--%>
    <script type="text/javascript">
        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function () {
            history.pushState(null, null, document.URL);
        });
    </script>
    <style>
        .mmdheader, td {
            margin-left: 0px;
            margin-top: 0px;
            font-family: arial, helvetica, sans-serif;
            font-size: 70%;
        }

        th {
            text-align: center !important;
        }

        footer {
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 70px;
        }

        .head {
            font-family: verdana, Arial, sans-serif;
            font-size: 20px;
            font-weight: bold;
            color: #003865;
        }

        .head2 {
            font-family: verdana, Arial, sans-serif;
            font-size: 18px;
            font-weight: bold;
            color: #003865;
        }

        .FooterText {
            font-family: verdana, Arial, sans-serif;
            font-size: 11px;
            color: #333333;
        }

        .searchBarBG, .searchBar, .surveyBorder {
            background-color: #003865;
        }

        .searchBar, .whiteLink {
            color: #FFFFFF;
        }

        .searchBar, .copy {
            font-size: 65%;
        }

        a:visited {
            font-family: verdana, Arial, sans-serif;
            font-size: 10px;
            text-decoration: none;
            font-weight: bold;
        }

        a:link {
            font-family: verdana, Arial, sans-serif;
            font-size: 10px;
            text-decoration: none;
            font-weight: bold;
        }

        .blackLink {
            color: #000000;
        }

        .topNav, .topNavBG {
            background-color: #CCCCCC;
        }

        .topNav {
            font-size: 71%;
        }

        .darkGray {
            background-color: #999999;
        }

        .white {
            background-color: #FFFFFF;
        }

        .customfont {
            font-size: 14px;
            text-align: center;
        }

        .selected {
            background-color: darkgray;
        }

        .center {
            margin: 0 auto;
        }

        li a {
            font-size: 12px !important;
            font-family: sans-serif !important;
        }
    </style>
    <style>
        .loader {
            border: 16px solid #f3f3f3;
            border-radius: 50%;
            border-top: 16px solid #3498db;
            width: 120px;
            height: 120px;
            -webkit-animation: spin 2s linear infinite;
            animation: spin 2s linear infinite;
        }

        @-webkit-keyframes spin {
            0% {
                -webkit-transform: rotate(0deg);
            }

            100% {
                -webkit-transform: rotate(360deg);
            }
        }

        @keyframes spin {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }
    </style>
</head>
<body data-ng-app="saltOrderAdminModule">
    <div>
        <table border="0" style="width: 100%" class="mmdheader">
            <tr>
                <td style="width: 50%">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <img src="http://www.mmd.admin.state.mn.us/gifs/osplogo.jpg" alt="Office of State Procurement Logo" /></td>
                <td></td>
                <td width="50%" nowrap valign="bottom" align="right"><span class="head">&nbsp; &nbsp; &nbsp; &nbsp; Office of State Procurement</span><br />
                    <br />
                    <span class="head2">Road Salt Order Form</span><br />
                    <br />
                    <a href="https://mn.gov">
                        <img src="http://www.mmd.admin.state.mn.us/gifs/mngov.jpg" border="0" alt="Go To Minnesota's Home Page" /></a>
                </td>
            </tr>
        </table>
        <table width="100%" cellpadding="2" cellspacing="0" border="0" class="mmdheader">
            <tr class="searchBarBG">
                <td align="left" class="searchBar" nowrap valign="center">
                    <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="10" height="25" hspace="0" vspace="0" border="0" align="center" /><a href="http://www.mmd.admin.state.mn.us/mn01000.htm" class="whiteLink" align="center">About OSP</a> | <a href="http://www.mmd.admin.state.mn.us/mn01085.asp" class="whiteLink" align="center">Contact Us</a> | <a href="https://mn.gov/admin" class="whiteLink" align="center">Admin Home</a></td>
            </tr>
        </table>
        <!-- top nav table -->
        <table width="100%" cellpadding="2" cellspacing="0" border="0" class="mmdheader">
            <tr>
                <td class="topNavBG">
                    <table cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <!-- theme navigation -->
                            <!-- topnav item with its borders -->
                            <td class="topNav" align="center">
                                <center>  					
                  &nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mmd.admin.state.mn.us" CLASS="blackLink"><!--A-->Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
               </center>
                            </td>
                            <td class="darkGray">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <td class="white">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <!-- topnav item with its borders -->
                            <td class="topNav" align="center">
                                <center>  					
                  &nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mmd.admin.state.mn.us/mn06000.htm" CLASS="blackLink"><!--B-->Acquisitions</a>&nbsp;&nbsp;&nbsp;&nbsp;
               </center>
                            </td>
                            <td class="darkGray">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <td class="white">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <!-- topnav item with its borders -->
                            <td class="topNav" align="center">
                                <center>  					
                  &nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mmd.admin.state.mn.us/mn07000.htm" CLASS="blackLink"><!--C-->Construction</a>&nbsp;&nbsp;&nbsp;&nbsp;
               </center>
                            </td>
                            <td class="darkGray">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <td class="white">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <!-- topnav item with its borders -->
                            <td class="topNav" align="center">
                                <center>  					
                  &nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mmd.admin.state.mn.us/mn05000.htm" CLASS="blackLink"><!--D-->Professional/Technical Contracting</a>&nbsp;&nbsp;&nbsp;&nbsp;
               </center>
                            </td>
                            <td class="darkGray">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <td class="white">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <!-- topnav item with its borders -->
                            <td class="topNav" align="center">
                                <center>  					
                  &nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mmd.admin.state.mn.us/mn02000.htm" CLASS="blackLink"><!--E-->Vendor Information</a>&nbsp;&nbsp;&nbsp;&nbsp;
               </center>
                            </td>
                            <td class="darkGray">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <td class="white">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <!-- topnav item with its borders -->
                            <td class="topNav" align="center" valign="center">
                                <center>  					
                  &nbsp;&nbsp;&nbsp;<A HREF="http://www.mmd.admin.state.mn.us/coop.htm" CLASS="blackLink"><!--G-->Cooperative Purchasing</A>&nbsp;&nbsp;&nbsp;
               </center>
                            </td>
                            <td class="darkGray">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <td class="white">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <!-- topnav item with its borders -->
                            <td class="topNav" align="center" valign="center">
                                <center>  					
                  &nbsp;&nbsp;&nbsp;<a href="http://www.mmcap.org" class="blackLink" target="_blank"><!--H-->MMCAP</a>&nbsp;&nbsp;&nbsp;
               </center>
                            </td>
                            <td class="darkGray">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                            <td class="white">
                                <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="25" hspace="0" vspace="0" border="0" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!-- blank 1 px gray row -->
            <tr>
                <td class="darkGray">
                    <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="1" height="1" hspace="0" vspace="0" border="0"></td>
            </tr>
            <!-- blank 1 px white row -->
            <tr>
                <td class="white">
                    <img src="http://www.mmd.admin.state.mn.us/gifs/blank.gif" alt="" width="650" height="1" hspace="0" vspace="0" border="0"></td>
            </tr>
        </table>
        <!-- end top nav -->
    </div>
    <form id="form1" runat="server">
        <div>
            <h3 style="text-align: center">Welcome to Admin Panel</h3>
        </div>
        <br />
        <hr />
        <div class="container">
            <div class="col-md-12">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <ul class="nav nav-tabs">
                        <li id="liReport" runat="server" role="presentation" class="active">
                            <asp:LinkButton ID="lnkReport" runat="server" Text="Salt Order Report" Style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; font-size: 14px;" OnClick="lnkReport_Click"></asp:LinkButton></li>
                        <li id="liEmail" runat="server" role="presentation">
                            <asp:LinkButton ID="lnkEmail" runat="server" Text="Manage email ID's" Style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; font-size: 14px;" OnClick="lnkEmail_Click"></asp:LinkButton></li>
                    </ul>
                </div>
                <div class="col-md-4"></div>
            </div>

        </div>
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div class="container-fluid" data-ng-controller="saltOrderReportController">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-5"></div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Select Year</label>
                                        <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control"></asp:DropDownList>
                                    </div>
                                    <input type="button" value="Get Report" class="btn btn-primary" data-ng-click="GetReport()" />
                                </div>
                                <div class="col-md-5"></div>
                            </div>
                        </div>
                        <br />
                    </div>
                    <div class="container-fluid" id="divReport" style="display: none">
                        <div class="col-md-12" style="text-align: right">
                            <asp:LinkButton ID="lnkExport" runat="server" OnClick="lnkExport_Click" Style="font-size: 12px; font-family: sans-serif;">Export to Excel<span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span></asp:LinkButton>
                        </div>
                        <div class="col-md-12">
                            <table class="table table-bordered">
                                <thead>
                                    <tr style="background-color: lightgrey;">
                                        <th>Auth E-mail</th>
                                        <th>Order Id</th>
                                        <th>Agency POC</th>
                                        <th>Agency Email</th>
                                        <th>Agency Direct Ph</th>
                                        <th>Agency Alt Ph</th>
                                        <th>City / County</th>
                                        <th>Contract Contact Name</th>
                                        <th>Contract Email</th>
                                        <th>Contract Direct Phone</th>
                                        <th>Order Date</th>
                                        <th>Municipal Agency Name</th>
                                        <th>Street Address</th>
                                        <th>City</th>
                                        <th>Zip</th>
                                        <th>Unloading Method</th>
                                        <th>Untreated Salt Qty</th>
                                        <th>Qty Type</th>
                                        <th>Treated Salt Qty</th>
                                        <th>Qty Type</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-ng-repeat="order in report">
                                        <td class="customfont">{{order.emailID}}</td>
                                        <td class="customfont">{{order.orderID}}</td>
                                        <td class="customfont">{{order.agencyPOC}}</td>
                                        <td class="customfont">{{order.agencyEmail}}</td>
                                        <td class="customfont">{{order.agencyDirectPhone}}</td>
                                        <td class="customfont">{{order.agencyAltPhone}}</td>
                                        <td class="customfont">{{order.agencyLocationType}}</td>
                                        <td class="customfont">{{order.contractName}}</td>
                                        <td class="customfont">{{order.contractEmail}}</td>
                                        <td class="customfont">{{order.contractDirectPhone}}</td>
                                        <td class="customfont">{{order.orderDateTime}}</td>
                                        <td class="customfont">{{order.municipalAgencyName}}</td>
                                        <td class="customfont">{{order.streetAddress}}</td>
                                        <td class="customfont">{{order.city}}</td>
                                        <td class="customfont">{{order.zip}}</td>
                                        <td class="customfont">{{order.unloadingMethod}}</td>
                                        <td class="customfont">{{order.untreatedSaltQty}}</td>
                                        <td class="customfont">{{order.untreatedSaltQtyType}}</td>
                                        <td class="customfont">{{order.treatedSaltQty}}</td>
                                        <td class="customfont">{{order.treatedSaltQtyType}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div class="container" data-ng-controller="saltOrderEmailController">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-6" style="text-align: center">
                                <h5>Add / Update Email ID's</h5>
                            </div>
                            <div class="col-md-6" style="text-align: center">
                                <h5>Manage Email ID's</h5>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-6">
                                <div style="display: none; text-align: center" id="myMessage1" runat="server" class="alert alert-success col-sm-12">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <label id="lblMsg">Email ID Saved Successfully</label>
                                </div>
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <div class="row" style="text-align: center">
                                        <input type="button" value="New / Clear" class="btn btn-primary" data-ng-click="Clear()" />
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <label>Email ID:</label>
                                        <input type="email" id="txtemail" data-ng-model="selectedEmailID" class="form-control" />
                                    </div>
                                    <input type="button" id="btnSave" data-ng-click="SaveEmail()" value="Save" class="btn btn-primary" />
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <div class="col-md-6">
                                <div class="col-md-1"></div>
                                <div class="col-md-9" style="text-align: center">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <label>Show:</label></div>
                                        <div class="col-md-3">
                                            <select data-ng-model="pageSize" id="pageSize" class="form-control">
                                                <option value="5">5</option>
                                                <option value="10">10</option>
                                                <option value="15">15</option>
                                                <option value="20">20</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2">
                                            <label>Search:</label></div>
                                        <div class="col-md-5">
                                            <input type="text" placeholder="Search E-Mail" data-ng-model="q" id="search" class="form-control" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <table id="tblEmail" class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Email ID's</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr data-ng-repeat="email in emails| filter:q | startFrom:currentPage*pageSize | limitTo:pageSize" data-ng-click="loadtextbox(email.emailID,email.contactID)" class="{{selected}}" style="cursor: pointer">
                                                    <td class="customfont">{{email.emailID}}</td>
                                                    <td style="display: none">{{email.contactID}} </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <input type="button" value="< Prev" class="btn btn-default" data-ng-disabled="currentPage == 0" data-ng-click="currentPage=currentPage-1" />
                                        {{currentPage+1}} / {{numberOfPages()}}
                                    <input type="button" value="Next >" class="btn btn-default" data-ng-disabled="currentPage >= getData().length/pageSize - 1" data-ng-click="currentPage=currentPage+1" />
                                        <br />
                                        <br />
                                        <input type="button" id="btnDelete" value="Delete" class="btn btn-danger center" style="display: none" data-ng-click="Delete()" />
                                    </div>
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </form>
    <footer>
        <hr />
        <table width="70%" align="center">
            <tr>
                <td class="FooterText" align="center">You will need <a href="http://www.adobe.com/products/acrobat/readstep2.html">Adobe Acrobat Reader</a> to print or view PDF files.<br />
                    Information found on this website can be made available in alternative formats, such as large print, Braille, or on tape, by calling 651.296.2600. Persons with a hearing or speech disability can contact us through the Minnesota Relay Service by dialing 711 or 1.800.627.3529.<br />
                    The State of Minnesota is an Equal Opportunity Employer.</P>
                </td>
            </tr>
            <tr>
                <td class="FooterText" align="center"><font color="#8000FF">&copy;2000-2017 State of Minnesota, Department of Administration</font></P>
                </td>
            </tr>
            <tr>
                <td align="CENTER"><a href="http://www.mmd.admin.state.mn.us/mn01005.htm">What's New</a> | <a href="http://www.mmd.admin.state.mn.us/contents.htm">Site Map</a> | <a href="http://www.mmd.admin.state.mn.us/mn09000.asp">Staff Directory</a> | <a href="mailto:luke.jannett@state.mn.us">Send Email</a>
                </td>
            </tr>
        </table>
    </footer>
</body>
<script>
    function runEffect1() {
        //alert("working");
        $("#<%=myMessage1.ClientID%>").show();
        setTimeout(function () {
            var selectedEffect = 'blind';
            var options = {};
            $("#<%=myMessage1.ClientID%>").hide();
        }, 5000);
        return false;
    }
</script>
</html>
