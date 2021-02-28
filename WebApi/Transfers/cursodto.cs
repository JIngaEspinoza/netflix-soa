using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApi.Transfers
{
	public class cursodto
	{
		public int id { get; set; }
		public string nombres { get; set; }
		public Nullable<int> creditos { get; set; }
		public Nullable<int> categoria_id { get; set; }
	}
}