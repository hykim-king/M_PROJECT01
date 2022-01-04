package com.pcwk.ehr;

public enum Level {

	BASIC(1),SILVER(2),GOLD(3);
	
	private final int value;
	
	Level(int value){
		this.value = value;
	}
	
	/**
	 * 값을 가져 오는 메서드
	 * @return
	 */
	public int getValue() {
		return value;
	}
	
	/**
	 * 값으로 부터 Level가져오기
	 * BASIC -> 1
	 * SILVER-> 2
	 * GOLD  -> 3
	 * @param value
	 * @return
	 */
	public static Level valueOf(int value) {
		switch(value) {
		   case 1: return BASIC;
		   case 2: return SILVER;
		   case 3: return GOLD;
		   default: throw new AssertionError("Unknown value:"+value);
			   
		}
	}
}
