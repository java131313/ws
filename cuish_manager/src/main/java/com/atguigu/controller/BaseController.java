package com.atguigu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.sun.beans.editors.DoubleEditor;
import com.sun.beans.editors.FloatEditor;
import com.sun.beans.editors.IntegerEditor;
import com.sun.beans.editors.LongEditor;

@Controller
public class BaseController {
	 @InitBinder    
	    public void initBinder(WebDataBinder binder) {    

	        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true)); 
	        binder.registerCustomEditor(int.class, new IntegerEditor());
	        binder.registerCustomEditor(long.class, new LongEditor());  
	        binder.registerCustomEditor(double.class, new DoubleEditor());  
	        binder.registerCustomEditor(float.class, new FloatEditor());  
	    }
}
