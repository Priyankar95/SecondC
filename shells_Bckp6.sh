arrfile1=()
arrfile2=()
ind1=0
while read line
do
         arrfile1[$ind1]="$line"
         ind1=$(($ind1+1))
done < file1
ind2=0
while read line
do
         arrfile2[$ind2]="$line"
         ind2=$(($ind2+1))
done < file2


rm file25.txt
read -p "Total Number Of Lines:" NLines
read -p "Total Lines:"  Lines
read -p "Enter Value For Col 1(Enter 10 Digit Number):"  Col1
read -p "Enter Value For Col 6(yymmdd):"  Col6
read -a arr
read -a arr1
read -a arr2
read -a arr3
read -a arr4
read -p "Count of arr2:" Countarr1
read -p "Count of arr3:" Countarr2
read -p "Enter Column 14(3-Digit):" Column14
read -p "Enter Today's date For 02000(mm/dd/yyyy):" Today_Date
read -p "Enter Future date For 02000(mm/dd/yyyy):" Future_Date
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
Clm14=0
for ((j=0;j<${NLines};j++))
do
    Column14=`expr ${Column14} + ${Clm14}`
    Clm14=`expr ${Clm14} + 1`
    Col_1R=`expr ${Col1} + ${j}`
for ((i=0;i<${Lines};i++))
do
	k=`expr ${i} + 1`
	echo ${k}
	if ((${New[i]}==2000))
	then
        echo ${Col_1R}"|000000000"${k}"|0000007446|GB|0000001007|"${Col6}"000"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007|JSERRA5        |POS REPLEN|"${arrfile1[j]}"|GB|00002|00000|GB|07446|00002|00033|16|"${Today_Date}"|||||"${Today_Date}"|"${Future_Date}"|12/31/2035|W|0|N|P|GREAT BRITAIN               GB|GB|||||||        ||||||GBP||||||" >> file25.txt
	fi 

	if ((${New[i]}==2010))
	then
	echo ${Col_1R}"|000000000"${k}"|0000007446|GB|0000001007|"${Col6}"000"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007|00001|SA426H9             |"${arrfile2[j]}"|01007|00010|0000000150||EA|00000025000|||16|00000000000|KG|| |00000067000|0000000600|" >> file25.txt
	fi

	if ((${New[i]}==2020))
	then
	if ((i<10)) 
	then
	echo ${Col_1R}"|000000000"${k}"|0000007446|GB|0000001007|"${Col6}"000"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007|00001|04138|GB|0000000030|0000000000|||N|" >> file25.txt
        else
        echo ${Col_1R}"|00000000"${k}"|0000007446|GB|0000001007|"${Col6}"00"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007|00001|04138|GB|0000000030|0000000000|||N|" >> file25.txt
        fi
	fi

        if ((${New[i]}==2030))
	then
        if ((i<10))
        then
        echo ${Col_1R}"|000000000"${k}"|0000007446|GB|0000001007|"${Col6}"000"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007|00001|0000"${i}"|" >> file25.txt
        else
        echo ${Col_1R}"|00000000"${k}"|0000007446|GB|0000001007|"${Col6}"00"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|0000000"${Column14}"|01007|00001|000"${i}"|" >> file25.txt
        fi
        fi

	if ((${New[i]}==2040))
        then
	if ((i<=9))
	then
        echo ${Col_1R}"|000000000"${k}"|0000007446|GB|0000001007|"${Col6}"000"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|"${arrfile1[j]}"|GB||GALPHARM INTERNATIONAL        |MDM       |0210927            |02|00|ACCOUNTS DEPARTMENT           |STAGGERS LANE                 |BRAUNTON EX33 2DL             |GB|000000000 |||||" >> file25.txt
        else
	echo ${Col_1R}"|00000000"${k}"|0000007446|GB|0000001007|"${Col6}"00"${i}"|00001|00001|0"${New[i]}"|00001|"${Date} ${Time}"|A|"${Col18[i]}"|"${arrfile1[j]}"|GB||GALPHARM INTERNATIONAL        |MDM       |0210927            |02|00|ACCOUNTS DEPARTMENT           |STAGGERS LANE                 |BRAUNTON EX33 2DL             |GB|000000000 |||||" >> file25.txt
	fi
	fi
done
echo $Col_1R
done
