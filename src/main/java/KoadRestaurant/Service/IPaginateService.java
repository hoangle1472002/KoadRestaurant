package KoadRestaurant.Service;

import KoadRestaurant.Model.DTO.PaginateDto;
import org.springframework.stereotype.Service;

@Service
public interface IPaginateService   {
    public PaginateDto GetInfoPaginate(int totalData,int currentPage,int limit);
}
