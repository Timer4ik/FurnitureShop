﻿#pragma checksum "..\..\..\Pages\ProductsPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "119F1FB9F1133C9A5952E85AF40414D87AD264ACACFB48BBCD9442D3E50BCDB8"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using FurnitureApplication.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace FurnitureApplication.Pages {
    
    
    /// <summary>
    /// ProductsPage
    /// </summary>
    public partial class ProductsPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 19 "..\..\..\Pages\ProductsPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SearchTb;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\Pages\ProductsPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox SortCmb;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\Pages\ProductsPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox FilterProductTypeCmb;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\Pages\ProductsPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox ProductListBox;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/FurnitureApplication;component/pages/productspage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\ProductsPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 9 "..\..\..\Pages\ProductsPage.xaml"
            ((FurnitureApplication.Pages.ProductsPage)(target)).IsVisibleChanged += new System.Windows.DependencyPropertyChangedEventHandler(this.Page_IsVisibleChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.SearchTb = ((System.Windows.Controls.TextBox)(target));
            
            #line 19 "..\..\..\Pages\ProductsPage.xaml"
            this.SearchTb.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.SearchTb_TextChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.SortCmb = ((System.Windows.Controls.ComboBox)(target));
            
            #line 24 "..\..\..\Pages\ProductsPage.xaml"
            this.SortCmb.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.SortCmb_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.FilterProductTypeCmb = ((System.Windows.Controls.ComboBox)(target));
            
            #line 33 "..\..\..\Pages\ProductsPage.xaml"
            this.FilterProductTypeCmb.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.FilterProductTypeCmb_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.ProductListBox = ((System.Windows.Controls.ListBox)(target));
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 6:
            
            #line 45 "..\..\..\Pages\ProductsPage.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ProductInfoButton_Click);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}
