using Spanzuratoarea.Help;
using Spanzuratoarea.Models;
using Spanzuratoarea.Views;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace Spanzuratoarea.ViewModels
{
    public class SignUpViewModel : NotifyViewModel
    {
        private Serialization serializationActions = new Serialization();
        private Users users = new Users();
        private Images images = new Images();
        private bool editMode = false;
        private string userOldName = "";

        public SignUpViewModel()
        {
            ImageSource = images.Avatars.ElementAt(0);

            try
            {
                FileStream fileUsr = new FileStream(Constants.UsersFile, FileMode.Open);
                fileUsr.Dispose();
            }
            catch (FileNotFoundException)
            {
                return;
            }

            this.users = serializationActions.DeserializeUsers(Constants.UsersFile);
        }

        public SignUpViewModel(User user, Users users)
        {
            ImageSource = images.Avatars[user.ImageIndex];
            NameTextBox = user.Name;
            editMode = true;
            userOldName = user.Name;
            this.users = users;
            CanExecuteCommandAddUser = false;
        }

        public SignUpViewModel(Users users)
        {
            ImageSource = images.Avatars.ElementAt(0);
            this.users = users;
        }

        private string nameTextBox;

        public string NameTextBox
        {
            get
            {
                return nameTextBox;
            }
            set
            {
                nameTextBox = value;
                if (editMode == false)
                {
                    CanExecuteCommandAddUser = Validators.CanExecutePlay(NameTextBox);
                }
                CanExecuteCommandSignIn = Validators.CanExecutePlay(NameTextBox);
                NotifyPropertyChanged("NameTextBox");
            }
        }

        private BitmapImage imageSource;
        public BitmapImage ImageSource
        {
            get
            {
                return imageSource;
            }
            set
            {
                imageSource = value;
                if (editMode)
                {
                    CanExecuteCommandSignIn = Validators.CanExecutePlay(NameTextBox);
                }
                CanExecuteCommandNext = Validators.CanExecuteNext(imageSource, images);
                CanExecuteCommandPrev = Validators.CanExecutePrev(imageSource, images);
                NotifyPropertyChanged("ImageSource");
            }
        }

        public string PlayLabel
        {
            get
            {
                if (!editMode)
                {
                    return "PLAY";
                }
                else
                {
                    return "";
                }
            }
        }

        public bool CanExecuteCommandAddUser { get; set; } = false;
        public bool CanExecuteCommandNext { get; set; } = false;
        public bool CanExecuteCommandPrev { get; set; } = false;
        public bool CanExecuteCommandSignIn { get; set; } = false;

        private ICommand nextCommand;
        public ICommand NextCommand
        {
            get
            {
                if (nextCommand == null)
                {
                    nextCommand = new RelayCommand(NextMethod, param => CanExecuteCommandNext);
                }
                return nextCommand;
            }
        }

        public void NextMethod(object param)
        {
            int index = images.Avatars.IndexOf(ImageSource);
            if (index < images.Avatars.Count - 1)
            {
                ImageSource = images.Avatars[++index];
            }
        }

        private ICommand prevCommand;
        public ICommand PrevCommand
        {
            get
            {
                if (prevCommand == null)
                {
                    prevCommand = new RelayCommand(PrevMethod, param => CanExecuteCommandPrev);
                }
                return prevCommand;
            }
        }

        public void PrevMethod(object param)
        {
            int index = images.Avatars.IndexOf(ImageSource);
            if (index > 0)
            {
                ImageSource = images.Avatars[--index];
            }
        }


        private ICommand signInCommand;
        public ICommand SignInCommand
        {
            get
            {
                if (signInCommand == null)
                {
                    signInCommand = new RelayCommand(SignIn, param => CanExecuteCommandSignIn);
                }
                return signInCommand;
            }
        }

        public void SignIn(object param)
        {
            if ((NameTextBox != userOldName) && (!Validators.CanAddUser(NameTextBox, users)))
            {
                MessageBox.Show("This nickname is taken.");
                return;
            }
            if (editMode == true)
            {
                foreach (var user in users.List)
                {
                    if (user.Name == userOldName)
                    {
                        user.Name = NameTextBox;
                        user.ImageIndex = images.Avatars.IndexOf(ImageSource);
                        break;
                    }
                }
            }
            else
            {
                User user = new User(NameTextBox, images.Avatars.IndexOf(ImageSource));
                user.GameProperty = new Game();
                users.List.Add(user);
            }
            SignInWindow window = new SignInWindow();
            SignInViewModel signInVM = new SignInViewModel(users);
            window.DataContext = signInVM;
            App.Current.MainWindow.Close();
            App.Current.MainWindow = window;
            window.Show();
        }

        private ICommand playCommand;
        public ICommand PlayCommand
        {
            get
            {
                if (playCommand == null)
                {
                    playCommand = new RelayCommand(AddUserAndPlay, param => CanExecuteCommandAddUser);
                }
                return playCommand;
            }
        }

        public void AddUserAndPlay(object param)
        {
            if (!Validators.CanAddUser(NameTextBox, users))
            {
                MessageBox.Show("This nickname is taken.");
                return;
            }
            int imageIndex = images.Avatars.IndexOf(ImageSource);
            User user = new User(NameTextBox, imageIndex);
            user.GameProperty = new Game();
            users.List.Add(new User(NameTextBox, imageIndex));
            serializationActions.SerializeUsers(Constants.UsersFile, users);
            //CategoryWindow categoryWindow = new CategoryWindow();
            //CategoryViewModel categoryVM = new CategoryViewModel(user, true);
            //categoryWindow.DataContext = categoryVM;
            //App.Current.MainWindow.Close();
            //App.Current.MainWindow = categoryWindow;
            //categoryWindow.Show();
        }

        private ICommand backCommand;
        public ICommand BackCommand
        {
            get
            {
                if (backCommand == null)
                {
                    backCommand = new RelayCommand(Back);
                }
                return backCommand;
            }
        }

        public void Back(object param)
        {
            MainWindow startWindow = new MainWindow();
            App.Current.MainWindow.Close();
            App.Current.MainWindow = startWindow;
            startWindow.Show();
        }
    }
}
