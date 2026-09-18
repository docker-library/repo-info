## `sapmachine:lts-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:b744caa4e37aeb090e60d039a5909c0f8e92d2f80d061c293c1f9afa77ff9b84
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:8503d642fa3c54e67c8aaf2dc5a827a9e44d951db0deb0387c13cf67b6732334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63395705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d0edf6d066b258ce959af25f93a110c3194679ce74f702db315a696ee271eb`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:07 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.4.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Thu, 17 Sep 2026 21:57:07 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51beafff254b941ef23a9d36bf9417fc6d596cdb827d89ae46c1544d330926a`  
		Last Modified: Thu, 17 Sep 2026 21:57:20 GMT  
		Size: 59.8 MB (59769685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1aba38b7a8537475de283defd19249ca12be9c543b42c5fcca6f033bafdf1353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 KB (440367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6221077e540d4c906f254ab2279cb6947a3d44938424ead9cb820d855ba00ba5`

```dockerfile
```

-	Layers:
	-	`sha256:ea1f4deb7f764aade8f0fb30f3fef46b9702ba6c5cc6d2f55df93d81050188e3`  
		Last Modified: Thu, 17 Sep 2026 21:57:18 GMT  
		Size: 433.1 KB (433068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea87c0efd8b73da50930651fc8635798ce708925893e0237c1fd01c9f5fd277c`  
		Last Modified: Thu, 17 Sep 2026 21:57:18 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.in-toto+json
