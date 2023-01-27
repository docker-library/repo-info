## `amazoncorretto:8-alpine3.15-jdk`

```console
$ docker pull amazoncorretto@sha256:c985be6d8f861e7b09ae042c265810e3676321ae1d6897d588d0e2aa13fdbe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:8-alpine3.15-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:26f1af2b997a92a13caea1025572a3307f5c9c6b6bc6c6489fb838ca1b73d041
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102855241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269ec04a10f23f276fc62ac223c5f379738cbe55e3b89f6603bb51368f5cbe42`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:20:51 GMT
ARG version=8.362.08.1
# Wed, 18 Jan 2023 20:20:56 GMT
# ARGS: version=8.362.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0
# Wed, 18 Jan 2023 20:20:56 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bc955c5196febf9588a9a0c3e90b970f43266d1ba821aad365adb791e3c71c`  
		Last Modified: Wed, 18 Jan 2023 20:33:07 GMT  
		Size: 100.0 MB (100031729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
