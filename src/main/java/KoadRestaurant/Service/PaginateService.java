package KoadRestaurant.Service;

import KoadRestaurant.Model.DTO.PaginateDto;
import org.springframework.stereotype.Service;

@Service
public class PaginateService implements IPaginateService {

    @Override
    public PaginateDto GetInfoPaginate(int totalData,int currentPage,int limit){
        PaginateDto paginate = new PaginateDto();
        paginate.setCurrentPage(currentPage);


        paginate.setTotalPage(SetInfoTotalPage(totalData,limit));
        paginate.setCurrentPage(CheckCurrentPage(currentPage,paginate.getTotalPage()));

        int start = FindStart(paginate.getCurrentPage(),limit);
        int end = FindEnd(start,limit,totalData);
        paginate.setStart(start - 1) ;
        paginate.setEnd(end);
        paginate.setLimit(limit);
        return paginate;
    }

    private int FindStart(int currentPage,int limit){
        return (currentPage - 1) * limit + 1;
    }
    private int FindEnd(int start,int limit,int totalData){
        return start + limit > totalData ? totalData : (start + limit -1);
    }
    private int SetInfoTotalPage(int totalData,int limit){
        int totalPage =0;
        totalPage = totalData / limit;
        totalPage = totalPage * limit  < totalData ? totalPage + 1 : totalPage;
        return totalPage;
    }
    private int CheckCurrentPage(int currentPage,int totalPage){
        if(currentPage < 1)
            return 1;
        if(currentPage > totalPage)
            return totalPage;

        return currentPage;
    }
}
