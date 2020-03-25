
```java
// 默认样式
Toast.makeText(getApplicationContext(),	"默认样式",Toast.LENGTH_LONG).show();

//自定义显示位置效果:
toast = Toast.makeText(getApplicationContext(),"自定义位置Toast", Toast.LENGTH_LONG);
toast.setGravity(Gravity.CENTER, 0, 0);	toast.show();

// 带图片的Toast
toast = Toast.makeText(getApplicationContext(),"带图片的Toast", Toast.LENGTH_LONG);
toast.setGravity(Gravity.CENTER, 0, 0);
LinearLayout toastView = (LinearLayout) toast.getView();
ImageView imageCodeProject = new ImageView(getApplicationContext());
imageCodeProject.setImageResource(R.drawable.icon);
toastView.addView(imageCodeProject, 0);
toast.show();

//完全自定义Toast
LayoutInflater inflater = getLayoutInflater();
View layout = inflater.inflate(R.layout.custom, (ViewGroup) findViewById(R.id.llToast));
ImageView image = (ImageView) layout .findViewById(R.id.tvImageToast);
image.setImageResource(R.drawable.icon);
TextView title = (TextView) layout.findViewById(R.id.tvTitleToast);
title.setText("Attention");
TextView text = (TextView) layout.findViewById(R.id.tvTextToast);
text.setText("完全自定义Toast");
toast = new Toast(getApplicationContext());
toast.setGravity(Gravity.RIGHT | Gravity.TOP, 12, 40);
toast.setDuration(Toast.LENGTH_LONG);
toast.setView(layout);
toast.show();
```