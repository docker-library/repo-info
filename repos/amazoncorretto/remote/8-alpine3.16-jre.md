## `amazoncorretto:8-alpine3.16-jre`

```console
$ docker pull amazoncorretto@sha256:95db561aea8d5c9f0746ea7ab38efa5e9afb5ba70a1eec5e7a6bc18372204f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:8-alpine3.16-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4545a6c23e66c5a79d81db65cfebfbf81144ab74a58c5ad75a56a67f1cd724e3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44341507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4536b226dc1e89eb86e5a57ddb04e28888c73329e83401c6a3c5416c5f253720`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:21:04 GMT
ARG version=8.362.08.1
# Wed, 18 Jan 2023 20:23:24 GMT
# ARGS: version=8.362.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0
# Wed, 18 Jan 2023 20:23:25 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:23:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f26a85f9985e8d65354c5f099565e32fc7a5520a0b4c9c33d40adb12b854f8`  
		Last Modified: Wed, 18 Jan 2023 20:34:01 GMT  
		Size: 41.5 MB (41535235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
