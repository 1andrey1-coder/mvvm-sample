using System;

namespace mvvm_sample.ClientWork.Model
{
    public class Client
    {
        public string Name { get; set; } = ClientDB.GetInstance().ToString();
        public string Category { get; set; } = ClientDB.GetInstance().ToString();
        public string Manufacturer { get; set; } = ClientDB.GetInstance().ToString();
        public string Priceperpiece { get; set; } = ClientDB.GetInstance().ToString();
        public string Discount { get; set; } = ClientDB.GetInstance().ToString();

    }
}
