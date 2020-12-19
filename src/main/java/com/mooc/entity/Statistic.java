package com.mooc.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Statistic {

   private Date date;
   private Integer count;

    public String getDate() {
        String strDateFormat = "yyyy-MM-dd";
        SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
        return sdf.format(this.date);
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
