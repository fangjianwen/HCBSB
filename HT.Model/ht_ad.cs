//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace HT.Model
{
    using System;
    using System.Collections.Generic;
    
    ///<summary>
    ///广告列表
    ///</summary>
    public partial class ht_ad
    {
    ///<summary>
    ///
    ///</summary>
        public int id { get; set; }
    ///<summary>
    ///标题
    ///</summary>
        public string title { get; set; }
    ///<summary>
    ///广告位编码
    ///</summary>
        public string code { get; set; }
    ///<summary>
    ///广告图
    ///</summary>
        public string img_url { get; set; }
    ///<summary>
    ///外链
    ///</summary>
        public string url { get; set; }
    ///<summary>
    ///排序
    ///</summary>
        public Nullable<int> sort { get; set; }
    ///<summary>
    ///广告备注
    ///</summary>
        public string remarks { get; set; }
    ///<summary>
    ///1不显示2显示
    ///</summary>
        public Nullable<int> status { get; set; }
    }
}