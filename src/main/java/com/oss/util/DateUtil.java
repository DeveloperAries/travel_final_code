/**
 * <p>Title: DateUtil.java</p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2018</p>
 * <p>Company: www.iipcloud.com</p>
 * @author 肖晓霖
 * @date 2018年6月19日
 * @version 1.0
 */
package com.oss.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

public class DateUtil {
    public static SimpleDateFormat dateFormat;
    public static String defaultPattern = "yyyy-MM-dd";
    static {
        dateFormat = new SimpleDateFormat(defaultPattern);
    }

    /**
     * <p>
     * Title: isSameDay
     * </p>
     * <p>
     * Description: 判断两个日期是否是同一天
     * </p>
     * @param date1
     * @param date2
     * @return
     */
    public static boolean isSameDay(Date date1, Date date2) {
        final String format = "yyyy-MM-dd";
        synchronized (dateFormat) {
            final boolean isEqual = new SimpleDateFormat(format).format(date1).equals(new SimpleDateFormat(format).format(date2));
            if (isEqual) {
                return true;
            } else {
                return false;
            }
        }
    }

    /**
     * <p>
     * Title: getTodayMill
     * </p>
     * <p>
     * Description: 获取当天0时0分0秒的时间戳
     * </p>
     * @return
     */
    public static long getTodayMill() {
        return System.currentTimeMillis() / (1000 * 3600 * 24) * (1000 * 3600 * 24)
                - TimeZone.getDefault().getRawOffset();
    }

    /**
     * <p>
     * Title: getToday
     * </p>
     * <p>
     * Description: 获取今天的日期：e.g 2018-08-09
     * </p>
     * @return
     */
    public static String getToday() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    /**
     * <p>Title: getZeroOfDay</p>
     * <p>Description: 清零指定时间的时分秒</p>
     * @param date
     * @return
     */
    public static Date getZeroOfDay(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        setZeroTime(cal);
        return cal.getTime();
    }

