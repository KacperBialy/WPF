using System;
using System.Collections.Generic;
using System.IO;
using System.Windows;
using System.Windows.Controls;

namespace Wpf_TreeView
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        #region Constructor 
        /// <summary>
        /// Default constructor
        /// </summary>
        public MainWindow()
        {
            InitializeComponent();
        }
        #endregion

        #region On loaded
        /// <summary>
        /// When the application first opens
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            // Get every logical drive on the machine

            foreach (var drive in Directory.GetLogicalDrives())
            {
                // Create a new item for it
                var item = new TreeViewItem()
                {
                    // Set the header and the full path
                    Header = drive,
                    Tag = drive,


                };

                //Add a dummy item
                item.Items.Add(null);

                //Listen out for item begin expanded
                item.Expanded += Folder_Expanded;

                FolderView.Items.Add(item);
            }
        }
        #endregion

        #region Folder Expanded
        private void Folder_Expanded(object sender, RoutedEventArgs e)
        {
            #region Initial checks
            var item = (TreeViewItem)sender;

            // If the item contains the dummy data
            if (item.Items.Count != 1 || item.Items[0] != null)
            {
                return;
            }

            // Clear dummy data
            item.Items.Clear();

            //Get full Path
            var fullPath = (string)item.Tag;

            #endregion

            #region Get Directories
            //Create blank list for directories
            var directories = new List<string>();

            //Try and get directories from the folder
            // ignoring any issues doing so
            try
            {
                var dirs = Directory.GetDirectories(fullPath);
                if (dirs.Length > 0)
                {
                    directories.AddRange(dirs);
                }
            }
            catch { }

            //For each directory
            directories.ForEach(directoryPath =>
            {
                // Create directory item

                var subItem = new TreeViewItem()
                {
                    // Set header as folder name
                    Header = GetFileFolderName(directoryPath),
                    // Add dummyitem so we can expand folder
                    Tag = directoryPath,
                };

                // Add dummy item so we can expand folder
                subItem.Items.Add(null);

                //Handle expanding
                subItem.Expanded += Folder_Expanded;

                //Add this item to the parent 
                item.Items.Add(subItem);
            });
            #endregion

            #region Get Files
            //Create blank list for files
            var files = new List<string>();

            //Try and get files from the folder
            // ignoring any issues doing so
            try
            {
                var fs = Directory.GetFiles(fullPath);
                if (fs.Length > 0)
                {
                    files.AddRange(fs);
                }
            }
            catch { }

            //For each file
            files.ForEach(filePath =>
            {
                // Create file item

                var subItem = new TreeViewItem()
                {
                    // Set header as file name
                    Header = GetFileFolderName(filePath),
                    // Add dummyitem so we can expand folder
                    Tag = filePath,
                };


                //Add this item to the parent 
                item.Items.Add(subItem);
            });

            #endregion
        }
        #endregion

        #region Get File Folder Name
        public static string GetFileFolderName(string path)
        {
            // If we have no path, return empty
            if (string.IsNullOrEmpty(path))
                return string.Empty;

            // Make all slashes back slashes
            var normalized_Path = path.Replace('/', '\\');

            //Find the last backslash in path
            var lastIndex = normalized_Path.LastIndexOf('\\');

            // If we don't find a backslash, return the path itself

            if (lastIndex <= 0)
                return path;

            // Return name after the last back slash
            return path.Substring(lastIndex + 1);
        }
        #endregion

    }
}
