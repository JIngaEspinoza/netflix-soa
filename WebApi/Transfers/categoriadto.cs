using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApi.Transfers
{
	public class categoriadto
	{
        public int id { get; set; }
        public string nombre { get; set; }
        public Nullable<int> categoria_id { get; set; }
        public Nullable<int> nivel { get; set; }
        public Nullable<int> orden { get; set; }
    }
}