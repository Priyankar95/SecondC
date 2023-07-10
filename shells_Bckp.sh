rm file25.txt
read -p "Total Number Of Lines:" NLines
read -p "Total Lines:"  Lines
read -p "Enter Value For Col 1:"  Col1
read -p "Enter Value For Col 6(yymmdd):"  Col6
read -a arr
read -a arr1
read -a arr2
read -a arr3
read -p "Count of arr1:" Countarr1
read -p "Count of arr2:" Countarr2
read -p "Enter Column 14(3-Digit):" Column14
Col18_2000=(00353)
Col18_2010=(00180)
Col18_2020=(00062)
Col18_2030=(00110)
for ((i=1;i<=${Countarr1};i++))
do
        arr11=("${arr11[@]}" "${arr1[@]}")
	arrCol18_2010=("${arrCol18_2010[@]}" "${Col18_2010[@]}")
done
for ((i=1;i<=${Countarr2};i++))
do
        arr22=("${arr22[@]}" "${arr2[@]}")
	arrCol18_2020=("${arrCol18_2020[@]}" "${Col18_2020[@]}")
done
New=("${arr[@]}" "${arr11[@]}" "${arr22[@]}" "${arr3[@]}")
Col18=("${Col18_2000[@]}" "${arrCol18_2010[@]}" "${arrCol18_2020[@]}" "${Col18_2030[@]}")
echo ${New[@]}
echo ${Col18[@]}
read -p "Enter Date(yyyy-mm-dd):"  Date
read -p "Enter Time(hh:mm:ss):" Time
for ((j=0;j<${NLines};j++))
do
    Col_1R=`expr $Col1 + $j`
for ((i=0;i<${Lines};i++))
do
	if ((i<10))
	then
	echo ${Col_1R}"|000000000"${i}"|0000007446|GB|0000001007|"${Col6}"000"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007" >> file25.txt
        else
        echo ${Col_1R}"|00000000"${i}"|0000007446|GB|0000001007|"${Col6}"00"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007" >> file25.txt
        fi
done
echo $Col_1R
done
