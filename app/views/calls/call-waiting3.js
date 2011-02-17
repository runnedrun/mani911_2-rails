/*   Free Script provided by HIOXINDIA            */
/*   visit us at http://www.hscripts.com     */
/*   This is a copyright product of hioxindia.com */

//set the resolution info div's position(topright,topleft,bottomright,bottomleft,topcenter,bottomcenter)  
var corner = "topleft";

var rTimer;
var sTime;
var eTime;
var duration;
var ele;			
var dSec  =53;
var dMin  =1;
//var dHrs  =0;
var wid  = screen.width;
var hght = screen.height;

var os;
if(document.layers)
 os = "n4";
else if(document.getElementById&&!document.all)
 os = "n6";
else if(document.all)
 os = "ie";

sTime =  new Date();
//sHrs  = sTime.getHours();
sMin  = sTime.getMinutes();
sSec  = sTime.getSeconds();

document.write("<input id=dur type=text style=\" border:0px; background-color:transparent; text-align:center; cursor:pointer;  color:black; font-family:verdana,arial, sans-serif;  font-size:15px; border-color:green; font-weight:bold text-shadow: 1px 1px 4px #d9d9d9; text-shadow: 0px 1px 3px #A8A8A8; filter: dropshadow(color=#d9d9d9, offx=1, offy=1); width:80px;\">");

if(os == "ie"){
   pwidth = window.document.body.offsetWidth;
   pheight = window.document.body.offsetHeight;
   stop = document.body.scrollTop;
   sleft = document.body.scrollLeft;
}else{
   pwidth = window.innerWidth;
   pheight = window.innerHeight;
   stop = window.pageYOffset;
   sleft = window.pageXOffset;
}

calculateDuration();

function calculateDuration()
{
	eTime =  new Date();
	//eHrs  = eTime.getHours();
	eMin  = eTime.getMinutes();
	eSec  = eTime.getSeconds();
	if(eSec<sSec)
	{
		eSec +=60;
		//eMin--;
	}
	if(eMin<sMin)
	{
		eMin +=60;
		//eHrs--;
	}
	//if(eHrs<sHrs)
	//{
	//	eHrs +=24;
	//}
	dSec  = eSec - sSec;
	dMin  = eMin - sMin;
	//dHrs  = eHrs - sHrs;
	if(dSec<=9)
		dSec = '0'+	dSec;
	if(dMin<=9)
		dMin = '0'+	dMin;
	//if(dHrs<=9)
	//	dHrs = '0'+	dHrs;
	ele = document.getElementById('dur');
	ele.value = dMin+":"+dSec;
	
	if(rTimer)
		{
			clearTimeout(rTimer);
		}

	rTimer = setTimeout('calculateDuration()', 100);

}	

/*   Free Script provided by HIOXINDIA            */
/*   visit us at http://www.hscripts.com     */
/*   This is a copyright product of hioxindia.com */

