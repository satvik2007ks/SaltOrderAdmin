/// <reference path="angular.min.js" />


var saltOrderAdminApp = angular
                    .module("saltOrderAdminModule", ["saltOrderReport", "saltOrderEmail"]);

var saltOrderReportApp = angular
                            .module("saltOrderReport", [])
                            .controller("saltOrderReportController", function ($scope, $http) {
                                $scope.GetReport = function () {
                                    //$scope.year = $('#ddlYear :selected').text();
                                   // alert($("#ddlYear option").length);
                                    if ($("#ddlYear option").length > 0) {
                                        $scope.loadreport();
                                        $('#divReport').css("display", "block");
                                        // Yay we have options
                                    }
                                    else
                                    {
                                        alert("No Data Found");
                                    }
                                   
                                }
                                $scope.loadreport = function () {
                                    var obj = {};
                                    obj.year = $('#ddlYear :selected').text();
                                    var httpRequest = $http.get('../WebService/WebService.asmx/getReport', { params: { year: obj.year } }).then(function (d) {
                                        // console.log(d.data);
                                        $scope.report = d.data;
                                    }, function (error) {
                                        alert('failed');
                                    });
                                }
                            });

var saltOrderEmail = angular
                            .module("saltOrderEmail", ['angularUtils.directives.dirPagination'])
                            .controller("saltOrderEmailController", function ($scope, $http) {
                                $scope.emails = [];
                                $scope.selectedContactID = "";
                                $scope.selectedEmailID = "";

                                $scope.loademails = function () {
                                    var httpRequest = $http.get('../WebService/WebService.asmx/getEmails').then(function (d) {
                                        // console.log(d.data);
                                        $scope.emails = d.data;
                                    }, function (error) {
                                        alert('failed');
                                    });
                                }

                                $scope.loademails();
                              
                                $scope.search = function (item) {
                                    if ($scope.searchText == undefined) {
                                        return true;
                                    }
                                    else
                                    {
                                        if (item.emailID.toLowerCase().indexOf($scope.searchText.toLowerCase()) != -1) {
                                            return true;
                                        }
                                    }
                                    return false;
                                }

                                $scope.loadtextbox = function (emailID, ContactID) {
                                    //  alert(ContactID + "," + emailID);
                                    $scope.selectedContactID = ContactID;
                                    $scope.selectedEmailID = emailID;
                                    if ($scope.lastSelected) {
                                        $scope.lastSelected.selected = '';
                                    }
                                    this.selected = 'selected';
                                    $scope.lastSelected = this;
                                    $('#btnDelete').css("display", "block");
                                }

                                $scope.Clear = function () {
                                    $scope.selectedContactID = '';
                                    $scope.selectedEmailID = '';
                                    $scope.lastSelected.selected = '';
                                    $('#btnDelete').css("display", "none");
                                }

                                $scope.SaveEmail = function () {
                                    if ($scope.selectedEmailID == '') {
                                        alert("Please enter email ID");
                                        return false;
                                    }
                                    if ($scope.selectedEmailID == undefined) {
                                        alert("Invalid email ID. Please enter a valid email ID");
                                        return false;
                                    }
                                    //Saving Logic
                                    var obj = {};
                                    obj.email = $scope.selectedEmailID;
                                    obj.contactid = "0";
                                    if ($scope.selectedContactID == '' || $scope.selectedContactID == undefined) {
                                        obj.contactid = "0";
                                    }
                                    else {
                                        obj.contactid = $scope.selectedContactID;
                                    }
                                    //  alert(obj.contactid + "," + obj.email);
                                    $http.post('../WebService/WebService.asmx/SaveEmail', obj).then(function (d) {
                                        $scope.loademails();
                                        $("#lblMsg").html('Email ID Saved Successfully');
                                        runEffect1();
                                        $scope.Clear();
                                    }, function (error) {
                                        alert('failed');
                                    });
                                }

                                $scope.Delete = function () {
                                    var objid = {};
                                    objid.contactid = $scope.selectedContactID;
                                    $http.post('../WebService/WebService.asmx/DeleteEmails', objid).then(function (d) {
                                        $("#lblMsg").html('Email ID Deleted Successfully');
                                        runEffect1();
                                        $scope.Clear();
                                        $scope.loademails();
                                    }, function (error) {
                                        alert('failed');
                                    });
                                }
                            });


