namespace RoadSaltOrderAdmin.WebService
{
    internal class report
    {
        public string emailID { get;  set;}
        public string orderID { get; set; }
        public string agencyPOC { get; set; }
        public string agencyEmail { get; set; }
        public string agencyDirectPhone { get; set; }
        public string agencyAltPhone { get; set; }
        public string agencyLocationType { get; set; }
        public string contractName { get; set; }
        public string contractEmail { get; set; }
        public string contractDirectPhone { get; set; }
        public string orderDateTime { get; set; }
        public string municipalAgencyName { get; set; }
        public string streetAddress { get;  set;}
        public string city { get;  set;}
        public string zip { get;  set;}
        public string unloadingMethod { get;  set;}
        public string untreatedSaltQty { get;  set;}
        public string untreatedSaltQtyType { get;  set;}
        public string treatedSaltQty { get;  set;}
        public string treatedSaltQtyType { get; set; }

    }
}