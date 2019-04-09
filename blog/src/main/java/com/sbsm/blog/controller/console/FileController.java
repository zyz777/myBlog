package com.sbsm.blog.controller.console;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.File;
import com.sbsm.blog.service.console.FileService;
import com.sbsm.blog.utils.FileMd5Util;
import com.sbsm.blog.vo.ResultBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/console/file")
public class FileController extends BaseController {

    @Autowired
    private FileService fileService;

    @RequestMapping("/upload")
    public ResultBean upload(@RequestParam("file") MultipartFile multipartFile) {
        FileMd5Util.getMD5(multipartFile);
        File file = fileService.upload(multipartFile);
        return new ResultBean(file);
    }

}
