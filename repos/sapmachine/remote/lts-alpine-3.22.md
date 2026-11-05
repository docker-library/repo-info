## `sapmachine:lts-alpine-3.22`

```console
$ docker pull sapmachine@sha256:96f5ef09b153e767036a9eb7ea1213ce91c710d3ee3be749a5a4f7977f63c685
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:f1edaeb4f10fe9fa99e3f277497a92c90cb239d80a7cce07a382f5d1bb34800f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228761222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7cc25f8877b4fd8c71ac795b9c4c94cbe72aec74f31c15bd7388316f6213947`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:37 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Thu, 05 Nov 2026 19:36:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c16586b17067656f85c4619edc598039fdc7d965beaece49ebb3eeb053f6b1a`  
		Last Modified: Thu, 05 Nov 2026 19:36:59 GMT  
		Size: 225.0 MB (224966847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6aecb54dbc2eead771338d7062fd8a167b1775d64060b0c4e185f190157fc2ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.3 KB (510255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a6c6961a0853b6a163b332aa75201a16366ef8d0e706d90da38dbcf47739495`

```dockerfile
```

-	Layers:
	-	`sha256:2fd28c5303bb03bb737eebc777127ce046019e7b6e88926dfb05dc6319a5cc7c`  
		Last Modified: Thu, 05 Nov 2026 19:36:55 GMT  
		Size: 502.0 KB (501957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ed1cd9d7c370792fc4ce389732254db36bf468b53dd1c70a2ae148338d77980`  
		Last Modified: Thu, 05 Nov 2026 19:36:54 GMT  
		Size: 8.3 KB (8298 bytes)  
		MIME: application/vnd.in-toto+json
