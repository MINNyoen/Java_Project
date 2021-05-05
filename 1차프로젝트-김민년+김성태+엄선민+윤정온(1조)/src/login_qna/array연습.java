package login_qna;

import java.util.ArrayList;

public class array연습 {

	public static void main(String[] args) {
		ArrayList<QuestionVO> list = new ArrayList<>();
		for (int i = 0; i < 100; i++) {
			
			QuestionVO bag = new QuestionVO(); // 가방생성
			bag.setQuestion_id(String.valueOf(i)); // 가방에 값넣음
			bag.setQuestion_title(i + " ");
			bag.setQuestion_contents(i + " ");
			bag.setQuestion_date(i + " ");
			list.add(bag); // 리스트에 가방(값) 넣기
		}
		System.out.println("리스트 가방의 개수는" + list.size() + "개");
		
		for (int i = 0; i < list.size(); i++) {
			QuestionVO bag2 = list.get(i); // 컨테이너에서 값 추출
			System.out.println("가방에서 꺼낸 id = " + bag2.getQuestion_id());
			System.out.println("가방에서 꺼낸 title = " + bag2.getQuestion_title());
			System.out.println("가방에서 꺼낸 content = " + bag2.getQuestion_contents());
			System.out.println("가방에서 꺼낸 writer = " + bag2.getQuestion_date());
		}
	}
	
}
