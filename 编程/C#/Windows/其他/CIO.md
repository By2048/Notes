```csharp

using System.IO;

DriveInfo[] drivers = DriveInfo.GetDrives();//获取驱动器集合

foreach (DriveInfo driver in drivers)
{
    if (driver.IsReady)
    {
        MessageBox.Show(driver.VolumeLabel);//驱动器卷标

        MessageBox.Show(driver.DriveType.ToString());//驱动器类型

        //DriveType.Fixed:"本地磁盘";

    }
    
}
```
