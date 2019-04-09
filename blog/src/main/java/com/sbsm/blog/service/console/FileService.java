package com.sbsm.blog.service.console;

import com.sbsm.blog.entity.console.Dict;
import com.sbsm.blog.entity.console.File;
import com.sbsm.blog.service.BaseService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileService extends BaseService<File> {

    @Autowired
    private DictService dictService;

    public File upload(MultipartFile multipartFile) {

        //String str = FileUtils.byteCountToDisplaySize(1024);  //将文件的字节大小转换成我们显示的字符串，比如1024转换后1kb
        //FileUtils.getTempDirectoryPath();         //获取系统的临时目录路径
        //FileUtils.getUserDirectoryPath();   //获取用户的主目录

        Dict dict = dictService.findOneByTypeAndLabel("upload_path", "upload_path");
        String path = dict.getValue();

//        FileUtils.

        return null;
    }
}
