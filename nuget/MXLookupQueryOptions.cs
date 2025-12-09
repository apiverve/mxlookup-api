using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MXLookup
{
    /// <summary>
    /// Query options for the MX Lookup API
    /// </summary>
    public class MXLookupQueryOptions
    {
        /// <summary>
        /// The domain you want to get the MX records for (e.g. yahoo.com)
        /// Example: yahoo.com
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }
    }
}
