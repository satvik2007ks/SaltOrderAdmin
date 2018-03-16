<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VMP_1._0.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salt Order Admin</title>
    <link runat="server" rel="shortcut icon" href="Images/faviconLogo.ico" type="image/x-icon" />
    <link runat="server" rel="icon" href="Images/faviconLogo.ico" type="image/ico" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <script type="text/javascript">
        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function () {
            history.pushState(null, null, document.URL);
        });
    </script>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
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
<body>
    <form id="form1" runat="server">
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
        <div style="margin-top: 15%;">
            <div style="text-align: center;">
                <h3>Authentication in Progress....</h3>
            </div>
            <div class="loader" style="margin: 0 auto;"></div>
            <div style="text-align: center;">
                <h4>Logging in as <%=User.Identity.Name.Split('\\')[1].ToString()%></h4>
            </div>
        </div>
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
</html>
