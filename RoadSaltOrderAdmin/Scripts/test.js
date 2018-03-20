/// <reference path="angular.min.js" />


var app = angular
    .module('myApp', ["saltOrderReport", "saltOrderEmail"]);

var saltorderrepApp = angular
    .module('saltOrderReport', [])
    .controller('ReportController', function ($scope) {
        $scope.test=[];
    });

var saltOrderEmail = angular
    .module('saltOrderEmail', [])
    .controller('saltOrderReportController', ['$scope', '$filter', '$http', function ($scope, $filter, $http) {
    $scope.currentPage = 0;
    $scope.pageSize = 10;
    $scope.emails = [];
    $scope.selectedContactID = "";
    $scope.selectedEmailID = "";
    $scope.q = '';

    $scope.getData = function () {
        return $filter('filter')($scope.emails, $scope.q)
    }

    $scope.numberOfPages = function () {
        return Math.ceil($scope.getData().length / $scope.pageSize);
    }

    $scope.loademails = function () {
        var httpRequest = $http.get('../WebService/WebService.asmx/getEmails').then(function (d) {
            // console.log(d.data);
            $scope.emails = d.data;
        }, function (error) {
            alert('failed');
        });
    }

    $scope.loademails();

    $scope.$watch('q', function (newValue, oldValue) {
        if (oldValue != newValue) {
            $scope.currentPage = 0;
        }
    }, true);

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

}])
    .filter('startFrom', function () {
    return function (input, start) {
        start = +start;
        return input.slice(start);
    }
});
