using Spanzuratoarea.Help;
using Spanzuratoarea.Models;
using Spanzuratoarea.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace Spanzuratoarea.ViewModels
{
    public class GameTypeModel : NotifyViewModel
    {
        public ObservableCollection<Category> Categories { get; set; }

        private Serialization serializationActions = new Serialization();
        private Images images = new Images();
        private User user;

        public GameTypeModel(User user)
        {
            this.user = user;
            if (user.GameProperty.SavedGame)
            {
                CanExecuteCommand = true;
            }
            Categories = new ObservableCollection<Category>();
            Categories.Add(Category.All);
            Categories.Add(Category.Cars);
            Categories.Add(Category.Mountains);
            Categories.Add(Category.Movies);
            Categories.Add(Category.Rivers);
            Categories.Add(Category.States);
        }

        public string Name
        {
            get
            {
                return user.Name;
            }
        }

        public BitmapImage ImageSource
        {
            get
            {
                return images.Avatars[user.ImageIndex];
            }
        }

        private Category selectedCategory = Category.None;
        public Category SelectedCategory
        {
            get
            {
                return selectedCategory;
            }
            set
            {
                selectedCategory = value;
                CategorySelected(selectedCategory);
                NotifyPropertyChanged("SelectedCategory");
            }
        }

        public void CategorySelected(Category category)
        {
            CanExecuteCommandNew = true;
            user.GameProperty.CategoryProperty = category;
            user.GameProperty.LevelProperty = 0;
            user.GameProperty.MistakesProperty = 0;
            user.GameProperty.WordOnDisplay = "";
            user.GameProperty.WordToGuess = "";
        }

        public bool CanExecuteCommandNew { get; set; }
        private ICommand newGameCommand;
        public ICommand NewGameCommand
        {
            get
            {
                if (newGameCommand == null)
                {
                    newGameCommand = new RelayCommand(NewGame, param => CanExecuteCommandNew);
                }
                return newGameCommand;
            }
        }

        public void NewGame(object param)
        {
            GameWindow window = new GameWindow();
            GameModel homeVM = new GameModel(user);
            window.DataContext = homeVM;
            App.Current.MainWindow.Close();
            App.Current.MainWindow = window;
            window.Show();
        }

        public bool CanExecuteCommand { get; set; }

        private ICommand resumeGameCommand;
        public ICommand ResumeGameCommand
        {
            get
            {
                if (resumeGameCommand == null)
                {
                    resumeGameCommand = new RelayCommand(ResumeGame, param => CanExecuteCommand);
                }
                return resumeGameCommand;
            }
        }

        public void ResumeGame(object param)
        {
            GameWindow window = new GameWindow();
            GameModel homeVM = new GameModel(user, true);
            window.DataContext = homeVM;
            App.Current.MainWindow.Close();
            App.Current.MainWindow = window;
            window.Show();
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
            SignInWindow signInWindow = new SignInWindow();
            SignInViewModel signInVM = new SignInViewModel(); 
            signInWindow.DataContext = signInVM;
            App.Current.MainWindow.Close();
            App.Current.MainWindow = signInWindow;
            signInWindow.Show();
        }
    }
}
