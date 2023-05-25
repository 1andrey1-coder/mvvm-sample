using System;
using System.Collections.Generic;

namespace mvvm_sample;

public partial class TblProduct
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public string? Category { get; set; }

    public string? Manufacturer { get; set; }

    public decimal? PricePerPiece { get; set; }

    public string? Discount { get; set; }
}
