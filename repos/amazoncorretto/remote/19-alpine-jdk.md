## `amazoncorretto:19-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:fd0749fa9f97aa978be69ed63b596bb769ffd8517e2e299aabafc3ec9604f07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:19-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c76a4c727c2107d453b6d557fb68447bb25f2cf51c23165c657c0f7fe5a82ce6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.5 MB (205458051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b186486bd03c1e86573699d1a9878dad923be7a892595dda0db223cb9959196`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:28:54 GMT
ARG version=19.0.2.7.1
# Wed, 18 Jan 2023 20:29:01 GMT
# ARGS: version=19.0.2.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-19=$version-r0
# Wed, 18 Jan 2023 20:29:02 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:29:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:29:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5762d1ac9d46df893a7311c519a02a879e7f16b3dd2be6c47680b65c7088ad`  
		Last Modified: Wed, 18 Jan 2023 20:44:03 GMT  
		Size: 202.1 MB (202087423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
