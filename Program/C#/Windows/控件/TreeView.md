```csharp
private void InitTreeView()
{
    treeView1.ImageList = imageList3;//设置treeview的图片列表

    treeView1.BeginUpdate();
    treeView1.Nodes.Clear();//清空节点

    //桌面节点

    string myPath = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
    TreeNode deskTop = new TreeNode("桌面");
    deskTop.ImageKey = deskTop.SelectedImageKey = "desktop.png";
    deskTop.Tag = myPath;//包含树节点的有关数据的对象

    treeView1.Nodes.Add(deskTop);

    //计算机节点

    myPath = "mycomputer";
    TreeNode pc = new TreeNode("计算机");
    pc.ImageKey = pc.SelectedImageKey = "pc.png";
    pc.Tag = myPath;
    treeView1.Nodes.Add(pc);
    //在计算机下添加驱动器的根节点

    this.listAllDrivers(pc);
    pc.Expand(); //展开计算机节点

    
    //收藏夹

    myPath = "favorites";
    TreeNode favorites = new TreeNode("收藏夹");
    favorites.ImageKey = favorites.SelectedImageKey = "favorites.png";
    favorites.Tag = myPath;
    treeView1.Nodes.Add(favorites);
    //在收藏夹节点下添加我的文档，我的图片，我的音乐，我的视频子节点

    myPath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
    TreeNode myDoc = new TreeNode("我的文档");
    myDoc.SelectedImageKey=myDoc.ImageKey = "mydoc.png";
    myDoc.Tag = myPath;
    favorites.Nodes.Add(myDoc);

    //我的音乐

    myPath = Environment.GetFolderPath(Environment.SpecialFolder.MyMusic) ;
    TreeNode myMusic = new TreeNode("我的音乐");
    myMusic.SelectedImageKey = myMusic.ImageKey = "mymusic.png";
    myMusic.Tag = myPath;
    favorites.Nodes.Add(myMusic);

    //我的图片

    myPath = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
    TreeNode myPicture = new TreeNode("我的图片");
    myPicture.SelectedImageKey = myPicture.ImageKey = "mypic.png";
    myPicture.Tag = myPath;
    favorites.Nodes.Add(myPicture);

    //我的视频

    myPath = Environment.GetFolderPath(Environment.SpecialFolder.MyVideos);
    TreeNode myVideo = new TreeNode("我的视频");
    myVideo.SelectedImageKey = myVideo.ImageKey = "myvideo.png";
    myVideo.Tag = myPath;
    favorites.Nodes.Add(myVideo);

    //回收站

    myPath = "recycle";
    TreeNode recycle = new TreeNode("回收站");
    recycle.SelectedImageKey = recycle.ImageKey = "recycle.png";
    recycle.Tag = myPath;
    treeView1.Nodes.Add(recycle);
    treeView1.EndUpdate();
}
```