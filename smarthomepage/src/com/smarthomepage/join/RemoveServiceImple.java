package com.smarthomepage.join;

public class RemoveServiceImple implements RemoveService{
public RemoveServiceImple() {
}
private static RemoveServiceImple instance = new RemoveServiceImple();
public static RemoveServiceImple getInstance(){
	return instance;
}
@Override
public int removeMember(MemberBean bean) {
	return RemoveDAO.getInstance().removeMember(bean);
	}
}
