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

namespace IBMIndex
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            tblStatus.Visibility = Visibility.Collapsed;    
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string weightValue = tbWeight.Text;
            string heightValue = tbHeight.Text;
            try
            {
                if (double.TryParse(weightValue, out double parseWeight)  &&
                    double.TryParse(heightValue, out double parseHeight)) {
                    parseHeight = parseHeight / 100;

                    double result = parseWeight / (parseHeight * parseHeight);

                    if (result < 18.5)
                    {
                        // MessageBox.Show($"Chỉ số BMI của bạn là {result:F2}. Bạn có thể bị thiếu cân.", "Thông báo");
                        this.tbResultBMI.Text = $"{result:F2}";  
                        tblStatus.Background = new SolidColorBrush(Colors.Blue);
                        tblStatus.Text = "UNDERWEIGHT";
                        tblStatus.Visibility = Visibility.Visible;

                    }
                    else if (result >= 18.5 && result < 24.9)
                    {
                        this.tbResultBMI.Text = $"{result:F2}";
                        tblStatus.Background = new SolidColorBrush(Colors.Green);
                        tblStatus.Text = "NORMAL";
                        tblStatus.Visibility = Visibility.Visible;
                    }
                    else if (result >= 25 && result < 29.9)
                    {
                        this.tbResultBMI.Text = $"{result:F2}";
                        tblStatus.Background = new SolidColorBrush(Colors.Pink);
                        tblStatus.Text = "OVERWEIGHT";
                        tblStatus.Visibility = Visibility.Visible;
                    }
                    else if (result >= 30 && result < 34.9)
                    {

                        this.tbResultBMI.Text = $"{result:F2}";
                        tblStatus.Background = new SolidColorBrush(Colors.Orange);
                        tblStatus.Text = "OBESE";
                        tblStatus.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        this.tbResultBMI.Text = $"{result:F2}";  
                        tblStatus.Background = new SolidColorBrush(Colors.Red);
                        tblStatus.Text = "EXTREMXELY OBBSE";
                        tblStatus.Visibility = Visibility.Visible;
                    }

                }


            }
            catch (FormatException)
            {
                Console.WriteLine("Invalid integer format");
            }
            catch (OverflowException)
            {
                Console.WriteLine("Overflow: The number is too large for an int");
            }

        }

        private void ClearAll() { 
            tbHeight.Text = string.Empty;   
            tblStatus.Text= string.Empty;
            tblStatus.Visibility= Visibility.Collapsed;
            tbWeight.Text = string.Empty;   
            tbResultBMI.Text = string.Empty;    
        
        }

        private void btnClear_Click(object sender, RoutedEventArgs e)
        {
            ClearAll();
        }

        private void tbWeight_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
