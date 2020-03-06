//============================================================================
// Name        : ThreeDoorProblem.cpp
// Author      : LinQingchi
// Version     : 1.0.0
//============================================================================


/*

三门问题（Monty Hall problem）亦称为蒙提霍尔问题、蒙特霍问题或蒙提霍尔悖论，大致
出自美国的电视游戏节目Let's Make a Deal。问题名字来自该节目的主持人蒙提·霍尔
（Monty Hall）。参赛者会看见三扇关闭了的门，其中一扇的后面有一辆汽车，选中后面有车
的那扇门可赢得该汽车，另外两扇门后面则各藏有一只山羊。当参赛者选定了一扇门，但未去
开启它的时候，节目主持人开启剩下两扇门的其中一扇，露出其中一只山羊。主持人其后会
问参赛者要不要换另一扇仍然关上的门。问题是：换另一扇门会否增加参赛者赢得汽车的机率
？如果严格按照上述的条件，即主持人清楚地知道，哪扇门后是羊，那么答案是会。不换门的话
，赢得汽车的几率是1/3。换门的话，赢得汽车的几率是2/3。

*/

#include <iostream>
#include <vector>
#include <time.h>
using namespace std;

//不换门的胜率统计函数
int stay(int total_num)
{
	int stay_count = 0;
	for (int i = 1; i <= total_num; i++)
	{
		vector<int> *door = new vector<int>(3, 0);
		//重设三扇门
		int sele_num = rand() % 3;
		(*door)[sele_num] = 2;
		//放奖品进第sele_num扇门（用值+2作标记）
		int choo_num = rand() % 3;
		(*door)[choo_num] = (*door)[choo_num] + 5;
		//游戏玩家选择第choo_num扇门（用值+5标记）
		int host_num = rand() % 3;
		while ((*door)[host_num] != 0)
		{
			host_num = rand() % 3;
		}
		vector<int>::iterator it = (*door).begin() + host_num;
		(*door).erase(it);
		//主持人选择第host_num扇门，并打开（即删除第host_num个元素）
		if ((*door)[0] > 4)
		{
			choo_num = 0;
		}
		else if ((*door)[1] > 4)
		{
			choo_num = 1;
		}
		//调整门的编号（将choo_num再定位到值>=5的那个元素）
		if ((*door)[choo_num] == 7)
		{
			stay_count++;
		}
		//计算结果；计算不换门中奖的次数（第choo_num扇门标记值为2+5=7）
		delete door;
	}
	return stay_count;
}

//换门的胜率统计函数
int swit(int total_num)
{
	int swit_count = 0;
	for (int i = 1; i <= total_num; i++)
	{
		vector<int> *door = new vector<int>(3, 0);
		//重设三扇门
		int sele_num = rand() % 3;
		(*door)[sele_num] = 2;
		//放奖品进第sele_num扇门（用值+2作标记）
		int choo_num = rand() % 3;
		(*door)[choo_num] = (*door)[choo_num] + 5;
		//游戏玩家选择第choo_num扇门（用值+5标记）
		int host_num = rand() % 3;
		while ((*door)[host_num] != 0)
		{
			host_num = rand() % 3;
		}
		vector<int>::iterator it = (*door).begin() + host_num;
		(*door).erase(it);
		//主持人选择第host_num扇门，并打开（即删除第host_num个元素）
		if ((*door)[0] > 4)
		{
			choo_num = 0;
		}
		else if ((*door)[1] > 4)
		{
			choo_num = 1;
		}
		//调整门的编号（将choo_num再定位到值>=5的那个元素）
		if ((*door)[choo_num] < 7)
		{
			swit_count++;
		}
		//计算结果；计算换门中奖的次数（第choo_num扇门标记值为2+5=7）
		delete door;
	}
	return swit_count;
}

//主程序
int main()
{
	int n = 0;
	cout << "输入实验次数：" << endl;
	cin >> n;
	srand((unsigned)time(NULL));
	int stay_num = stay(n);
	int swit_num = swit(n);
	double rate_stay = (double)stay_num / (double)n, rate_swit = (double)swit_num / (double)n;
	cout << "不换门的获奖次数为：" << stay_num << "次，频率为：" << rate_stay << endl;
	cout << "换门的获奖次数为：" << swit_num << "次，频率为：" << rate_swit << endl;
	system("pause");
	return 0;
}
