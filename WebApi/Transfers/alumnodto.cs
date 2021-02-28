using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApi.Transfers
{
	public class alumnodto
	{
		public int id { get; set; }
		public string nombres { get; set; }
		public string apellidos { get; set; }
		public Nullable<int> edad { get; set; }
		public Nullable<bool> genero { get; set; }
		public Nullable<int> tipodocumento_id { get; set; }
		public string dni { get; set; }
	}
}