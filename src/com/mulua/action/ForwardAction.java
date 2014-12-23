// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   ForwardAction.java

package com.mulua.action;

public class ForwardAction {

	private String turnTo;

	public ForwardAction() {
	}

	public String getTurnTo() {
		return turnTo;
	}

	public void setTurnTo(String turnTo) {
		this.turnTo = turnTo;
	}

	public String turn() {
		return turnTo;
	}
}
