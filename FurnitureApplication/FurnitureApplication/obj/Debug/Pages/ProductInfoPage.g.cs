#pragma checksum "..\..\..\Pages\ProductInfoPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "13C9E765567AEE2722715DCF2FC5FB682C679299DE741F9E5DF73DFB15D3420F"
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
    /// ProductInfoPage
    /// </summary>
    public partial class ProductInfoPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 29 "..\..\..\Pages\ProductInfoPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ProductIdTb;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\Pages\ProductInfoPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ProductTypeCmb;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\Pages\ProductInfoPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ProductNameTb;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\Pages\ProductInfoPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox MakePriceTb;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\Pages\ProductInfoPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SellPriceTb;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\Pages\ProductInfoPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button LoadPhotoButton;
        
        #line default
        #line hidden
        
        
        #line 46 "..\..\..\Pages\ProductInfoPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image PhotoImage;
        
        #line default
        #line hidden
        
        
        #line 48 "..\..\..\Pages\ProductInfoPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button SaveBtn;
        
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
            System.Uri resourceLocater = new System.Uri("/FurnitureApplication;component/pages/productinfopage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\ProductInfoPage.xaml"
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
            this.ProductIdTb = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.ProductTypeCmb = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 3:
            this.ProductNameTb = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.MakePriceTb = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.SellPriceTb = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.LoadPhotoButton = ((System.Windows.Controls.Button)(target));
            
            #line 43 "..\..\..\Pages\ProductInfoPage.xaml"
            this.LoadPhotoButton.Click += new System.Windows.RoutedEventHandler(this.LoadPhotoButton_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.PhotoImage = ((System.Windows.Controls.Image)(target));
            return;
            case 8:
            this.SaveBtn = ((System.Windows.Controls.Button)(target));
            
            #line 48 "..\..\..\Pages\ProductInfoPage.xaml"
            this.SaveBtn.Click += new System.Windows.RoutedEventHandler(this.SaveBtn_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

