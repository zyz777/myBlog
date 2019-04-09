package com.sbsm.blog.service.console;

import com.sbsm.blog.entity.console.Dict;
import com.sbsm.blog.entity.console.File;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.utils.FileMd5Util;
import org.apache.commons.io.FileSystemUtils;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileService extends BaseService<File> {

    @Autowired
    private DictService dictService;

    public File upload(MultipartFile multipartFile) {
        boolean empty = multipartFile.isEmpty();
        if (empty) {
            return null;
        }

        String originalFilename = multipartFile.getOriginalFilename();
        String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
        String nowName = System.currentTimeMillis()+suffix;
        long size = multipartFile.getSize();

        String displaySize = FileUtils.byteCountToDisplaySize(size);  //将文件的字节大小转换成我们显示的字符串，比如1024转换后1kb
        String md5 = FileMd5Util.getMD5(multipartFile);

        Dict dict = dictService.findOneByTypeAndLabel("upload_path", "upload_path");
        String path = dict.getValue();

        java.io.File file = new java.io.File(path + nowName);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }

//        file_call_path
        dict = dictService.findOneByTypeAndLabel("file_call_path", "file_call_path");
        path = dict.getValue()  + nowName;
        log.info("文件访问地址： " + path);

        try {
            multipartFile.transferTo(file); // 保存文件
            return new File();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
