namespace RoadSaltOrderAdmin.WebService
{
    internal class report
    {
        public string orderID { get; set; }
        public string orderDateTime { get; set; }
        public string agencyEmail { get; set; }
        public string agencyPOC { get; set; }
        public string agencyDirectPhone { get; set; }
        public string agencyAltContact { get; set; }
        public string agencyAltEmail { get; set; }
        public string agencyAltPhone { get; set; }
        public string District { get; set; }
        public string agencyLocationType { get; set; }
        public string municipalAgencyName { get; set; }
        public string streetAddress { get;  set;}
        public string city { get;  set;}
        public string zip { get;  set;}
        public string unloadingMethod { get;  set;}
        public string untreatedSaltQty { get;  set;}
        public string untreatedSaltQtyType { get;  set;}
        public string treatedSaltQty { get;  set;}
        public string treatedSaltQtyType { get; set; }
        public string earlyFilluntreatedSaltQty { get; set; }
        public string earlyFilluntreatedSaltQtyType { get; set; }
        public string earlyFilltreatedSaltQty { get; set; }
        public string earlyFilltreatedSaltQtyType { get; set; }
    }
}