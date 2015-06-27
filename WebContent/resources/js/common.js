
/*
用途：检查输入字符串是否为空或者全部都是空格
输入：str
返回：
如果全是空返回true,否则返回false
*/
function isNull(str) {
if (str == "") return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
} 

/*
用途：检查输入手机号码是否正确
输入：
s：字符串
返回：
如果通过验证返回true,否则返回false
*/
function checkMobile(s) {
var regu = /^[1][0-9][0-9]{9}$/;
var re = new RegExp(regu);
if (re.test(s)) {
return true;
} else {
return false;
}
} 

/*
用途：检查输入字符串是否符合国内固话或者传真格式
输入：
s：字符串  格式例如：020-87110252
返回：
如果通过验证返回true,否则返回false
*/

function isTel(s){
  var reg=/^((0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
  if(!reg.test(s))
   return   false;  
  return   true;  
} 

/*
用途：检查输入字符串是否符合正整数格式
输入：
s：字符串
返回：
如果通过验证返回true,否则返回false
*/
function isNumber(s) {
var regu = "^[0-9]+$";
var re = new RegExp(regu);
if (s.search(re) != -1) {
return true;
} else {
return false;
}
} 


/*
用途：检查输入对象的值是否符合E-Mail格式
输入：str 输入的字符串
返回：如果通过验证返回true,否则返回false
*/
function isEmail(str) {
var myReg = /^[-_A-Za-z0-9]+@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/;
if (myReg.test(str)) return true;
return false;
} 



/*
用途：检查输入字符串是否符合身份证格式
输入：
s：字符串
返回：
如果通过验证返回true,否则返回false
*/

function isIDno(strIDno) 
{  
    var aCity={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"}; 
  
    var iSum = 0; 
    var info = ""; 
    //var strIDno = obj.value; 
    var idCardLength = strIDno.length;   
    if(!/^\d{17}(\d|x)$/i.test(strIDno)&&!/^\d{15}$/i.test(strIDno))  
    {
        //alert("非法身份证号"); 
        return false; 
    } 
  
    //在后面的运算中x相当于数字10,所以转换成a 
    strIDno = strIDno.replace(/x$/i,"a"); 
 
    if(aCity[parseInt(strIDno.substr(0,2))]==null) 
    { 
        //alert("非法地区"); 
        return false; 
    } 
     
    if (idCardLength==18) 
    { 
        sBirthday=strIDno.substr(6,4)+"-"+Number(strIDno.substr(10,2))+"-"+Number(strIDno.substr(12,2)); 
        var d = new Date(sBirthday.replace(/-/g,"/")) 
        if(sBirthday!=(d.getFullYear()+"-"+ (d.getMonth()+1) + "-" + d.getDate())) 
        {        
            //alert("非法生日"); 
            return false; 
        } 
 
        for(var i = 17;i>=0;i --) 
            iSum += (Math.pow(2,i) % 11) * parseInt(strIDno.charAt(17 - i),11); 
 
        if(iSum%11!=1) 
        { 
            //alert("非法身份证号"); 
            return false; 
        } 
    } 
    else if (idCardLength==15) 
    { 
        sBirthday = "19" + strIDno.substr(6,2) + "-" + Number(strIDno.substr(8,2)) + "-" + Number(strIDno.substr(10,2)); 
        var d = new Date(sBirthday.replace(/-/g,"/")) 
        var dd = d.getFullYear().toString() + "-" + (d.getMonth()+1) + "-" + d.getDate();    
        if(sBirthday != dd) 
        { 
            //alert("非法生日"); 
            return false; 
        } 
    } 
    return true;
}

/*
用途：检查输入字符串是否只由英文字母和数字和下划线组成
输入：
s：字符串
返回：
如果通过验证返回true,否则返回false
*/
function isNumberOr_Letter(s) {//判断是否是数字或字母
var regu = "^[0-9a-zA-Z\_]+$";
var re = new RegExp(regu);
if (re.test(s) && s.length>=6 && s.length<=16) {
return true;
} else {
return false;
}
} 

/*
用途：比较两个时间大小
输入： 两个比较日期 startdate enddate
返回：如果通过验证startdate>enddate返回true,否则返回false
*/
function compareDate(startdate,enddate){
	var start = startdate.split('-');
    var end = enddate.split('-');
    var sdate = new Date(start[0], start[1], start[2]);
    var edate = new Date(end[0], end[1], end[2]);
     if(sdate.getTime() > edate.getTime()){
        return true;
    }else{
         return false;
    }
}