    /**
     * <p>
     * Description: 获取当前日期往后12月的每个月份<／p> @param: @return: void @throws
     */
    /**
     * 获取当前系统时间最近12月的年月（含当月） :返回值 date类型
     */
    public static Date[] getLatest12Month() {
        Date[] latest12Months = new Date[12];
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.MONTH, cal.get(Calendar.MONTH) + 1); // 要先+1,才能把本月的算进去
        for (int i = 0; i < 12; i++) {
            cal.set(Calendar.MONTH, cal.get(Calendar.MONTH) - 1); // 逐次往前推1个月
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
            try {
                latest12Months[11 - i] = sdf.parse(cal.get(Calendar.YEAR) + "-" + fillZero(cal.get(Calendar.MONTH) + 1));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        return latest12Months;
    }

    /**
     * <p>
     * Description: 返回值
     * <／p>
     * @param: @return
     * @return: String[] @throws
     */
    public static String[] getLatest12MonthString() {
        String[] latest12Months = new String[12];
        Calendar cal = Calendar.getInstance();
        // 要先+1,才能把本月的算进去
        cal.set(Calendar.MONTH, cal.get(Calendar.MONTH) + 1);
        int totalMonth = 12;
        for (int i = 0; i < totalMonth; i++) {
            // 逐次往前推1个月
            cal.set(Calendar.MONTH, cal.get(Calendar.MONTH) - 1);

            latest12Months[11 - i] = cal.get(Calendar.YEAR) + "-" + fillZero(cal.get(Calendar.MONTH) + 1);
        }
        return latest12Months;
    }

    /**
     * 格式化月份
     */
    public static String fillZero(int i) {
        String month = "";
        if (i < 10) {
            month = "0" + i;
        } else {
            month = String.valueOf(i);
        }
        return month;
    }

    /**
     * <p>Title: getDayOfWeek</p>
     * <p>Description: 获取今天是本周的第几天 0代表周一</p>
     * @return
     */
    public static int getDayOfWeek() {
        return getDayOfWeek(new Date());
    }

    public static int getDayOfWeek(Date date) {
        Calendar today = Calendar.getInstance();
        today.setTime(date);
        // 此日期以周日为第一天
        int dayOfWeek = today.get(Calendar.DAY_OF_WEEK);
        dayOfWeek -= Calendar.MONDAY;
        if (dayOfWeek == -1) {
            dayOfWeek = 6;
        }
        return dayOfWeek;
    }

    /**
     * <p>Title: getDayOfWeek</p>
     * <p>Description: 获取今天是本月的第几天 0代表1号</p>
     * @return
     */
    public static int getDayOfMonth() {
        Calendar today = Calendar.getInstance();
        int dayOfWeek = today.get(Calendar.DAY_OF_MONTH);
        return --dayOfWeek;
    }

    /**
     * <p>Title: getLastWeekFirstDay</p>
     * <p>Description: 获取当前时间上周一的日期</p>
     * @return
     */
    public static Date getLastWeekMonDay() {
        return getLastWeekMonDay(new Date());
    }

    /**
     * <p>Title: getLastWeekFirstDay</p>
     * <p>Description: 获取指定时间周一的日期</p>
     * @return
     */
    public static Date getLastWeekMonDay(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(getThisWeekMonDay(date));
        cal.add(Calendar.DATE, -7);
        return cal.getTime();

    }

    /**
     * <p>Title: getWeekFirstDay</p>
     * <p>Description: 获取指定时间本周一的日期</p>
     * @param date
     * @return
     */
    public static Date getThisWeekMonDay(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        setZeroTime(cal);
        // 获得当前日期是一个星期的第几天
        int dayWeek = cal.get(Calendar.DAY_OF_WEEK);
        if (1 == dayWeek) {
            // 周日 ,将时间往前推一天
            cal.add(Calendar.DAY_OF_MONTH, -1);
        }
        // 设置一个星期的第一天，按中国的习惯一个星期的第一天是星期一
        cal.setFirstDayOfWeek(Calendar.MONDAY);
        // 获得当前日期是一个星期的第几天
        int day = cal.get(Calendar.DAY_OF_WEEK);
        // 根据日历的规则，给当前日期减去星期几与一个星期第一天的差值
        int firstDayOfWeek = cal.getFirstDayOfWeek();
        cal.add(Calendar.DATE, firstDayOfWeek - day);
        return cal.getTime();

    }

    /**
     * <p>Title: getThisWeekMonDay</p>
     * <p>Description: 获取当前时间本周一的日期</p>
     * @return
     */
    public static Date getThisWeekMonDay() {
        return getThisWeekMonDay(new Date());
    }

    public static Date getNextWeekMonDay(Date date) {
        Date thisWeekMonDay = getThisWeekMonDay(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(thisWeekMonDay);
        return addDay(thisWeekMonDay, 7);
    }

    public static Date addDay(Date date, int day) {
        Calendar calendar = Calendar.getInstance();
        long millis = getMillis(date) + ((long) day) * 24 * 3600 * 1000;
        calendar.setTimeInMillis(millis);
        return calendar.getTime();
    }

    public static long getMillis(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.getTimeInMillis();
    }

    /**
     * <p>Title: setZeroTime</p>
     * <p>Description:设置时间为零时零分零秒 </p>
     * @param cal
     */
    private static void setZeroTime(Calendar cal) {
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
    }

    /**
     * <p>Title: betweenMinute</p>
     * <p>Description: 返回两个时间的相差的分钟数</p>
     * @param bData 大的时间
     * @param lData 小的时间
     * @return
     */
    public static int betweenMinute(Date bData, Date lData) {
        int minutes = (int) ((bData.getTime() - lData.getTime()) / (1000 * 60));
        return minutes;
    }

    /**
     * <p>Title: betweenDay</p>
     * <p>Description: 返回两个日期相隔的天数</p>
     * @param bData 大的时间
     * @param lData 小的时间
     * @return
     */
    public static int betweenDay(Date bData, Date lData) {
        int days = (int) ((bData.getTime() - lData.getTime()) / (1000 * 3600 * 24));
        return days;
    }

    /**
     * <p>Title: format</p>
     * <p>Description: </p>
     * @param date
     * @return
     */
    public static String format(Date date) {
        return format(date, defaultPattern);
    }

    public static synchronized String format(Date date, String pattern) {
        if (dateFormat == null) {
            dateFormat = new SimpleDateFormat();
        }
        dateFormat.applyPattern(pattern);
        return dateFormat.format(date);
    }

    /**
     * <p>Title: getYearWeek</p>
     * <p>Description: 获取指定日期的周标识</p>
     * @param date
     * @return year + weekOfYear
     */
    public static String getThisWeekOfYearStr(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.setFirstDayOfWeek(Calendar.MONDAY);
        int weekOfYear = calendar.get(Calendar.WEEK_OF_YEAR);
        // 本周所属的年份
        int weekYear = calendar.getWeekYear();
        return String.format("%04d%02d", weekYear, weekOfYear);
    }
    
    public static Date toDate(String t, String formate){
    	 SimpleDateFormat sDateFormat=new SimpleDateFormat(formate); //加上时间
         //必须捕获异常
    	 Date date = null;
         try {
              date=sDateFormat.parse(t);
             System.out.println(date);
         } catch(ParseException px) {
             px.printStackTrace();
         }
         return date;
    }

    /**
     * <p>Description: 获取指定日期段内的所有的周标识<／p>  
     *      eg. 201849（20181203）-201901（20190103） 中间201888等数据是倒会2018
     * @param: @param start
     * @param: @param end
     * @param: @return
     * @return: List<String>
     * @throws
     */
    public static List<String> getThisWeekOfYearStrRange(Date start, Date end) {
        List<String> list = new ArrayList<>();
        int startd= Integer.parseInt(getThisWeekOfYearStr(start).substring(0,4));//起始年
        int endd = Integer.parseInt(getThisWeekOfYearStr(end).substring(0,4));//终止年
        int st = Integer.parseInt(getThisWeekOfYearStr(start));//
        int ed = Integer.parseInt(getThisWeekOfYearStr(end));//
       
        while(startd<endd){
        	int day = 31;//处理 可能出现 2018-12-31 周标识 为201901问题  
        	String tempYear = getThisWeekOfYearStr(toDate(startd+"-12-"+day,"yyyy-MM-dd"));
        	while(startd<Integer.parseInt(tempYear.substring(0, 4))){
        		tempYear =  getThisWeekOfYearStr(toDate(startd+"-12-"+--day,"yyyy-MM-dd"));;
        	}
        	int temp = Integer.parseInt(tempYear);//存在跨年  中间周标识值 
        	while (st <= temp) {
                list.add(String.valueOf(st++));
            }
        	st= Integer.parseInt(getThisWeekOfYearStr(toDate((startd+1)+"-01-01","yyyy-MM-dd")));
        	startd++;
        }
        while (st <= ed) {
            list.add(String.valueOf(st++));
        }//加上尾洲表示
        
        
        return list;
    }
    

    /**
     * <p>Description: 根据周标识放回几月几周<／p>
     * @param: @param weekOfYear
     * @param: @return
     * @return: String
     * @throws
     */
    public static String getDateByWeekOfYear(String weekOfYear) {
       /* int year = Integer.valueOf(weekOfYear.substring(0, 4));
        int week = Integer.valueOf(weekOfYear.substring(4));
        Calendar calendar = Calendar.getInstance();
        calendar.setFirstDayOfWeek(Calendar.MONDAY);
        calendar.set(Calendar.YEAR, year);
        calendar.set(Calendar.WEEK_OF_YEAR, week);
        int month = calendar.get(Calendar.MONTH) + 1;
        int weekd = calendar.get(Calendar.DAY_OF_WEEK_IN_MONTH);
        */
    	Date monday = getMondayByWeekOfYear(weekOfYear);
        return format(monday, "MM-dd")+"/"+format(addDay(monday,6), "MM-dd");
    }
    
    public static void main(String[] args) {
    	
    	System.err.println(getThisWeekOfYearStr(addDay(new Date(),1)));
		System.out.println(getDateByWeekOfYear("201902"));
	}

    /**
     * <p>Title: getYearWeekStr</p>
     * <p>Description: 获取当前日期的周标识</p>
     * @return
     */
    public static String getWeekOfYearStr() {
        return getThisWeekOfYearStr(new Date());
    }

    /**
     * <p>Title: getLastYearWeekStr</p>
     * <p>Description: 获取指定日期上周的周标识</p>
     * @param date
     * @return
     */
    public static String getLastWeekOfYearStr(Date date) {
        date = getLastWeekMonDay(date);
        return getThisWeekOfYearStr(date);
    }

    /**
     * <p>Title: getLastYearWeekStr</p>
     * <p>Description: 获取当前日期上周的周标识</p>
     * @return
     */
    public static String getLastWeekOfYearStr() {
        Date date = new Date();
        date = getLastWeekMonDay(new Date());
        return getThisWeekOfYearStr(date);
    }

    /**
     * <p>Title: getNextWeekOfYearStr</p>
     * <p>Description: 获取指定日期下周的周标识</p>
     * @param date
     * @return
     */
    public static String getNextWeekOfYearStr(Date date) {
        date = getNextWeekMonDay(date);
        return getThisWeekOfYearStr(date);
    }

    /**
     * <p>Title: getNextWeekOfYearStr</p>
     * <p>Description: 获取当前日期下周的周标识</p>
     * @return
     */
    public static String getNextWeekOfYearStr() {
        Date date = new Date();
        date = getNextWeekMonDay(new Date());
        return getThisWeekOfYearStr(date);
    }

    /**
     * <p>Title: getMondayByYearWeek</p>
     * <p>Description: 根据周标识获取指定周的周一</p>
     * @param weekOfYear
     * @return
     */
    public static Date getMondayByWeekOfYear(String weekOfYear) {
        int year = Integer.valueOf(weekOfYear.substring(0, 4));
        int week = Integer.valueOf(weekOfYear.substring(4));
        Calendar calendar = Calendar.getInstance();
        calendar.setFirstDayOfWeek(Calendar.MONDAY);
        calendar.set(Calendar.YEAR, year);
        calendar.set(Calendar.WEEK_OF_YEAR, week);
        return getThisWeekMonDay(calendar.getTime());
    }

    /**
     * <p>Title: isMonDay</p>
     * <p>Description: 判断是否是周一</p>
     * @param startDate
     * @return
     */
    public static boolean isMonDay(Date startDate) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(startDate);
        return calendar.get(Calendar.DAY_OF_WEEK) == Calendar.MONDAY;
    }

    /**  
     * <p>Title: getLastMonth</p>  
     * <p>Description: 当前时间减去1个月</p>  
     * @return  
     */  
    public static Date getLastMonth() {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, -1);
        return cal.getTime();
    }
    
    public static Date getLastMonth(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, -1);
        return cal.getTime();
    }

    public static String getMonthBegin(Date date) {
        return format(date, "yyyy-MM") + "-01";
    }

    public static Date getFirstDayOfMonth(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.set(Calendar.DAY_OF_MONTH, 1);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        return cal.getTime();
    }

}
