package controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.cartItem.AddCartItemController;
import controller.cartItem.CartItemController;
import controller.cartItem.RemoveCartItemController;
import controller.product.*;
import controller.user.CheckDuplicateUserController;
import controller.user.LoginController;
import controller.user.LogoutController;
import controller.user.MyPageController;
import controller.user.RegisterUserController;
import controller.user.RentProductsController;
import controller.mypage.OrderController;

public class RequestMapping {
    private static final Logger logger = LoggerFactory.getLogger(DispatcherServlet.class);
    
    // 각 요청 uri에 대한 controller 객체를 저장할 HashMap 생성
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
    	// 각 uri에 대응되는 controller 객체를 생성 및 저장
        mappings.put("/", new ForwardController("index.jsp"));

        // 물건 전체 보기 (메인 페이지)
        mappings.put("/product/list", new ProductController());
        
        // 물건 검색 (메인 페이지)
        mappings.put("/product/search", new SearchController());
        
        // 물건 상세 보기 
        mappings.put("/product/view", new ViewProductController());
        
        // 물건 대여하기
        mappings.put("/product/order", new RentController());
        // 물건 대여 확정 페이지
        mappings.put("/rent/confirmRent", new RentController());
        
        
        // 회원가입, 로그인, 로그아웃  
        mappings.put("/user/login/form", new ForwardController("/user/loginForm.jsp"));
        mappings.put("/user/login", new LoginController());
        mappings.put("/user/register", new RegisterUserController());
        mappings.put("/user/checkDuplicate", new CheckDuplicateUserController()); //이상하면 지워
        mappings.put("/user/logout", new LogoutController());
        
        
        // 마이페이지 
        mappings.put("/mypage", new MyPageController());
        
        // 마이페이지 - 빌려준 물품 조회
        mappings.put("/mypage/rentproduct", new RentProductsController());
        
       
        //마이페이지 - 물건 조회 
        mappings.put("/mypage/borrowedProduct", new OrderController());
        mappings.put("/mypage/returnProduct", new OrderController());
        
        // 물건 등록
        mappings.put("/product/addProductForm", new ForwardController("/product/addProductForm.jsp"));
        mappings.put("/product/create", new ProductController());
        
        // 물건 삭제
        mappings.put("/product/delete", new ProductController());
        
        //물건 수정
        mappings.put("/product/update", new UpdateProductController());
        logger.info("Initialized Request Mapping!");
        

      
        //장바구니
        mappings.put("/user/cartItem", new CartItemController());
//        mappings.put("/user/cartItem", new ForwardController("/user/cartItem.jsp"));
        
        //장바구니 추가
        mappings.put("/user/cartItem/add", new AddCartItemController());
        
        //장바구니 삭제
        mappings.put("/user/cartItem/delete", new RemoveCartItemController());
    } 

    public Controller findController(String uri) {	
    	// 주어진 uri에 대응되는 controller 객체를 찾아 반환
        return mappings.get(uri);
    }
}