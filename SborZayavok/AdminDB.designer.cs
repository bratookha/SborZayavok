﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SborZayavok
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="test1")]
	public partial class AdminDBDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Определения метода расширяемости
    partial void OnCreated();
    partial void Insertspisokzayavok11(spisokzayavok11 instance);
    partial void Updatespisokzayavok11(spisokzayavok11 instance);
    partial void Deletespisokzayavok11(spisokzayavok11 instance);
    #endregion
		
		public AdminDBDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["test1ConnectionString1"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public AdminDBDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AdminDBDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AdminDBDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AdminDBDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<BazaMasterov> BazaMasterov
		{
			get
			{
				return this.GetTable<BazaMasterov>();
			}
		}
		
		public System.Data.Linq.Table<spisokzayavok11> spisokzayavok11
		{
			get
			{
				return this.GetTable<spisokzayavok11>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.BazaMasterov")]
	public partial class BazaMasterov
	{
		
		private string _master;
		
		private string _rabota;
		
		public BazaMasterov()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_master", DbType="VarChar(50)")]
		public string master
		{
			get
			{
				return this._master;
			}
			set
			{
				if ((this._master != value))
				{
					this._master = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_rabota", DbType="VarChar(MAX)")]
		public string rabota
		{
			get
			{
				return this._rabota;
			}
			set
			{
				if ((this._rabota != value))
				{
					this._rabota = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.spisokzayavok1")]
	public partial class spisokzayavok11 : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _НоваяЗаявка;
		
		private int _НомерЗаявки;
		
		private System.DateTime _ДатаЗаявки;
		
		private string _ФИО;
		
		private string _ТабельныйНомер;
		
		private string _НомерТелефона;
		
		private string _ТипЗаявки;
		
		private string _ОписаниеЗаявки;
		
		private string _СтатусЗаявки;
		
		private string _ОписаниеСтатуса;
		
		private System.Nullable<int> _Мастер;
		
    #region Определения метода расширяемости
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnНоваяЗаявкаChanging(string value);
    partial void OnНоваяЗаявкаChanged();
    partial void OnНомерЗаявкиChanging(int value);
    partial void OnНомерЗаявкиChanged();
    partial void OnДатаЗаявкиChanging(System.DateTime value);
    partial void OnДатаЗаявкиChanged();
    partial void OnФИОChanging(string value);
    partial void OnФИОChanged();
    partial void OnТабельныйНомерChanging(string value);
    partial void OnТабельныйНомерChanged();
    partial void OnНомерТелефонаChanging(string value);
    partial void OnНомерТелефонаChanged();
    partial void OnТипЗаявкиChanging(string value);
    partial void OnТипЗаявкиChanged();
    partial void OnОписаниеЗаявкиChanging(string value);
    partial void OnОписаниеЗаявкиChanged();
    partial void OnСтатусЗаявкиChanging(string value);
    partial void OnСтатусЗаявкиChanged();
    partial void OnОписаниеСтатусаChanging(string value);
    partial void OnОписаниеСтатусаChanged();
    partial void OnМастерChanging(System.Nullable<int> value);
    partial void OnМастерChanged();
    #endregion
		
		public spisokzayavok11()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_НоваяЗаявка", DbType="VarChar(50)")]
		public string НоваяЗаявка
		{
			get
			{
				return this._НоваяЗаявка;
			}
			set
			{
				if ((this._НоваяЗаявка != value))
				{
					this.OnНоваяЗаявкаChanging(value);
					this.SendPropertyChanging();
					this._НоваяЗаявка = value;
					this.SendPropertyChanged("НоваяЗаявка");
					this.OnНоваяЗаявкаChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_НомерЗаявки", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int НомерЗаявки
		{
			get
			{
				return this._НомерЗаявки;
			}
			set
			{
				if ((this._НомерЗаявки != value))
				{
					this.OnНомерЗаявкиChanging(value);
					this.SendPropertyChanging();
					this._НомерЗаявки = value;
					this.SendPropertyChanged("НомерЗаявки");
					this.OnНомерЗаявкиChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ДатаЗаявки", DbType="SmallDateTime NOT NULL", IsPrimaryKey=true)]
		public System.DateTime ДатаЗаявки
		{
			get
			{
				return this._ДатаЗаявки;
			}
			set
			{
				if ((this._ДатаЗаявки != value))
				{
					this.OnДатаЗаявкиChanging(value);
					this.SendPropertyChanging();
					this._ДатаЗаявки = value;
					this.SendPropertyChanged("ДатаЗаявки");
					this.OnДатаЗаявкиChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ФИО", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string ФИО
		{
			get
			{
				return this._ФИО;
			}
			set
			{
				if ((this._ФИО != value))
				{
					this.OnФИОChanging(value);
					this.SendPropertyChanging();
					this._ФИО = value;
					this.SendPropertyChanged("ФИО");
					this.OnФИОChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ТабельныйНомер", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string ТабельныйНомер
		{
			get
			{
				return this._ТабельныйНомер;
			}
			set
			{
				if ((this._ТабельныйНомер != value))
				{
					this.OnТабельныйНомерChanging(value);
					this.SendPropertyChanging();
					this._ТабельныйНомер = value;
					this.SendPropertyChanged("ТабельныйНомер");
					this.OnТабельныйНомерChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_НомерТелефона", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string НомерТелефона
		{
			get
			{
				return this._НомерТелефона;
			}
			set
			{
				if ((this._НомерТелефона != value))
				{
					this.OnНомерТелефонаChanging(value);
					this.SendPropertyChanging();
					this._НомерТелефона = value;
					this.SendPropertyChanged("НомерТелефона");
					this.OnНомерТелефонаChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ТипЗаявки", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string ТипЗаявки
		{
			get
			{
				return this._ТипЗаявки;
			}
			set
			{
				if ((this._ТипЗаявки != value))
				{
					this.OnТипЗаявкиChanging(value);
					this.SendPropertyChanging();
					this._ТипЗаявки = value;
					this.SendPropertyChanged("ТипЗаявки");
					this.OnТипЗаявкиChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ОписаниеЗаявки", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string ОписаниеЗаявки
		{
			get
			{
				return this._ОписаниеЗаявки;
			}
			set
			{
				if ((this._ОписаниеЗаявки != value))
				{
					this.OnОписаниеЗаявкиChanging(value);
					this.SendPropertyChanging();
					this._ОписаниеЗаявки = value;
					this.SendPropertyChanged("ОписаниеЗаявки");
					this.OnОписаниеЗаявкиChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_СтатусЗаявки", DbType="VarChar(50)")]
		public string СтатусЗаявки
		{
			get
			{
				return this._СтатусЗаявки;
			}
			set
			{
				if ((this._СтатусЗаявки != value))
				{
					this.OnСтатусЗаявкиChanging(value);
					this.SendPropertyChanging();
					this._СтатусЗаявки = value;
					this.SendPropertyChanged("СтатусЗаявки");
					this.OnСтатусЗаявкиChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ОписаниеСтатуса", DbType="VarChar(50)")]
		public string ОписаниеСтатуса
		{
			get
			{
				return this._ОписаниеСтатуса;
			}
			set
			{
				if ((this._ОписаниеСтатуса != value))
				{
					this.OnОписаниеСтатусаChanging(value);
					this.SendPropertyChanging();
					this._ОписаниеСтатуса = value;
					this.SendPropertyChanged("ОписаниеСтатуса");
					this.OnОписаниеСтатусаChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Мастер", DbType="Int")]
		public System.Nullable<int> Мастер
		{
			get
			{
				return this._Мастер;
			}
			set
			{
				if ((this._Мастер != value))
				{
					this.OnМастерChanging(value);
					this.SendPropertyChanging();
					this._Мастер = value;
					this.SendPropertyChanged("Мастер");
					this.OnМастерChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
