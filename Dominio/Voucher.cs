using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Voucher
    {
        public long Id { get; set; }
        public string VoucherCodigo { get; set; }
        public bool Estado { get; set; }
        public long Idcliente { get; set; }
        public long Idproducto { get; set; }
        public DateTime Fecharegistro { get; set; }


    }
}

