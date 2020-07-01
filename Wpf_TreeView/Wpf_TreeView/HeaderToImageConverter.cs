using System;
using System.Globalization;
using System.IO;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media.Imaging;

namespace Wpf_TreeView
{
    /// <summary>
    /// Converts a full path to a specific imag type of a drive, folder or file
    /// </summary>
    [ValueConversion(typeof(string),typeof(BitmapImage))]
    public class HeaderToImageConverter : IValueConverter
    {
        public static HeaderToImageConverter Instance = new HeaderToImageConverter();

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            // Get the full Path
            var path = (string)value;

            //If the path is null,ignore
            if (path == null)
                return null;


            // By default, we presume an image
            var image = "Images/file.png";

            var name = MainWindow.GetFileFolderName(path);

            //If the name is blank, we presum it's a drive as we cannot have a blank file or folder name

            if(string.IsNullOrEmpty(name))
                image = "Images/drive.png";
             
            else if (new FileInfo(path).Attributes.HasFlag(FileAttributes.Directory))
            {
                image = "Images/folder-closed.png";
            }

            return new BitmapImage(new Uri($"pack://application:,,,/{image}"));
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
