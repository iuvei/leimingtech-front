package com.leimingtech.front.module.tag;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import com.leimingtech.core.common.ParamsUtils;
import com.leimingtech.core.entity.base.Store;
import com.leimingtech.core.entity.base.Upload;
import com.leimingtech.core.freemarker.BaseFreeMarkerTag;
import com.leimingtech.service.module.store.service.StoreService;

import freemarker.template.TemplateModelException;

/**
 * 店铺幻灯片信息
 * @author gyh
 * 2015-09-7下午15:20:00
 */
@Component
public class StoreInfoSlideTag extends BaseFreeMarkerTag {

	
	@Resource
    private StoreService storeService;
	
	/**
	 * 获取店铺的信息
	 * @param storeId 店铺id
	 */
	@SuppressWarnings("rawtypes")
	protected Object exec(Map params) throws TemplateModelException {
		int storeId = ParamsUtils.getInt(params.get("storeId"));
		List<Upload> list = new ArrayList<Upload>();
		Store store = storeService.findById(storeId);
		if (StringUtils.isNotEmpty(store.getStoreSlide())) {
			String[] slide = store.getStoreSlide().split(",");
			for (int i = 0; i < slide.length; i++) {
				Upload upload = new Upload();
				upload.setFileName(slide[i]);
				list.add(upload);
			}
			if (store.getStoreSlideUrl() != null && StringUtils.isNotEmpty(store.getStoreSlideUrl())) {
				String[] urls = store.getStoreSlideUrl().split(",");
				for (int j = 0; j < slide.length; j++) {
					Upload upload = list.get(j);
					upload.setImgUrl(urls[j]);
				}
			}
		}
		return list;
	}

}
