/* SPDX-License-Identifier: GPL-2.0+ OR Apache-2.0 */
/*
 * Copyright (C) 2024 HUAWEI, Inc.
 *             http://www.huawei.com/
 * Created by Bannyan <1215606712@qq.com>
 * Created by Feynman G <gxnorz@gmail.com>
 */
#ifndef __EROFS_BCJ_H
#define __EROFS_BCJ_H

#ifdef __cplusplus
extern "C"
{
#endif

int erofs_decode_bcj(char* filepath, int bcj_type);
int erofs_bcj_read(int fd, void* buf,size_t nbytes, off_t offset);

#ifdef __cplusplus
}
#endif

#endif
