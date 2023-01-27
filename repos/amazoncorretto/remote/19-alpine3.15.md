## `amazoncorretto:19-alpine3.15`

```console
$ docker pull amazoncorretto@sha256:49281693cbcd339f191c118a991ea8e5b9bc0961fd9cb69dd57ebfd26d145ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:19-alpine3.15` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ea1f29616ecefb6674b2238ac20a34d22439db51b2e733deb0f896d04057c9e2
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204910731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbda8b1826563fb4240c769a754f736cbb0681a7c2be1ef4155086aedc30650`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:28:33 GMT
ARG version=19.0.2.7.1
# Wed, 18 Jan 2023 20:28:40 GMT
# ARGS: version=19.0.2.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-19=$version-r0
# Wed, 18 Jan 2023 20:28:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:28:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:28:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ded644b6e463bc6bc6cf82ad488446583c0a174634ee6b01a555da64b58b392`  
		Last Modified: Wed, 18 Jan 2023 20:43:05 GMT  
		Size: 202.1 MB (202087219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
