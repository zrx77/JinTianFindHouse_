package cn.jintian.util;

import cn.jintian.pojo.SecondNew_h;

import java.util.ArrayList;
import java.util.List;

public class SecondHouse {
    private SecondNew_h secondNewH;
    private List<SecondHouse> houses = new ArrayList<SecondHouse>();

    public List<SecondHouse> getHouses() {
        return houses;
    }

    public void setHouses(List<SecondHouse> houses) {
        this.houses = houses;
    }
    public SecondNew_h getSecondNewH() {
        return secondNewH;
    }

    public void setSecondNewH(SecondNew_h secondNewH) {
        this.secondNewH = secondNewH;
    }
}
