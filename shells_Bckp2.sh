rm file25.txt
read -p "Total Number Of Lines:" NLines
read -p "Total Lines:"  Lines
read -p "Enter Value For Col 1:"  Col1
read -p "Enter Value For Col 6(yymmdd):"  Col6
read -a arr
read -a arr1
read -a arr2
read -a arr3
read -a arr4
read -p "Count of arr2:" Countarr1
read -p "Count of arr3:" Countarr2
read -p "Enter Column 14(3-Digit):" Column14
Col18_2000=(00353)
Col18_2010=(00180)
Col18_2020=(00062)
Col18_2030=(00110)
Col18_2040=(00213)
for ((i=1;i<=${Countarr1};i++))
do
        arr22=("${arr22[@]}" "${arr2[@]}")
	arrCol18_2020=("${arrCol18_2020[@]}" "${Col18_2020[@]}")
done
for ((i=1;i<=${Countarr2};i++))
do
        arr33=("${arr33[@]}" "${arr3[@]}")
	arrCol18_2030=("${arrCol18_2030[@]}" "${Col18_2030[@]}")
done
New=("${arr[@]}" "${arr1[@]}" "${arr22[@]}" "${arr33[@]}" "${arr4[@]}")
Col18=("${Col18_2000[@]}" "${Col18_2010[@]}" "${arrCol18_2020[@]}" "${arrCol18_2030[@]}" "${Col18_2040[@]}")
echo ${New[@]}
echo ${Col18[@]}
read -p "Enter Date(yyyy-mm-dd):"  Date
read -p "Enter Time(hh:mm:ss):" Time
for ((j=0;j<${NLines};j++))
do
    Col_1R=`expr $Col1 + $j`
for ((i=0;i<${Lines};i++))
do
	if ((${New[i]}==2040))
	then
	echo ${Col_1R}"|000000000"${i}"|0000007446|GB|0000001007|"${Col6}"000"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0834385020|GB||GALPHARM INTERNATIONAL        |MDM       |0210927            |02|00|ACCOUNTS DEPARTMENT           |STAGGERS LANE                 |BRAUNTON EX33 2DL             |GB|000000000 |||||" >> file25.txt
	else
	if ((i<10)) 
	then
	echo ${Col_1R}"|000000000"${i}"|0000007446|GB|0000001007|"${Col6}"000"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007" >> file25.txt
        else
        echo ${Col_1R}"|00000000"${i}"|0000007446|GB|0000001007|"${Col6}"00"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007" >> file25.txt
        fi
	fi
done
echo $Col_1R
done
