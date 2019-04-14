package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.FileDao;
import com.sbsm.blog.entity.console.Dict;
import com.sbsm.blog.entity.console.File;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.utils.FileMd5Util;
import org.apache.commons.io.FileSystemUtils;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileService extends BaseService<File> {

    @Autowired
    private DictService dictService;
    @Autowired
    private FileDao fileDao;

    @Transactional(propagation = Propagation.REQUIRED)
    public File upload(MultipartFile multipartFile) {
        boolean empty = multipartFile.isEmpty();
        if (empty) {
            return null;
        }

        //文件名, 大小等
        String originalFilename = multipartFile.getOriginalFilename();
        String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
        String nowName = System.currentTimeMillis()+suffix;
        long size = multipartFile.getSize();

        String displaySize = FileUtils.byteCountToDisplaySize(size);  //将文件的字节大小转换成我们显示的字符串，比如1024转换后1kb
        String md5 = FileMd5Util.getMD5(multipartFile);

        //上传路径
        Dict dict = dictService.findOneByTypeAndLabel(UPLOAD_PATH, UPLOAD_PATH);
        String path = dict.getValue();

        java.io.File file = new java.io.File(path + nowName);
        if (!file.getParentFile().exists()) {
            //父目录不存在,则创建
            file.getParentFile().mkdirs();
        }

        try {
            // 保存文件
            multipartFile.transferTo(file);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

        //保存文件信息
        File f = new File();
        f.setByteSize(size);
        f.setDisplaySize(displaySize);
        f.setOriginalName(originalFilename);
        f.setNowName(nowName);
        f.setMd5(md5);
        f.setUrl("/"+nowName);
        f.preInsert();

        this.saveFileInfo(f);
        return f;
    }

    /**
     * 保存文件信息
     * @param f
     */
    @Transactional(propagation = Propagation.REQUIRED)
    public void saveFileInfo(File f) {
        //访问路径前缀
        Dict dict = dictService.findOneByTypeAndLabel(FILE_CALL_PATH, FILE_CALL_PATH);
        String path = dict.getValue()  + f.getNowName();
        log.info("文件访问地址： " + path);

        if (f.getId() == null) {
            f.preInsert();
            fileDao.insert(f);
        }
    }
}
