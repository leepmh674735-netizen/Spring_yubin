package com.winter.yubin;

import com.winter.yubin.review.ReviewDTO;
import com.winter.yubin.review.ReviewService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class KosmoPostApplicationTests {

    @Autowired
    private ReviewService reviewService; // 리뷰 서비스 주입

    @Test
    void contextLoads() {
        // 컨텍스트가 정상적으로 로드되었는지 확인
    }

    @Test
    void testReviewService() throws Exception {
        // 1. Given: 테스트할 데이터 준비
        ReviewDTO dto = new ReviewDTO();
        dto.setProductNum(1L);
        dto.setReviewContents("테스트 리뷰입니다.");
        dto.setUsername("yubin");
        dto.setReviewStar(5L);

        // 2. When: 실제 기능 실행
        int result = reviewService.create(dto);

        // 3. Then: 결과 검증
        assertThat(result).isEqualTo(1);
    }
}