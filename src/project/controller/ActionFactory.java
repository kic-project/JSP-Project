package project.controller;

import project.controller.action.*;

public class ActionFactory {
  private static ActionFactory instance = new ActionFactory();
  private ActionFactory() {
    super();
  }
  
	  public static ActionFactory getInstance() {
	    return instance;
	  }

	  public Action getAction(String command) {
	    Action action = null;
	    System.out.println("ActionFactory  :" + command);

	    if (command.equals("product_detail")) {
	      action = new ProductDetailAction();
	    } else if (command.equals("catagory")) {
	      action = new ProductKindAction();
	    } else if (command.equals("cart_insert")) {
	      action = new CartInsertAction();
	    } else if (command.equals("cart_list")) {
	      action = new CartListAction();
	    } else if (command.equals("login_form")) {
	        action = new LoginFormAction();
	      } else if (command.equals("login")) {
	        action = new LoginAction();
	    return action;
	  }
		return action;}
	}