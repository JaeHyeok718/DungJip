package com.kh.dungjip.house.model.service;

import java.util.ArrayList;

import com.kh.dungjip.common.model.vo.PageInfo;
import com.kh.dungjip.house.model.vo.House;
import com.kh.dungjip.house.model.vo.HouseImg;

public interface HouseService {

	int insertHouseJSON(House house);

	ArrayList<House> selectLocations();

	ArrayList<House> selectHouse();

	ArrayList<HouseImg> selectHouseThumnail();

	//부동산 집 리스트
	ArrayList<House> selectHouseList(int esNo,PageInfo pi);

	//부동산 집 이미지
	ArrayList<HouseImg> selectHouseImg(int esNo);

	//부동산이 갖고 있는 집 개수
	int selectHouseListCount(int esNo);

}
