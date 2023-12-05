using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace Spanzuratoarea.Models
{
    public class Images
    {
        public ObservableCollection<BitmapImage> Avatars { get; set; }
        public ObservableCollection<BitmapImage> Hangs { get; set; }
        public ObservableCollection<BitmapImage> Lifes { get; set; }
        public Images()
        {
            Avatars = new ObservableCollection<BitmapImage>();
            Avatars.Add(new BitmapImage(new Uri(@"/Images/Avatars/olaf.png", UriKind.Relative)));
            Avatars.Add(new BitmapImage(new Uri(@"/Images/Avatars/cinderella.png", UriKind.Relative)));
            Avatars.Add(new BitmapImage(new Uri(@"/Images/Avatars/bell.png", UriKind.Relative)));
            Avatars.Add(new BitmapImage(new Uri(@"/Images/Avatars/lion.png", UriKind.Relative)));
            Avatars.Add(new BitmapImage(new Uri(@"/Images/Avatars/tiana.png", UriKind.Relative)));
            Avatars.Add(new BitmapImage(new Uri(@"/Images/Avatars/winnie.png", UriKind.Relative)));
            Avatars.Add(new BitmapImage(new Uri(@"/Images/Avatars/donkey.jpg", UriKind.Relative)));
            Avatars.Add(new BitmapImage(new Uri(@"/Images/Avatars/pinocchio.jpg", UriKind.Relative)));
            Avatars.Add(new BitmapImage(new Uri(@"/Images/Avatars/elsa.png", UriKind.Relative)));

            Hangs = new ObservableCollection<BitmapImage>();
            Hangs.Add(new BitmapImage(new Uri(@"/Images/Hangs/Hang_1.png", UriKind.Relative)));
            Hangs.Add(new BitmapImage(new Uri(@"/Images/Hangs/Hang_2.png", UriKind.Relative)));
            Hangs.Add(new BitmapImage(new Uri(@"/Images/Hangs/Hang_3.png", UriKind.Relative)));
            Hangs.Add(new BitmapImage(new Uri(@"/Images/Hangs/Hang_4.png", UriKind.Relative)));
            Hangs.Add(new BitmapImage(new Uri(@"/Images/Hangs/Hang_5.png", UriKind.Relative)));
            Hangs.Add(new BitmapImage(new Uri(@"/Images/Hangs/Hang_6.png", UriKind.Relative)));
            Hangs.Add(new BitmapImage(new Uri(@"/Images/Hangs/Hang_7.png", UriKind.Relative)));
            Hangs.Add(new BitmapImage(new Uri(@"/Images/Hangs/Hang_8.png", UriKind.Relative)));

            Lifes = new ObservableCollection<BitmapImage>();
            Lifes.Add(new BitmapImage(new Uri(@"/Images/Lifes/life1.png", UriKind.Relative)));
            Lifes.Add(new BitmapImage(new Uri(@"/Images/Lifes/life2.png", UriKind.Relative)));
        }
    }
}
