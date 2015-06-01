package com.smarthomepage.join;

public class RemoveServiceImple implements RemoveService{
public RemoveServiceImple() {
}
private static RemoveServiceImple instance = new RemoveServiceImple();
public static RemoveServiceImple getInstance(){
	return instance;
}
@Override
public void removeMember(String id) {
	RemoveDAO.getInstance().removeMember(id);
	}
}
