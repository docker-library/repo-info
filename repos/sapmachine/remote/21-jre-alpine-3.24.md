## `sapmachine:21-jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:d5a8f047143180235e32d422124605f78ba4f596faf2217226d2660ee67604e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:06a7ff395911896a846e6c1adb68abb02d61d7b963e8c9b6c9fc3310fc3320a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67171934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5d7eed3cddc381df94afac550abd18e12af37efa8bfaa5d06cfabb518e6539`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:57:15 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:57:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Fri, 23 Oct 2026 16:57:15 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ae74b1674da841cd8adef015c5012b55d457b7cf8c5ccf21d0e3caefa2ccd7`  
		Last Modified: Fri, 23 Oct 2026 16:57:29 GMT  
		Size: 63.3 MB (63318825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8db2dc103aa8a0159e9c8e459549550afa7410b704cba93e16d2d9732a67949b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 KB (434993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d254f8d04f916d5d47be500e85fc1835e46b52c416f2c27927a18b2d6c84d8b`

```dockerfile
```

-	Layers:
	-	`sha256:cbf3f73fbfdf07022f6fdbe41b377df81e145cb659b6dfb982e1e47172cd4147`  
		Last Modified: Fri, 23 Oct 2026 16:57:27 GMT  
		Size: 428.0 KB (428013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb3a527c4417c106c524dd3b8f3c4f1b44e4b94b56f36069a37de5284e933129`  
		Last Modified: Fri, 23 Oct 2026 16:57:27 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json
