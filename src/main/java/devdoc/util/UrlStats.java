/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc.util;

/**
 *
 * @author Inzimam Tariq
 */
public class UrlStats {

    private int totalShortlinks;
    private int shortlinksIn30Days;
    private int shortlinksIn7Days;
    private int shortlinksToday;

    public UrlStats() {
    }

    public UrlStats(int totalShortlinks, int shortlinksIn30Days, int shortlinksIn7Days, int shortlinksToday) {
        this.totalShortlinks = totalShortlinks;
        this.shortlinksIn30Days = shortlinksIn30Days;
        this.shortlinksIn7Days = shortlinksIn7Days;
        this.shortlinksToday = shortlinksToday;
    }

    public int getTotalShortlinks() {
        return totalShortlinks;
    }

    public void setTotalShortlinks(int totalShortlinks) {
        this.totalShortlinks = totalShortlinks;
    }

    public int getShortlinksIn30Days() {
        return shortlinksIn30Days;
    }

    public void setShortlinksIn30Days(int shortlinksIn30Days) {
        this.shortlinksIn30Days = shortlinksIn30Days;
    }

    public int getShortlinksIn7Days() {
        return shortlinksIn7Days;
    }

    public void setShortlinksIn7Days(int shortlinksIn7Days) {
        this.shortlinksIn7Days = shortlinksIn7Days;
    }

    public int getShortlinksToday() {
        return shortlinksToday;
    }

    public void setShortlinksToday(int shortlinksToday) {
        this.shortlinksToday = shortlinksToday;
    }

    @Override
    public String toString() {
        return "UrlStats{" + "totalShortlinks=" + totalShortlinks + ", shortlinksIn30Days=" + shortlinksIn30Days 
                + ", shortlinksIn7Days=" + shortlinksIn7Days + ", shortlinksToday=" + shortlinksToday + '}';
    }

    
}
