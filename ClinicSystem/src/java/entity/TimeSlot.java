/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author nguye
 */
public enum TimeSlot {
    ONE("8H - 8H30", 1), TWO("8H30 - 9H", 2), THREE("9H - 9H30", 3),
    FOUR("9H30 - 10H", 4), FIVE("10H - 10H30", 5), SIX("10H30 - 11H", 6),
    SEVEN("11H - 11H30", 7), EIGHT("11H30 - 12H", 8), NINE("13H - 13H30", 9),
    TEN("13H30 - 14H", 10), ELEVEN("14H - 14H30", 11), TWELVE("14H30 - 15H", 12),
    THIRTY("15H - 15H30", 13), FOURTEEN("15H30 - 16H", 14), FIFTEEN("16H - 16H30", 15),
    SIXTEEN("16H30 - 17H", 16), SEVENTEEN("17H - 17H30", 17), EIGHTEEN("17H30 - 18H", 18);

    private String timeValue;
    private Integer slotOrder;

    private TimeSlot(String timeValue, Integer slotOrder) {
        this.timeValue = timeValue;
        this.slotOrder = slotOrder;
    }

    public String getTimeValue() {
        return timeValue;
    }

    public Integer getSlotOrder() {
        return slotOrder;
    }

}
