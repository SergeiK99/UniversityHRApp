//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UniversityHRApp
{
    using System;
    using System.Collections.Generic;
    
    public partial class UsersObjects
    {
        public int UsersId { get; set; }
        public int ObjectsId { get; set; }
        public bool C { get; set; }
        public bool R { get; set; }
        public bool U { get; set; }
        public bool D { get; set; }
    
        public virtual Objects Objects { get; set; }
        public virtual Users Users { get; set; }
    }
}