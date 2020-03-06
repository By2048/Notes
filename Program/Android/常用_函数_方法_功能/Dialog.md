http://blog.csdn.net/qwm8777411/article/details/45420451

https://yq.aliyun.com/articles/50915

[TOC]

#### 基础使用 确认退出
```java
public class MainActivity extends AppCompatActivity {

    private Button testButton=null;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        testButton=(Button)this.findViewById(R.id.testButton);
        testButton.setOnClickListener(new testButtonListener());
    }
    private  class testButtonListener implements OnClickListener{
        public void onClick(View view){
            AlertDialog.Builder dialog=new AlertDialog.Builder(MainActivity.this);
            //dialog.setIcon(R.mipmap.ic_launcher);
            dialog.setTitle("Confirm exit!");
            dialog.setMessage("Are you sure to quit!");
            dialog.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    Toast.makeText(getApplicationContext(),"The program has exited!",Toast.LENGTH_LONG).show();
                    finish();
                }
            });
            dialog.setNegativeButton("No", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    Toast.makeText(getApplicationContext(),"Do not exit!",Toast.LENGTH_LONG).show();
                }
            });
            dialog.create().show();
        }
    }
}
```

#### 列表对话框
```java
public class MainActivity extends AppCompatActivity {

    private Button testButton = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        testButton = (Button) this.findViewById(R.id.testButton);
        testButton.setOnClickListener(new testButtonListener());
    }
    private class testButtonListener implements OnClickListener {
        public void onClick(View view) {
            AlertDialog.Builder dialog = new AlertDialog.Builder(MainActivity.this);
            dialog.setTitle("List");

            final String[] items={"Items_one","Items_two","Items_three"};
            dialog.setItems(items, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    Toast.makeText(getApplicationContext(), "You clicked "+items[i], Toast.LENGTH_SHORT).show();
                }
            });
            dialog.setCancelable(false);
            //setCancelable(true)时，点击ProgressDialog以外的区域的时候ProgressDialog就会关闭
            //setCancelable(false)时，点击ProgressDialog以外的区域不会关闭ProgressDialog
            dialog.create().show();
        }
    }
}
```

#### 单选对话框
```java
public class MainActivity extends AppCompatActivity {

    private Button testButton = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        testButton = (Button) this.findViewById(R.id.testButton);
        testButton.setOnClickListener(new testButtonListener());
    }
    
    private class testButtonListener implements OnClickListener {
        public void onClick(View view) {
            AlertDialog.Builder dialog = new AlertDialog.Builder(MainActivity.this);
            dialog.setTitle("单选");

            final String[] items={"Items_one","Items_two","Items_three"};
            // 1 初始时默认选项
            dialog.setSingleChoiceItems(items,1,new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    Toast.makeText(getApplicationContext(), "You clicked "+items[i], Toast.LENGTH_SHORT).show();
                }
            });
            dialog.setCancelable(true);
            dialog.create().show();
        }
    }
}
```
#### 多选对话框
```java
public class MainActivity extends AppCompatActivity {

    private Button testButton = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        testButton = (Button) this.findViewById(R.id.testButton);
        testButton.setOnClickListener(new testButtonListener());
    }

    private class testButtonListener implements OnClickListener {
        public void onClick(View view) {
            AlertDialog.Builder dialog = new AlertDialog.Builder(MainActivity.this);
            //dialog.setIcon(R.mipmap.ic_launcher);
            dialog.setTitle("多选");
            final String[] items={"Items_one","Items_two","Items_three"};
            // new boolean[]{true, false, true} 初始时默认选项
            dialog.setMultiChoiceItems(items,new boolean[]{true, false, true},new DialogInterface.OnMultiChoiceClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i, boolean b) {
                    Toast.makeText(getApplicationContext(),"You clicked "+items[i]+" "+b,Toast.LENGTH_SHORT).show();
                }
            });
            dialog.setCancelable(true);
            dialog.create().show();
        }
    }
}
```






















