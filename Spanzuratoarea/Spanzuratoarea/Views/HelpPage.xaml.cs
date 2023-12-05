using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Spanzuratoarea.Views
{
    /// <summary>
    /// Interaction logic for HelpPage.xaml
    /// </summary>
    public partial class HelpPage : Window
    {
        public HelpPage()
        {
            InitializeComponent();
            Help();
        }

        public void Help()
        {
            TextBlock textBlock = new TextBlock();

            textBlock.Text = "Anghelus Crina-Cosmina \n 10LF301 \n\n";
            textBlock.Foreground = Brushes.White;
            textBlock.Margin = new Thickness(50, 200, 50, 50);
            textBlock.FontSize = 20;
            textBlock.FontFamily = new FontFamily("Century Gothic");
            textBlock.TextAlignment = TextAlignment.Center;

            Hyperlink hyperlink = new Hyperlink();
            Run run = new Run();
            run.Text = "Mail institutional";
            hyperlink.NavigateUri = new Uri("http://elearning.unitbv.ro/login/index.php");
            hyperlink.RequestNavigate += new RequestNavigateEventHandler(method);
            hyperlink.Inlines.Add(run);
            textBlock.Inlines.Add(hyperlink);

            Grid.Children.Add(textBlock);
        }

        private void method(object sender, RequestNavigateEventArgs e)
        {
            System.Diagnostics.Process.Start("http://elearning.unitbv.ro/login/index.php");
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
